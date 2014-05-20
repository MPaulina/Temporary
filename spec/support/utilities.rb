include ApplicationHelper

def sign_in(user, options={})
  if options[:no_capybara]
    session[:user_id] = user.id
  else
    # brak mozliwosci zalogowania
  end
end
