require 'rails_helper'

RSpec.describe "weekly_publishes/new", type: :view do
  before(:each) do
    assign(:weekly_publish, WeeklyPublish.new(
      :name => "MyString"
    ))
  end

  it "renders new weekly_publish form" do
    render

    assert_select "form[action=?][method=?]", weekly_publishes_path, "post" do

      assert_select "input#weekly_publish_name[name=?]", "weekly_publish[name]"
    end
  end
end
