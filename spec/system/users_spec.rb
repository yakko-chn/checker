require 'rails_helper'

RSpec.describe "Users", type: :system do
  # before do
  #   driven_by(:rack_test)
  # end
    it 'ログインしていない状態でトップページの状況' do
      # ログイン後、トップページに
       visit root_path
      # ログインしていない場合、サインインページに遷移していることを確認する
       expect(page).to have_content("ログイン")
       expect(page).to have_content("新規登録")
       expect(page).to have_content("コンセプト")
      expect(page).to have_content("食材一覧")
      expect(page).to have_content("食材を追加する")
    end

#     it 'トップページからログインページに遷移する' do
#       # トップページに遷移する
#       visit root_path
      
#  　　 # 予め、ユーザーをDBに保存する
#        @user = FactoryBot.create(:user)
#       # サインインページへ移動する
#        visit eq new_user_session_path
#       # ログインしていない場合、サインインページに遷移していることを確認する
#        expect(current_path).to eq new_user_session_path
#       # すでに保存されているユーザーのemailとpasswordを入力する
#         fill_in "user_email",  with: @user.email 
#         fill_in "user_password", with: @user.password
#       # ログインボタンをクリックする
#       click_on "Log in"
#       # トップページに遷移していることを確認する
#       expect(current_path).to eq root_path
#     end
  
    # it 'ログインに失敗し、再びサインインページに戻ってくる' do
    #   # 予め、ユーザーをDBに保存する
    #   @user = FactoryBot.create(:user)
    #   # トップページに遷移する
    #   visit root_path
    #   # ログインしていない場合、サインインページに遷移していることを確認する
    #   expect(current_path).to eq new_user_session_path
    #   # 誤ったユーザー情報を入力する
    #   fill_in "user_email",  with: nil
    #   fill_in "user_password", with: nil
    #   # ログインボタンをクリックする
    #   click_on "Log in"
    #   # サインインページに戻ってきていることを確認する
    #   expect(current_path).to eq new_user_session_path
    # end
end

