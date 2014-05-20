require 'spec_helper'
require 'pry'

describe GistsController do
  let(:user) { FactoryGirl.create(:user) }
  let(:gist) { FactoryGirl.create(:gist) }

  describe "GET 'index'" do
    describe "check if" do
      describe "can access" do
        it "without logging in" do
          get 'index'
          response.should be_success
        end
        it "with logging in" do
          session[:user_id] = user.id
          get 'index'
          response.should be_success
        end
      end
      it "rendered template index" do
        get 'index'
        response.should render_template(:index)
      end
      it "not rendered template new" do
        get 'index'
        response.should_not render_template(:new)
      end
    end
  end
  describe "GET 'show'" do
    describe "check if" do
      describe "can access" do
        it "without logging in" do
          get 'show', { id: gist.id }
          response.should be_success
        end
        it "with logging in" do
          session[:user_id] = user.id
          get 'show', { id: gist.id }
          response.should be_success
        end
      end
      it "rendered template show" do
        get 'show', { id: gist.id }
        response.should render_template(:show)
      end
      it "not rendered template new" do
        get 'show', { id: gist.id }
        response.should_not render_template(:new)
      end
    end
  end
  describe "GET 'new'" do
    describe "check if" do
      describe "can access" do
        it "without logging in" do
          get 'new'
          response.should be_success
        end
        it "with logging in" do
          session[:user_id] = user.id
          get 'new'
          response.should be_success
        end
      end
      it "rendered template new" do
        get 'new'
        response.should render_template(:new)
      end
      it "not rendered template show" do
        get 'new'
        response.should_not render_template(:show)
      end
    end
  end

  describe "GET 'edit'" do
    describe "check if" do
      describe "can access" do
        it "without logging in" do
          get 'edit', { id: gist.id }
          response.should_not be_success
        end
        it "with logging in" do
          session[:user_id] = user.id
          get 'edit', { id: gist.id }
          response.should be_success
        end
      end
      it "rendered template edit" do
        session[:user_id] = user.id
        get 'edit', { id: gist.id }
        response.should render_template(:edit)
      end
      it "not render template show" do
        session[:user_id] = user.id
        get 'edit', { id: gist.id }
        response.should_not render_template(:show)
      end
    end
  end

end
