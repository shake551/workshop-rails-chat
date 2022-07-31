class Message < ApplicationRecord
    validates :name, presence: true
    validates :message, presence: true
end

