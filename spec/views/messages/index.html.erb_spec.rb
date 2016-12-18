require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :title => "Title",
        :content => "MyText",
        :author => 1
      ),
      Message.create!(
        :title => "Title",
        :content => "MyText",
        :author => 1
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
