require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "creates a post" do
    visit root_path

    click_on "Log in"

    within('form') do
      fill_in "Email", with: "duchess@example.gov"
      fill_in "Password", with: "password"

      click_on "Log in"
    end

    click_on "Home"

    fill_in "micropost[content]", with: "blog post 1"
    click_on "Post"

    assert_text "Micropost created!"
  end
end
