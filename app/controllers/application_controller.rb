class ApplicationController < ActionController::Base
    def welcome 
        render '/welcome'
    end

    private 
    
    def require_login
        @error = "You have ventured too far off the path. Please sign in or sign up to continue your explorations!"
        render '/welcome' unless session.include? :traveler_id
    end
end
