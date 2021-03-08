class Article < ApplicationRecord

    #relationships
    has_one :category

    # scopes
    scope :alphabetical, -> { order('title') }
    scope :active, 			 -> { where('active = ?', true) }

    validates_presence_of :title, :content

end
