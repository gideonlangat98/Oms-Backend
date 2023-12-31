class CreateProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :progresses do |t|
      t.string :progress_by
      t.string :assignment_name
      t.string :task_managed
      t.string :project_managed
      t.date :assigned_date
      t.date :start_date
      t.string :exceeded_by
      t.string :granted_time
      t.date :delivery_time
      t.string :progress_sender
      t.boolean :seen, default: false
      t.integer :staff_id, null: true, foreign_key: true

      t.timestamps
    end
  end
end
