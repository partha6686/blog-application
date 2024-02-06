class Article < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: {minimum:6, maximum:100}
    validates :desc, presence: true,length: {minimum:10, maximum:400}

end