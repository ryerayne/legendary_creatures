class SessionsController < ApplicationController
    def new 
    end

    def create
        @traveler = Traveler.find_by(username: params[:username])
        if @traveler && @traveler.authenticate(params[:password])
            session[:traveler_id] = @traveler.id
            redirect_to @traveler
        else 
            @message = "Incorrect Login Information"
        end
    end

    def destroy
        session.delete :traveler_id
        redirect_to :root
      end
end
