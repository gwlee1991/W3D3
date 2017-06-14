class CreateShortenedUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :shortened_urls do |t|
      t.integer :user_id
      t.text :short_url
      t.text :long_url
      t.timestamps
    end
  end
end
