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
  end
end
