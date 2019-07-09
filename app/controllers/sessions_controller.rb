class SessionsController < ApplicationController
    
    def new 
    end

    def create
        @traveler = Traveler.find_by(username: params[:username])
        return head(:forbidden) unless @traveler.authenticate(params[:password])
        session[:traveler_id] = @traveler.id
        redirect_to @traveler
    end

    def destroy
        session.delete :traveler_id
        redirect_to controller: 'application', action: 'welcome'
      end
end
