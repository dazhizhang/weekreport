require 'rails_helper'

RSpec.describe "weekly_publishes/show", type: :view do
  before(:each) do
    @weekly_publish = assign(:weekly_publish, WeeklyPublish.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
