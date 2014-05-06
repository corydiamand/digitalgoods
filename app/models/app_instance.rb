class AppInstance < ActiveRecord::Base
  belongs_to :parent_app
  belongs_to :user
end
