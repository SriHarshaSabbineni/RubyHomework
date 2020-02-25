require "active_record"

class Todo < ActiveRecord::Base
  def due_today?
    due_date == Date.today
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    "#{id}. #{display_status} #{todo_text} #{display_date}"
  end

  def self.show_list
    puts "My Todo-list\n\n"

    puts "Overdue\n"
    puts self.where("due_date < ?", Date.today).map { |todo| todo.to_displayable_string }
    puts "\n\n"

    puts "Due Today\n"
    puts self.where("due_date = ?", Date.today).map { |todo| todo.to_displayable_string }
    puts "\n\n"

    puts "Due Later\n"
    puts self.where("due_date > ?", Date.today).map { |todo| todo.to_displayable_string }
    puts "\n\n"
  end

  def self.add_task(h)
    self.create!(todo_text: h[:todo_text], due_date: Date.today + h[:due_in_days], completed: false)
  end

  def self.mark_as_complete!(todo_id)
    todo = self.find_by("id = ?", todo_id)
    todo.completed = true
    todo.save
    return todo
  end
end
