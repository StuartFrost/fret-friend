class CreatePracticeLogsTable < ActiveRecord::Migration
  def change
    create_table :practice_logs_tables do |t|
      t.date :date
      t.time :time_from
      t.time :time_to
      t.string :practiced
    end
  end
end
