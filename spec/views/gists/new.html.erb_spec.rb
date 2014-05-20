require 'spec_helper'
require 'pry'

describe "gists/new.html.erb" do
  it "should have loging with github" do
    visit new_gist_path
    expect(page).to have_content('Sign in with GitHub')
  end
  it "should have loging with facebook" do
    visit new_gist_path
    expect(page).to have_content('Sign in with Facebook')
  end
  it "should have snippet" do
    visit new_gist_path
    expect(page).to have_content('Snippet')
  end
  it "should have lang" do
    visit new_gist_path
    expect(page).to have_content('Lang')
  end
  it "should have description" do
    visit new_gist_path
    expect(page).to have_content('Description')
  end
  it "should have group" do
    visit new_gist_path
    expect(page).to have_content('Group')
  end
  it "should have button 'Create gist'" do
    visit new_gist_path
    expect(page).to have_button('Create Gist')
  end
  it "should have sign 'Create your gist'" do
    visit new_gist_path
    expect(page).to have_content('Create your gist')
  end
end

