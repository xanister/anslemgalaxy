require 'rails_helper'
require 'controllers/admin/shared/admin_controller_spec'

RSpec.describe Admin::FaqsController, type: :controller do

  context 'GET #index' do

    context 'logged in user is admin' do

      before do
        user = FactoryGirl.build_stubbed(:user, :admin)
        allow(request.env['warden']).to receive(:authenticate!) { user }
        allow(controller).to receive(:current_user) { user }
        get :index
      end

      it 'succeeds' do
        expect(response).to have_http_status(:ok)
      end

      it 'should get all faqs' do
        expect(assigns(:faqs)).to eq(Faq.unscoped.all)
      end

      it 'should render index' do
        expect(response).to render_template(:index)
      end

    end

  end

  it_behaves_like "an admin controller"

end
