class AddDetailsToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :location, :string
    add_column :jobs, :company, :string
    add_column :jobs, :category, :string
  end
end
