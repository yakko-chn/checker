require 'rails_helper'

 RSpec.describe '新規登録', type: :system do
  # before do
  #   driven_by(:rack_test)
  # end
    before do
      @user = FactoryBot.build(:user)
    end

    context 'ユーザー新規登録が可能な場合' do
        it 'ユーザー登録情報に必要な項目が埋めてある' do
          # トップページに移動する
          visit root_path
          # トップページに必要な項目があるか確認する
          expect(page).to have_content("ログイン")
          expect(page).to have_content("新規登録")
          expect(page).to have_content("コンセプト")
          expect(page).to have_content("食材一覧")
          expect(page).to have_content("食材を追加する")
          # 新規登録ページへ移動する
          visit new_user_registration_path
          # ユーザー情報を入力する
          fill_in 'user_nickname', with: @user.nickname
          fill_in 'user_email', with: @user.email
          fill_in 'user_password', with: @user.password
          fill_in 'user_password_confirmation', with: @user.password_confirmation
          # 登録ボタンを押した時に、ログインできる
          find('input[name="commit"]').click
          expect(page.accept_confirm).to eq "【確認】下記のお客様登録を登録しますか？"
          # トップページへ遷移したことを確認する
          expect(current_path).to eq root_path
          # カーソルを合わせるとログアウトボタンが表示されることを確認する
          expect(page).to have_content("ログアウト")
          # サインアップページへ遷移するボタンや、ログインページへ遷移するボタンが表示されていないことを確認する
          expect(page).to have_no_content('新規登録')
          expect(page).to have_no_content('ログイン')
        end
      end

        context 'ユーザー新規登録が不可の場合' do
          it 'ユーザー登録情報に漏れが生じている' do
          # トップページに移動する
          visit root_path
          # トップページにサインアップページへ遷移するボタンがあることを確認する
          expect(page).to have_content('新規登録')
          # 新規登録ページへ移動する
          visit new_user_registration_path
          # ユーザー情報を入力する
          fill_in 'user_nickname', with: ""
          fill_in 'user_email', with: ""
          fill_in 'user_password', with: ""
          fill_in 'user_password_confirmation', with: ""  
          # サインアップボタンを押してもユーザー登録できない
          find('input[name="commit"]').click
          expect(page.accept_confirm).to eq "【確認】下記のお客様登録を登録しますか？"
          # 新規登録ページへ戻されることを確認する
          visit new_user_registration_path
        end
      end
 end

  
 RSpec.describe 'ログイン', type: :system do
    before do
      @user = FactoryBot.create(:user)
    end

      context 'ログインができるとき' do
        it '保存されているユーザーの情報と合致すればログインができる' do
          # トップページに移動する
          visit root_path
          # トップページにログインページへ遷移するボタンがあることを確認する
          expect(page).to have_content("ログイン")
          # ログインページへ遷移する
          visit new_user_session_path
          # 正しいユーザー情報を入力する
          fill_in 'user_email', with: @user.email
          fill_in 'user_password', with: @user.password
          # ログインボタンを押す
          find('input[name="commit"]').click
          # トップページへ遷移することを確認する
          expect(current_path).to eq root_path
          # カーソルを合わせるとログアウトボタンが表示されることを確認する
          expect(page).to have_content("ログアウト")
          # サインアップページへ遷移するボタンやログインページへ遷移するボタンが表示されていないことを確認する
          expect(page).to have_no_content("新規登録")
          expect(page).to have_no_content("ログイン")
        end
      end
  
      context 'ログインができない' do
        it 'ログインに失敗し、再びサインインページに戻ってくる' do
          # トップページに遷移する
          visit root_path
          # トップページにログインページへ遷移するボタンがあることを確認する
          expect(page).to have_content("ログイン")
          # ログインページへ遷移する
          visit new_user_session_path
          # 誤ったユーザー情報を入力する
          fill_in "user_email",  with: nil
          fill_in "user_password", with: nil
          # ログインボタンをクリックする
          click_on "ログイン"
          # サインインページに戻ってきていることを確認する
          expect(current_path).to eq new_user_session_path
        end
      end
 end

