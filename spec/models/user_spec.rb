require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.create(
        email: 'grace@railsgirls.org',
        name: 'Grace Hopper',
    )
  end

  describe 'creation' do
    it 'can be created' do
      expect(user).to be_valid
      expect(User.count).to eq(1)
      expect(User.first.name).to eq(user.name)
    end
  end

end
