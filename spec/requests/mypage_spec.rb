require 'rails_helper'

RSpec.describe 'Mypage', type: :request do
    describe 'GET /mypage' do
        context 'ログインしていない場合' do
            it 'ログイン画面へリダイレクトすること' do
                get mypage_path
                expect(response).to redirect_to(:new_user_session)
            end
        end
        context 'ログインしている場合' do
            let(:user) { User.creste(email: 'test@example.com',
                                     password: 'password') }
            before do
                login_as user
            end
            
            it 'マイページが表示されること' do
                get mypage_path
                expect(response).to render_template('mypage/index')
            end
        end
    end
end
