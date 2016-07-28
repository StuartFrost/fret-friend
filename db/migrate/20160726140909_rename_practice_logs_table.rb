class RenamePracticeLogsTable < ActiveRecord::Migration
  def change
    rename_table :practice_logs_tables, :practice_logs
  end
end
