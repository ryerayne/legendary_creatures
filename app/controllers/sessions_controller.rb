class SessionsController < ApplicationController
    def create
        @traveler = Traveler.find_by(username: params[:username])
        return head(:forbidden) unless @traveler.authenticate(params[:password])
        session[:traveler_id] = @traveler.id
    end
end
