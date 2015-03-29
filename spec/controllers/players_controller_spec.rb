require 'rails_helper'

RSpec.describe PlayersController, type: :controller do

  context 'GET #index' do

    before do
      user = double('user')
      allow(request.env['warden']).to receive(:authenticate!) { user }
      allow(controller).to receive(:current_user) { user }
      allow(user).to receive(:players).and_return(Player.all)
      get :index
    end

    it 'succeeds' do
      expect(response).to have_http_status(:ok)
    end

  end

end
