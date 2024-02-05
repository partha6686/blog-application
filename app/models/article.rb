class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum:6, maximum:100}
    validates :desc, presence: true,length: {minimum:10, maximum:400}

end