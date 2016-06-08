require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'welcome/index'
    assert_select "a[href=?]", users_path

    get users_path
    assert_template 'users/index'
    assert_select "a[href=?]", new_user_path

    get new_user_path
    assert_template 'users/new'
    assert_select "a[href=?]", users_path
  end
end
