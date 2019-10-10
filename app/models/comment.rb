class Comment < ApplicationRecord
    belongs_to :post 
    #(9): create relationship between comments & post
end

