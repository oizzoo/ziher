class AddInitialBalanceOnePercentToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :initial_balance_one_percent, :decimal, :default => 0.0, :null => false, :precision => 9, :scale => 2
  end
end
