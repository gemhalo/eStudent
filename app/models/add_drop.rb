class AddDrop < ActiveRecord::Base

  scope :course_add_requests, where("request_for='add' and (add_drop_status='' or add_drop_status is null)")
  scope :course_drop_requests, where("request_for='drop' and (add_drop_status='' or add_drop_status is null)")

end
