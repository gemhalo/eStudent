class Menuitem < ActiveRecord::Base
#     CARAGORIES = %w[academics courses communications settings]

   scope :fetch_menu_for_role, lambda { |role| where('role_id ==?',role) }


end

