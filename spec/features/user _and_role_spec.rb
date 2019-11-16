require 'rails_helper'

describe "with users and roles" do

  # def log_in_as(user)
  #   visit new_user_session_path
  #   fill_in("user_email", with: user.email)
  #   fill_in("user_password", with: user.password)
  #   click_button("Log in")
  # end
  #

  def log_in_as(admin)
    visit new_admin_session_path
    fill_in("admin_email", with: admin.email)
    fill_in("admin_password", with: admin.password)
    click_button("Log in")
  end

  # let(:user) { user.create(email: "test@example.com", password: "password") }
  #
  # it "allows a logged-in user to view the main page" do
  #   log_in_as(user)
  #   visit(project_path)
  #   expect(current_path).to eq(projects_path)
  # end

  it "does not allow user to see the admin page if not logged in" do
    visit(events_path)
    expect(current_path).to eq(new_admin_session_path)
  end
end