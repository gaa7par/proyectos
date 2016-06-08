require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'welcome/index'
    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", projects_path

    get users_path
    assert_template 'users/index'
    assert_select "a[href=?]", new_user_path
    assert_select "a[href=?]", root_path

    get new_user_path
    assert_template 'users/new'
    assert_select "a[href=?]", users_path

    get projects_path
    assert_template 'projects/index'
    assert_select "a[href=?]", new_project_path
    assert_select "a[href=?]", root_path

    get new_project_path
    assert_template 'projects/new'
    assert_select "a[href=?]", projects_path
  end
end
