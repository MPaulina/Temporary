require 'spec_helper'

describe "gists/index.html.erb" do
  it "should have loging with github" do
    visit gists_path
    expect(page).to have_content('Sign in with GitHub')
  end
  it "should have loging with facebook" do
    visit gists_path
    expect(page).to have_content('Sign in with Facebook')
  end
  it "should have Show link" do
    visit gists_path
    expect(page).to have_link('Show')
  end
  it "shouldn't have Edit link" do
    visit gists_path
    expect(page).to_not have_link('Edit')
  end
  it "shouldn't have Delete link" do
    visit gists_path
    expect(page).to_not have_link('Delete')
  end
  it "shouldn't have New group link" do
    visit gists_path
    expect(page).to_not have_link('New group')
  end
  it "shouldn't have Edit group link" do
    visit gists_path
    expect(page).to_not have_link('Edit group')
  end
end

