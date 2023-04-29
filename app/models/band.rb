class Band < ActiveRecord::Base
    has_many :shows, dependent: :destroy
end