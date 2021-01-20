class V1::MemosController < ApplicationController
    def index
        @memos = Memo.all.order("updated_at DESC")

        render json: {memos: @memos}, status: :ok
    end

    def show
        @memo = Memo.find(params[:id])

        render json: @memo, status: :ok
    end

    def create
        @memoboard = Memoboard.find(params[:memoboard_id])
        @memo = @memoboard.memos.create(memo_params)
        render json: {memos: Memo.all.order("updated_at DESC")}, status: :ok
    end

    def destroy
        @memoboard = Memoboard.find(params[:memoboard_id])
        @memo = @memoboard.memos.find(params[:id])
        @memo.destroy
        render json: {memos: Memo.all.order("updated_at DESC")}, status: :ok
    end

    def update
        @memoboard = Memoboard.find(params[:memoboard_id])
        @memo = @memoboard.memos.find(params[:id])
        if @memo.update(memo_params)
            render json: {memos: Memo.all.order("updated_at DESC")}, status: :ok
        else
            render json: {memos: Memo.all.order("updated_at DESC")}, status: :error
        end
    end

    private 
        def memo_params
            params.require(:memo).permit(:title, :body, :category_id, :memoboard_id)
        end
end
