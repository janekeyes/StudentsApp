// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"  // Uncomment this if using Turbo
import "@rails/ujs"
Rails.start()
console.log("Rails UJS initialized")
import "controllers"
