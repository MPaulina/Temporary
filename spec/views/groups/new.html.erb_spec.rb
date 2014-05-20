require 'spec_helper'

describe "groups/new.html.erb" do
  it "should have loging with github" do
    visit new_group_path
    expect(page).to have_content('Sign in with GitHub')
  end
  it "should have loging with facebook" do
    visit new_group_path
    expect(page).to have_content('Sign in with Facebook')
  end
end
