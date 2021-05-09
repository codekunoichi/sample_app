require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get root_path
    assert_response :success
    #assert_select "title", "Home | #{@base_title}"
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get sitemap" do 
    get sitemap_path
    assert_response :success
    assert_select "title", "SiteMap | #{@base_title}"
  end

  test "should get press releases" do 
    get pressreleases_path
    assert_response :success 
    assert_select "title", "Press Releases | #{@base_title}"
  end 
end
