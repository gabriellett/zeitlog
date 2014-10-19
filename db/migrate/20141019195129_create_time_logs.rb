class CreateTimeLogs < ActiveRecord::Migration
  def change
    create_table :time_logs do |t|
      t.references :project, index: true
      t.references :user, index: true
      t.integer :hours

      t.timestamps
    end
  end
end
