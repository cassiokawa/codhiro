class Task < ActiveRecord::Base
  belongs_to :project

  validates :name, presence: true, length: {maxiumum: 500}
  validates :video, presence: true
  validates :tag, presence: true
  validates :project, presence: true
end
