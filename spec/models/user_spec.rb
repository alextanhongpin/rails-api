require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_length_of(:name) }
    it { should allow_value('ab', 'c ', 'john doe').for(:name) }
    it { should_not allow_value('', ' ', '  ', 'a').for(:name) }
  end

  context "with valid arguments" do
    let(:user){ User.new(name: 'ab', email: 'john.doe@mail.com') }
    it { expect(user.name).to eq('ab') }
    it { expect(user.email).to eq('john.doe@mail.com') }
  end

  context "with invalid arguments" do
    let(:user) { User.new }
    it { expect(user.valid?).to be(false) }
    it { expect(user).to_not be_valid }
  end
end
