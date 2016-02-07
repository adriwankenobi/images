# images
Small ruby-on-rails app: uploads and lists images  
All configs are as default as possible

# usage
Run tests: rake cucumber  
Start server: rails server and then go to localhost:3000

# files of interest

config:
 - Gemfile
 - config/routes.rb
 - app/views/layouts/application.html.erb

uploader (carrierwave):
 - app/uploaders/pictures_uploader.rb

app:
 - app/models/image.rb
 - app/views/images/index.html.erb
 - app/views/images/new.html.erb
 - app/views/images/create.html.erb
 - app/controllers/images_controller.rb

tests (cucumber):
 - features/upload_image.feature
 - features/upload-files/*
 - features/step_definitions/upload_image_steps.rb