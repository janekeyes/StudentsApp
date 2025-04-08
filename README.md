# Secure app programming overview
This Ruby on Rails application allows users to sign up, login, view student details, and manage them with role based access implementations
- Admins can view, create, edit, and delete student records
- Regular users can view student records

---

## Tools for running the application
- Ruby
- Rails
- Node.js
- SQLite

---
## Running the application

### Clone the GitHub repo
```bash
git clone https://github.com/janekeyes/StudentsApp
cd StudentsApp

#Install dependencies
bundle install

#Set up the database
bin/rails db:migrate

#Start the server
bin/rails server

#Run the application locally
Run rails server
You should then be able to sign up or log in
How you log in determines the CRUD operation permissions you are given

#Login as admin
This allows for full CRUD operation access to all users
Users can login, view, edit, create, update, and delete students, and logout

#Admin Credentials
Email: admin@email.com
Password: adminpass25

#Login as regular user
This allows view only access to the databse
Users can login, view, and logout

#Switch to the insecure branch
git checkout insecure

#Switch to the main branch
git checkout main

#Push changes to the main branch
git add .
git commit -m "Commit message"
git push origin main 

#Push changes to the insecure branch
git push origin insecure

#Pull changes from branch
git pull origin main 

#Pull changes from insecure
git pull origin insecure 