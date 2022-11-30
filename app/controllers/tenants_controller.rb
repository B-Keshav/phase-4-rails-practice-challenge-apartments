class TenantsController < ApplicationController
    
    def index
        render json: Tenant.all, status: :ok
    end

    def show
        ten = find_ten
        render json: ten, status: :ok
    end

    def create
        ten = Tenant.create!(ten_params)
        render json: ten, status: :created
    end

    def update
        ten = find_ten
        ten.update!(ten_params)
        render json: ten, status: :accepted
    end

    def destroy
        ten = find_ten
        ten.destroy
        render json: {}, status: :no_content
    end

    private

    def find_ten
        Tenant.find(params[:id])
    end

    def ten_params  
        params.permit(:name, :age)
    end
end
