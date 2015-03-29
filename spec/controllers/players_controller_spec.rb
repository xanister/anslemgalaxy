require 'rails_helper'

RSpec.describe PlayersController, type: :controller do

  context 'GET #index' do

    before do

      @user_player = FactoryGirl.build_stubbed(:player)

      user = FactoryGirl.build_stubbed(:user)
      allow(request.env['warden']).to receive(:authenticate!) { user }
      allow(controller).to receive(:current_user) { user }
      allow(user).to receive(:players).and_return([@user_player])
      get :index
    end

    it 'succeeds' do
      expect(response).to have_http_status(:ok)
    end

    it 'should players as this users players' do
      expect(assigns(:players)).to eq([@user_player])
    end

    it 'should render index' do
      expect(response).to render_template(:index)
    end

  end

  context 'GET #new' do

    before do
      user = FactoryGirl.build_stubbed(:user)
      allow(request.env['warden']).to receive(:authenticate!) { user }
      allow(controller).to receive(:current_user) { user }
      get :new
    end

    it 'succeeds' do
      expect(response).to have_http_status(:ok)
    end

    it 'should players as this users players' do
      expect(assigns(:player)).to be_a_new(Player)
    end

    it 'should render new' do
      expect(response).to render_template(:new)
    end

  end

end
