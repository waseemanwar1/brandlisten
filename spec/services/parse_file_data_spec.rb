require 'rails_helper'

RSpec.describe ParseFileData, type: :service do
  let(:file_path) { 'spec/support/files/team_data.dat' }

  context 'file exists' do
    it 'it should successfully parse date' do
      response = described_class.new(file_path).call

      expect(response.size).to eq 20
      response.each do |data|
        expect(data.class).to eq Team
      end
    end
  end

  context 'file not exists' do
    let(:file_path) { 'spec/support/files/invalid.dat' }

    it 'it should return null response' do
      response = described_class.new(file_path).call

      expect(response.size).to eq 0
    end
  end
end