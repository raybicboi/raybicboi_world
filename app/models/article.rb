class Article < ApplicationRecord

    #relationships
    belongs_to :category

    # scopes
    scope :alphabetical, -> { order('title') }
    scope :active, 			 -> { where('active = ?', true) }

    validates_presence_of :title, :content

end
