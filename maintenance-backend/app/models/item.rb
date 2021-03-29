class Item < ApplicationRecord
    has_many :maintenanceitems
    has_many :maintence, through: :maintenanceitems
end
