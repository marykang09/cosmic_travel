class Planet < ApplicationRecord
    has_many :missions
    has_many :scientists, through: :missions

    def scientists_count
        self.scientists.count
    end
end
