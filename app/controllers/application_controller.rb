class ApplicationController < ActionController::API
    include ActionController::Cookies

    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { count: session[:count] }
      end

      get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
