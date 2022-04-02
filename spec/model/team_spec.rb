require 'rails_helper'

RSpec.describe Team, type: :model do
  subject { FactoryBot.build(:team, p: rand(10..30)) }

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:p) }
    it { is_expected.to validate_presence_of(:w) }
    it { is_expected.to validate_presence_of(:l) }
    it { is_expected.to validate_presence_of(:d) }
    it { is_expected.to validate_presence_of(:f) }
    it { is_expected.to validate_presence_of(:a) }
    it { is_expected.to validate_presence_of(:raw) }
    it { is_expected.to validate_presence_of(:pts) }

    it 'should be valid' do
      expect(subject).to be_valid
    end

    it 'should not be valid when some attribute is missing' do
      subject.name = ''

      expect(subject).not_to be_valid
    end
  end
end