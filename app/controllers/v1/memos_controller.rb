class V1::MemosController < ApplicationController
    def index
        @memos = Memo.all

        render json: {memos: @memo}, status: :ok
    end

    def create
        @memoboard = Memoboard.find(params[:memoboard_id])
        @memo = @memoboard.memos.create(memo_params)
        redirect_to memoboard_path(@memoboard)
    end

    private 
        def memo_params
            params.require(:memo).permit(:title, :body)
        end
end
