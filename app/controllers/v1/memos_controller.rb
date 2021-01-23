class V1::MemosController < ApplicationController
    def index
        @memos = get_all_memos
        render json: {memos: @memos}, status: :ok
    end

    def show
        @memo = get_all_memos

        render json: @memo, status: :ok
    end

    def create
        @memoboard = Memoboard.find(params[:memoboard_id])
        @memo = @memoboard.memos.create(memo_params)
        render json: {id: @memo.id}, status: :ok
    end

    def destroy
        @memoboard = Memoboard.find(params[:memoboard_id])
        @memo = @memoboard.memos.find(params[:id])
        @memo.destroy
        render status: :ok
    end

    def update
        @memoboard = Memoboard.find(params[:memoboard_id])
        @memo = @memoboard.memos.find(params[:id])
        if @memo.update(memo_params)
            render status: :ok
        else
            render status: :error
        end
    end

    private 
        def memo_params
            params.require(:memo).permit(:title, :body, :category_id, :memoboard_id)
        end

        def get_all_memos
            if params[:memoboard_id].present?
                @memos = Memo.where(memoboard_id: params[:memoboard_id])
            else
                @memos = Memo.all
            end
        end
end
