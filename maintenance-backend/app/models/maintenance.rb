class Maintenance < ApplicationRecord
    has_many :maintenanceitems
    has_many :items, through: :maintenanceitems
end
