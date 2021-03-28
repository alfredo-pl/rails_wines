require 'rails_helper'

RSpec.describe WinesController, :type​ => :controller​​ do
    describe 'GET index' do
        it 'returns a successful response' do
            role = Role.create(id: 1, name: "Admin")
            @user = User.create(email: 'test@gmail.com', password: '12345678', password_confirmation:'12345678' ,role_id: 1)
            sign_in @user
            get :index
            expect(response).to be_successful
        end
     
        it 'assigns wines' do
            @user = User.create(email: 'test@gmail.com', password: '12345678')
            sign_in @user
            @wine = Wine.create(name: 'Gran vino diaulo', score: 58, age: 20)
            get :index
            expect(Wine.count).to eq(1)
        end
    
        it 'renders the index template' do
            role = Role.create(id: 1, name: "Admin")
            @user = User.create(email: 'test@gmail.com', password: '12345678', password_confirmation:'12345678' ,role_id: 1)
            sign_in @user
            get :index
            expect(response).to render_template('index')
        end

        it 'renders the show template' do
            role = Role.create(id: 1, name: "Admin")
            @user = User.create(email: 'test@gmail.com', password: '12345678', password_confirmation:'12345678' ,role_id: 1)
            sign_in @user
            wine = Wine.create(name: 'Gran vino diaulo', score: '58' ,age: 20 )
            get :show, params: {id:wine.id} 
            expect(response).to render_template('show')
        end
    end
end