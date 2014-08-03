class AddLinkToPost < ActiveRecord::Migration
  def change
    add_column :posts, :author_id, :string
    add_column :posts, :content, :string
    add_column :posts, :link, :string
  end
end
