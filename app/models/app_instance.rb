# == Schema Information
#
# Table name: app_instances
#
#  id                :integer          not null, primary key
#  parent_app_id     :integer
#  unique_identifier :integer
#  user_id           :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class AppInstance < ActiveRecord::Base
  belongs_to :parent_app
  belongs_to :user
end
