# rails-shared-session

## Simple POC for shared sessions between two rails apps

## Requirements
- An existing database with a users table created using the Devise gem
- An Nginx server configured as reverse proxy for both apps
- A hosts file included, move it to `/etc/hosts`

## Steps
- Replace your hosts and Ngnix files [with](https://github.com/JamesAndresCM/rails-shared-session/tree/main/files)
- Copy the [master key](https://github.com/JamesAndresCM/rails-shared-session/tree/main/files/master.key) file to main_app & main_two_app conf directory 
- Configure the existing database with users table in [auth engine](https://github.com/JamesAndresCM/rails-shared-session/blob/main/auth_engine/config/database.yml)
- Clone proyect and navigate to main_app and main_two_app
- Replace in Boot gemfiles the path to the auth_engine [here](https://github.com/JamesAndresCM/rails-shared-session/blob/main/main_app/Gemfile#L19) and [here](https://github.com/JamesAndresCM/rails-shared-session/blob/main/main_app_two/Gemfile#L44)
- Execute `bundle install` &  `rails db:setup`
- Start puma server in both applications using diferent ports

- ## Demo


https://github.com/user-attachments/assets/e571c938-9b07-4aef-9d83-a72fe8843884

