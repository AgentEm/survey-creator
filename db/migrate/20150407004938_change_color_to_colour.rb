class ChangeColorToColour < ActiveRecord::Migration
  def change
    rename_column(:categories, :color, :colour)
  end
end
