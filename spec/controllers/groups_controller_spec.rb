require 'spec_helper'

describe GroupsController do
  let(:user) { FactoryGirl.create(:user) }
  let(:group) { FactoryGirl.create(:group) }

  describe "GET 'new'" do
    describe "check if" do
      describe "can access" do
        it "without logged in" do
          get 'new'
          response.should_not be_success
        end
        it "with logged in" do
          session[:user_id] = user.id
          get 'new'
          response.should be_success
        end
      end
      it "rendered template new" do
        session[:user_id] = user.id
        get 'new'
        response.should render_template(:new)
      end
      it "not rendered template edit" do
        session[:user_id] = user.id
        get 'new'
        response.should_not render_template(:edit)
      end
    end

  end

  describe "GET 'edit'" do
    describe "check if" do
      describe "can access" do
        it "without logged in" do
          get 'edit', { id: group.id }
          response.should_not be_success
        end
        it "with logged in" do
          session[:user_id] = user.id
          get 'edit', { id: group.id }
          response.should be_success
        end
      end
      it "rendered template edit" do
        session[:user_id] = user.id
        get 'edit', { id: group.id }
        response.should render_template(:edit)
      end
      it "not rendered template new" do
        session[:user_id] = user.id
        get 'edit', { id: group.id }
        response.should_not render_template(:new)
      end
    end
  end

end
