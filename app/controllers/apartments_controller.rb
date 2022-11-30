class ApartmentsController < ApplicationController

    def index
        render json: Apartment.all, status: :ok
    end

    def show
        app = find_app
        render json: app, status: :ok
    end

    def create
        app = Apartment.create!(app_params)
        render json: app, status: :created
    end

    def update
        app = find_app
        app.update!(app_params)
        render json: app, status: :accepted
    end

    def destroy
        app = find_app
        app.destroy
        render json: {}, status: :no_content
    end

    private

    def find_app
        Apartment.find(params[:id])
    end

    def app_params
        params.permit(:number)
    end
end
