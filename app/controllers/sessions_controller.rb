class SessionsController < ApplicationController
    def new 
    end

    def create
        if auth
            @traveler = Traveler.find_or_create_by(uid: auth['uid']) do |t|
                t.name = auth['info']['name']
                t.username = auth['info']['email']
            end
       
            session[:traveler_id] = @traveler.id
            redirect_to @traveler
        else 
            @traveler = Traveler.find_by(username: params[:username])
            if @traveler && @traveler.authenticate(params[:password])
                session[:traveler_id] = @traveler.id
                redirect_to @traveler
            else 
                @message = "Incorrect Login Information"
                render :new
            end
        end
    end

    def destroy
        session.delete :traveler_id
        redirect_to :root
    end

    private

    def auth
    request.env['omniauth.auth']
    end
end
