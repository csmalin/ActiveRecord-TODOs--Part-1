require_relative '../../db/config'
class Task < ActiveRecord::Base

  def self.delete_task(task)
    Task.limit(task).last.delete
  end

  def self.complete(id)
        Task.limit(id).last.update_attributes(:completed_at => Time.now)  
  end

  def self.uncomplete(id)
    Task.limit(id).last.update_attributes(:completed_at => nil)  
  end

  def self.list
    Task.all.each_with_index do |element, index|
      if element.completed_at
        puts "[x] #{index + 1} : #{element.task }"
      else 
        puts "[ ] #{index + 1} : #{element.task }"
      end
    end
  end
end
