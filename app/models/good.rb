# == Schema Information
#
# Table name: goods
#
#  id              :integer          not null, primary key
#  name            :text
#  app_instance_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#  description     :text
#  user_id         :integer
#

class Good < ActiveRecord::Base
  belongs_to :user
  belongs_to :parent_app
  belongs_to :app_instance
end
