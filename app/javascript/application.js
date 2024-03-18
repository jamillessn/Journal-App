// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import Rails from '@rails/ujs';
import * as Turbo from '@hotwired/turbo-rails';
import '@hotwired/turbo-confirm';

Rails.start();
Turbo.start();

//= require inline_svg

