require 'spec_helper'

describe User do
  it { should have_many :subscribed_users }
  it { should have_many :subscriptions }
end
