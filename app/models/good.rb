class Good < ActiveRecord::Base
  belongs_to :user
  belongs_to :parent_app
  belongs_to :app_instance
end
