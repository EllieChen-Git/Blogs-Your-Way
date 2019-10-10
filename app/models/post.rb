class Post < ApplicationRecord
    has_many :comments   #(9): create relationship between comments & post
end
