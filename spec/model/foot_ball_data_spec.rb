require 'rails_helper'

RSpec.describe FootBallData, type: :model do
  describe 'singleton' do

    it 'should validate single instance of the class' do
      expect { FootBallData.new }.to raise_error "private method `new' called for FootBallData:Class"
    end
  end
end
