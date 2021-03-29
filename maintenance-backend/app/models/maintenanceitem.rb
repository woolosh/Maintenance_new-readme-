class Maintenanceitem < ApplicationRecord
    belongs_to :maintenance
    belongs_to :item
end
