class Memoboard < ApplicationRecord
    has_many :memos, dependent: :destroy

    validates :memoboard_name, presence: true
end
