class CategoriesController < ApplicationController
    def index
        @categories = Category.all

        render json: @categories, status: :ok
    end

    def create
        @category = Category.new(category_params)

        @category.save
        render json: @category, status: :created
    end

    def destroy
        @category = category.where(id: params[:id]).first

        if @category.destroy
            head(:ok)
        else
            head(:unprocessable_entity)
        end
    end

    private
        def category_params
            params.require(:category).permit(:name, :color)
        end
end
