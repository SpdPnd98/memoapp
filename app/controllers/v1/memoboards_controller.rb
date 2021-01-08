class V1::MemoboardsController < ApplicationController
    def index
        @memoboards = Memoboard.all

        render json: {memoboards: @memoboards}, status: :ok
    end

    def create
        @memoboard = Memoboard.new(memoboard_params)

        @memoboard.save
        render json: @memoboard, status: :created
    end

    def destroy
        @memoboard = Memoboard.where(id: params[:id]).first

        if @memoboard.destroy
            head(:ok)
        else
            head(:unprocessable_entity)
        end
    end

    private
        def memoboard_params
            params.require(:memoboard).permit(:memoboard_name, :owner)
        end
end
