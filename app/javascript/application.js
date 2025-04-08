// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"  // Use Turbo to handle JavaScript
import "@rails/ujs"  // Ensure UJS is imported for form handling
Rails.start()  // Start UJS
import "controllers"  // If you have any controllers
