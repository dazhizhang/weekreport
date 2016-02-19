require 'rails_helper'

RSpec.describe "weekly_publishes/edit", type: :view do
  before(:each) do
    @weekly_publish = assign(:weekly_publish, WeeklyPublish.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit weekly_publish form" do
    render

    assert_select "form[action=?][method=?]", weekly_publish_path(@weekly_publish), "post" do

      assert_select "input#weekly_publish_name[name=?]", "weekly_publish[name]"
    end
  end
end
