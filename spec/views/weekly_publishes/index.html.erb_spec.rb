require 'rails_helper'

RSpec.describe "weekly_publishes/index", type: :view do
  before(:each) do
    assign(:weekly_publishes, [
      WeeklyPublish.create!(
        :name => "Name"
      ),
      WeeklyPublish.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of weekly_publishes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
