source "https://rubygems.org"

gem "docker-api", "~> 1.21.4"
gem "serverspec"
gem "specinfra", "2.12.7" # because of https://circleci.com/docs/docker#docker-exec
# Also read https://workshop.avatarnewyork.com/post/test-docker-images-with-circleci/

group :development do
  gem "guard", "~> 2.12.6"
  gem "guard-rspec", "~> 4.5.2", require: false
  gem "guard-rubocop", "~> 1.2.0"
  gem "rubocop", "~> 0.32.0"
end

group :ci do
  gem "coveralls", "~> 0.8.1", require: false
  gem "yarjuf", "~> 2.0.0"
end
