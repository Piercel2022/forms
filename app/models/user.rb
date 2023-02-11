class User < ApplicationRecord
    validates :vorname, presence: true
    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :adress, presence: true
    validates :gender, presence: true
    validates :meeting, presence: true
end
