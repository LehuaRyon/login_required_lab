class SecretsController < ApplicationController
    before_action :require_login

    def show
    end



    private

    def require_login
        if session.include? :name
            return head(:ok)
        else
            redirect_to '/login'
        end
    end
end