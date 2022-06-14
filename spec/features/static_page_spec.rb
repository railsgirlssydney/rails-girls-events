require 'rails_helper'

describe 'Home page' do
  before(:each) do 
    Event.create(title: 'test_event', live: true)
  end

  it 'can be reached' do
    visit root_path
    expect(page.status_code).to eq(200)
  end
end
