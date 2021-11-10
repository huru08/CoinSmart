class BuyTrade < ApplicationRecord

validates :day, {presence: true}
validates :quantity, {presence: true}
validates :price, {presence: true}
validates :memo, {length: {maximum:140}}

end
