# Hacer Rack cierre la peticion segun https://devcenter.heroku.com/articles/rails-unicorn
Rack::Timeout.timeout = 15  # seconds