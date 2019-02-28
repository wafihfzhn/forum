class AddStickyOrderToForumThreads < ActiveRecord::Migration[5.2]
  def change
  	add_column :forum_threads, :sticky_order, :integer, dafault: 100 
  end
end