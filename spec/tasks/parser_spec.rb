require 'rails_helper'

describe 'parser task' do
  before do
    Rails.application.load_tasks
  end

  after(:each) do
    Rake::Task['parser:parse_file'].reenable
  end

  context "parse data successfully" do
    let(:file_path) { 'spec/support/files/team_data.dat' }

    it "it should add data to model after running" do
      Rake::Task["parser:parse_file"].invoke(file_path)

      expect(FootBallData.instance.list).not_to eq nil
    end
  end
end