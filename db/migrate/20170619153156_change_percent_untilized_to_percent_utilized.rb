class ChangePercentUntilizedToPercentUtilized < ActiveRecord::Migration[5.0]
  def change
    rename_column :skills, :percent_untilized, :percent_utilized
  end
end
