RSpec.shared_examples "an admin controller" do
  include Devise::TestHelpers
  include Warden::Test::Helpers
  context 'logged in user is NOT admin' do

    before do
      user = FactoryGirl.build_stubbed(:user)
      puts user.admin?
      allow(request.env['warden']).to receive(:authenticate!) { user }
      allow(controller).to receive(:current_user) { user }
      allow(user).to receive(:players).and_return([@user_player])
      get :index
    end

    it 'redirects' do
      expect(response).to have_http_status(:found)
    end

  end

  context 'user not logged in' do

    before do
      user = FactoryGirl.build_stubbed(:user)
      sign_out user
      get :index
    end

    it 'redirects' do
      expect(response).to have_http_status(:found)
    end

  end

end