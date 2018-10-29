class Project < ActiveRecord::Base
	has_attached_file :photo,styles: { medium: "300x300>", thumb: "100x100>" },
                      path: "#{Rails.root}/app/assets/images/"
  validates_attachment_content_type :photo, content_type: ["image/jpg","image/jpeg","image/png"]

  has_many :user, through: :user_groups
  has_many :user_groups

  has_one :user_project, as: :content, dependent: :destroy

 #  after_create :create_user_project

	# def create_user_project
	# 	UserProject.create(user_id: current_user.id, project_id: id, updated_at: updated_at)
	# end

end
