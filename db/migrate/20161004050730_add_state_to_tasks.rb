class AddStateToTasks < ActiveRecord::Migration
  def change
    #Every time we create a new task, the task state should be to_do
    add_column :tasks, :state, :string, default: 'to_do'
  end
end
