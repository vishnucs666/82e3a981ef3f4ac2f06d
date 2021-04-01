# frozen_string_literal: true

# Controller to define user functions
class Api::UserController < ApplicationController
  before_action :find_user, only: %i[show update destroy]
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    if @user.present?
      render json: @user, status: :ok
    else
      render json: 'User not found'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: 'unprocessabele entity'
    end
  end

  def update
    if @user.present?
      @user.update(user_params)
      render json: { messages: 'success', data: @user }
    else
      render json: { errors: 'User not found', status: 'not found' }
    end
  end

  def destroy
    if @user.present?
      @user.destroy(user_params)
      render json: { messages: 'success', data: 'data deleted' }
    else
      render json: { errors: 'User not found', status: 'not found' }
    end
  end

  def typehead
    @user = User.any_of({ firstName: /.*#{params[:input]}.*/ }, { lastName: /.*#{params[:input]}.*/ },
                        { email: /.*#{params[:input]}.*/ })
    render json: { message: 'success', data: @user }
  end

  private

  def find_user
    @user = User.find(params[:id].to_i)
  end

  def user_params
    params.require(:user).permit(:firstName, :lastName, :email)
  end
end
