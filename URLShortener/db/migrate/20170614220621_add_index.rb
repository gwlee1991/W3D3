class AddIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :visits, :s_url_id
  end
end
