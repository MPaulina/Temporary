require 'spec_helper'

describe "gists/search.html.erb" do
  it "should have loging with github" do
    visit searchgist_path
    expect(page).to have_content('Sign in with GitHub')
  end
  it "should have loging with facebook" do
    visit searchgist_path
    expect(page).to have_content('Sign in with Facebook')
  end
  it "should have Lang" do
    visit searchgist_path
    expect(page).to have_content('Lang')
  end
  it "should have button 'Search'" do
    visit searchgist_path
    expect(page).to have_button('Search')
  end
end

