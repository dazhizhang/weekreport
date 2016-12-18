require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyString",
      :content => "MyText",
      :category => nil,
      :status => 1,
      :author => 1,
      :edit_by => 1
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_category_id[name=?]", "post[category_id]"

      assert_select "input#post_status[name=?]", "post[status]"

      assert_select "input#post_author[name=?]", "post[author]"

      assert_select "input#post_edit_by[name=?]", "post[edit_by]"
    end
  end
end
