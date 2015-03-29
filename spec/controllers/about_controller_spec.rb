require 'rails_helper'

RSpec.describe AboutController, type: :controller do

  context 'GET #index' do

      before do
        get :index
      end

      it 'succeeds' do
        expect(response).to have_http_status(:ok)
      end

  end

end
