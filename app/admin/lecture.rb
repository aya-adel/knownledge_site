ActiveAdmin.register Lecture do
  permit_params :course_id, :user_id, :content, :attach,:image
end
