ActiveAdmin.register Task do

	permit_params :title, :note, :video, :tag, :project_id

end
