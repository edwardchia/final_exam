class Auction < ApplicationRecord
  has_many :bids

  validates(:title, presence: true, uniqueness: true)

  validates(:body, presence: { message: "must exist" },
                   length: { minimum: 10 })

  validates(:price, presence: { message: "must exist" })
end
