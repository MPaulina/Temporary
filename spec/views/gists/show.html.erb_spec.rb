require 'spec_helper'

describe "gists/show.html.erb" do
  let(:gist) { FactoryGirl.create(:gist) }
  
  it "should have loging with github" do
    visit gist_path(id: gist.id)
    expect(page).to have_content('Sign in with GitHub')
  end
  it "should have loging with facebook" do
    visit gist_path(id: gist.id)
    expect(page).to have_content('Sign in with Facebook')
  end
end

