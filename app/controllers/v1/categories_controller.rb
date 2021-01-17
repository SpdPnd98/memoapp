class V1::CategoriesController < ApplicationController
    def index
        @categories = Category.all.order("id ASC")

        render json: @categories, status: :ok
    end

    def create
        @category = Category.new(category_params)

        @category.save
        render json: Category.all.order("id ASC"), status: :ok
    end

    def destroy
        @category = Category.where(id: params[:id]).first

        if @category.destroy
            render json: Category.all.order("id ASC"), status: :ok
        else
            render json: Category.all.order("id ASC"), status: :error
        end
    end

    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            render json: Category.all.order("id ASC"), status: :ok
        else
            render json: Category.all.order("id ASC"), status: :error
        end
    end

    private
        def category_params
            params.require(:category).permit(:name, :color)
        end
end
