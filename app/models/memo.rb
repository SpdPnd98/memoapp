class Memo < ApplicationRecord
    belongs_to :memoboard
    belongs_to :category
end
