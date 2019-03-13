class AddWebsiteUrlToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :website_url, :string
  end
end
