class UserProject < ActiveRecord::Base

	belongs_to :content, polymorphic: true

  belongs_to :user
  belongs_to :project
end
