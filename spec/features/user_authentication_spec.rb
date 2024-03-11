require 'rails_helper'

RSpec.feature "UserAuthentications", type: :feature do
  scenario 'user is redirected to the root path after sign-in' do
    user = create(:user)

    sign_in user

    expect(page).to have_current_path(root_path)
  end
end
