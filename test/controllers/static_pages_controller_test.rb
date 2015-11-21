require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    # client側のrequestに対して、 serverからresponseが返ってくるかを検証
    assert_response :success
    # HTMLファイルに titleタグがあり、そのタグに囲まれているのが、
    # "Home | Ruby on Rails Tutorial Sample App"であるかを検証。
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

end