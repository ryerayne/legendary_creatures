class ApplicationController < ActionController::Base
    def welcome 
        render '/welcome'
    end

    private 
    
    def require_login
        @error = "You must be logged in to view that page. Please sign in or sign up to continue your explorations!"
        render '/welcome' unless session.include? :traveler_id
    end
end
