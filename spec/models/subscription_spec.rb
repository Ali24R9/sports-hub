require 'spec_helper'

describe Subscription do
  it { should belong_to :subscriber }
  it { should belong_to :subscribed }
end
