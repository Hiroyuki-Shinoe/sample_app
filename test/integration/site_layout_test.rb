require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
    # まず、どのページに対するテストかを指定
    get root_path
    # 指定のviewが表示されるかのテスト
    assert_template 'static_pages/home'
    # 表示されるページ内に指定のlinkが存在するかのテスト
    # count optionはlinkが指定の個数、存在するかのテスト
    assert_select "a[href=?]", root_path, count:2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    # users#new ページに対するテストの指定
    get signup_path
    # users#newページのページタイトルが指定のものであるかのテスト
  # assert_select "title", "Sign up | Ruby on Rails Tutorial Sample App"
    # ApplicationHelperのfull_title(page_title="")を使用しての書き換え
    assert_select "title", full_title("Sign up")
  end
end
