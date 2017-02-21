# Milor
Bienvenue sur Milor, le chien qui trouvera ton cadeau en or ! 

--> Changer config/database.yml
--> rake db:drop
--> rake db:create
--> rake db:migrate
--> rake db:seed
--> rake spree_sample:load
--> bundle install
--> bundle exec rails g spree:install
--> rails g solidus:auth:install
--> rails s
--> rake db:fixtures:load FIXTURES=question_decisions

--> heroku pg:reset DATABASE
--> heroku run rake db:migrate
--> heroku run rake db:seed
--> heroku run rake spree_sample:load