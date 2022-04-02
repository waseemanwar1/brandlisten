require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe 'GET #index' do
    it 'retuns success response' do
      get :index

      expect(response).to have_http_status(:success)
      expect(FootBallData.instance.list).not_to eq nil
    end
  end

  describe 'GET #raw_data' do
    it 'retuns success response' do
      get :index

      expect(response).to have_http_status(:success)
    end
  end
end