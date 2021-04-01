
# Description
Get User Data - create a set of APIs 
 ### Task 1
 Create backend and connect to a MongoDB database
 ### Task 2
 Create `users` table with the following columns: id, firstName, lastName, email       
              id: autogenerated, increases sequentially, unique
              firstName: first name of user
              lastName: last name of user
              email: email of use     
## API List
  # Create user api
  Api - http://localhost:3000/api/user
  type - GET
  
  ![create](https://user-images.githubusercontent.com/26246256/113258515-a8164880-92e9-11eb-8baf-faa33f798325.png)
  
  # Return all users
  
  Api - http://localhost:3000/api/user
  type - GET
  
  ![get](https://user-images.githubusercontent.com/26246256/113259476-caf52c80-92ea-11eb-816e-fb59a57b1e0a.png)

  
  # Get a specific user api
  
  Api - http://localhost:3000/api/user/:id
  type - GET
  
  ![show](https://user-images.githubusercontent.com/26246256/113258750-f7f50f80-92e9-11eb-9aa3-3b65f75f0b5c.png)

  # Update a specifc user
  
  Api - http://localhost:3000/api/user/:id
  type - PATCH
  
  ![update](https://user-images.githubusercontent.com/26246256/113258976-40143200-92ea-11eb-95eb-11804cfa954d.png)
  
  # Destroy a specific user
  
  Api - http://localhost:3000/api/user/:id
  type - DELETE
  
  
  ![delete](https://user-images.githubusercontent.com/26246256/113259159-718cfd80-92ea-11eb-8b1a-0ab15fc4bb3e.png)

  # Typehead match
  
  Api - http://localhost:3000/api/typehead/:input
  type - GET
  
  ![typehead](https://user-images.githubusercontent.com/26246256/113259252-89fd1800-92ea-11eb-8dd6-da784c6be731.png)

  
## Dependancies
Postman to test
