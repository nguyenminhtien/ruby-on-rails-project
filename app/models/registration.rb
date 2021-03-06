class Registration < ActiveRecord::Base
  belongs_to :exercise_group
  belongs_to :user
  
  belongs_to :course_instance
  
  def before_save
    self.course_instance = exercise_group.course_instance
  end
  
  def after_create
    NewsFeed.new_group_registration self
  end
end