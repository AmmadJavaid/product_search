### Features:
- Registration
- Sign in
- User (show, list, update_profie)
- Post CRUD
- Comment CRUD

### Setup Dependecies

* ruby-2.7.2
* rails 6.1.4
* postgresql

### Project Setup
```
 bundle install
 rails db:create
 rails db:migrate
 rails db:seed
 rails s -p 3000
```
### Run spec
`bundle exec rake rswag`

### API documentation
`localhost:3000/api-docs/`

## Demo
http://new-wave-assignment.herokuapp.com/api-docs/index.html
