class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name].blank?
            session[:name] = params[:name]
            redirect_to controller: 'application', action: 'hello'
            # or redirect_to '/'       
        else
            redirect_to controller: 'sessions', action: 'new'
            # or redirect_to '/login'  
        end
    end


    def destroy
        session.delete :name
        redirect_to controller: "application", action: "hello"
    end

end