require "rails_helper"

RSpec.feature "Creating Articles" do
    scenario "A user creates a new article" do
        visit "/" # goes to root page
        click_link "New Article" # capybara method
        fill_in "Title", with: "Creating a blog"
        fill_in "Body", with: "Lorem Ispum"
        click_button "Create Article"

        expect(page).to have_content("Article has been created")
        expect(page.current_path).to eq(articles_path)

    end
end