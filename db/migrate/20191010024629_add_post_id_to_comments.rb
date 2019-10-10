class AddPostIdToComments < ActiveRecord::Migration[5.2]
  def change  #(11): add id relationship manually
    add_column :comments, :post_id, :integer #id data type is integer
    #run "rails db:migrate" in terminal again
  end
end
