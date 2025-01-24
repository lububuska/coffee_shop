class Customer < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders

  validates :name, :email, :phone, presence: true
  validates :email, uniqueness: true
  validates :phone, format: { with: /\A\+7\d{10}\z/, message: "должен быть в формате +XXXXXXXXXXX" }
end
