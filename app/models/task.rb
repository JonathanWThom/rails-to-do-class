class Task < ActiveRecord::Base
  belongs_to :list

  validates :description, :presence => true

  def self.completeTasks(list_id)
    Task.where(:done => true, :list_id => list_id)
  end
end
