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

require 'spec_helper'

describe AppInstance do
  pending "add some examples to (or delete) #{__FILE__}"
end
