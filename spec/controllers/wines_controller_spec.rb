require 'rails_helper'

RSpec.describe WinesController, :type => :controller do
    describe 'GET wines#index' do
      it "assigns @wines" do 
        role = Role.create(id: 1, name:"visit")
        @user = User.create(id: 1 , name: "test@example.com", password: "123123", password_confirmation: "123123", role_id: 1)
        sign_in @user
        get :index
        expect(response).to render_template("index")
    end
  end

    describe 'You should log in to see the index' do
        it 'should redirect to sign_in view' do
            get :index
            expect(response).to_not render_template("index")
        end

        it 'should redirect to sign_in view' do
            get :index
            expect(response).to redirect_to new_user_session_path
        end
    end
end