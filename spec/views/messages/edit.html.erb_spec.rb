require 'rails_helper'

RSpec.describe "messages/edit", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :title => "MyString",
      :content => "MyText",
      :author => 1
    ))
  end

  it "renders the edit message form" do
    render

    assert_select "form[action=?][method=?]", message_path(@message), "post" do

      assert_select "input#message_title[name=?]", "message[title]"

      assert_select "textarea#message_content[name=?]", "message[content]"

      assert_select "input#message_author[name=?]", "message[author]"
    end
  end
end
