require 'spec_helper'

describe "groups/edit.html.erb" do
  let(:group) { FactoryGirl.create(:group) }
  
  it "should have loging with github" do
    visit edit_group_path(id: group.id)
    expect(page).to have_content('Sign in with GitHub')
  end
  it "should have loging with facebook" do
    visit edit_group_path(id: group.id)
    expect(page).to have_content('Sign in with Facebook')
  end
end
