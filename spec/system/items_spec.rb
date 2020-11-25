require 'rails_helper'

 RSpec.describe '食材の追加', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  # before do
  #   driven_by(:rack_test)
  # end

        context '食材の追加ができる場合'do
          it 'ログインしたユーザーは食材の追加ができる' do
            # ログインする
            sign_in(@user)
            # 食材追加ページがあることを確認する
            expect(page).to have_content('食材を追加する')
            # 食材追加ページをクリックする
            find('.topic3').click
            # 追加ページに移動する
            visit new_item_path
            # 必要な項目をフォームに入力する
            select("2022", from: "item_buy_day_1i")
            select("12", from: "item_buy_day_2i")
            select("12", from: "item_buy_day_3i")

            select("麺類", from: "item-category")
            select("インスタント", from: "item-food")
            select("1kg", from: "item-size")

            select("2023", from: "item_sell_by_1i")
            select("8", from: "item_sell_by_2i")
            select("22", from: "item_sell_by_3i")

            # 登録するとItemモデルのカウントが1上がる
            expect{find('input[name="commit"]').click}.to change { Item.count }.by(1)
            # ページに遷移することを確認する
            expect(current_path).to eq root_path
            # トップページに遷移する
            visit root_path
            # 食材一覧ページがあることを確認する
            expect(page).to have_content('食材一覧')
            # 食材一覧ページをクリックする
            find('.topic2').click
            # 食材一覧ページに遷移する
            visit items_path
            # トップページには先ほど投稿した食材が存在することを確認する
            expect(page).to have_selector ".food-content"
          end
        end
        
        context '食材が追加できない場合'do
          it 'ログインしていないと食材が追加できない' do
            # トップページに遷移する
            visit root_path
            # 食材追加ページがあることを確認する
            expect(page).to have_content('食材を追加する')
            # 食材追加ページをクリックする
            find('.topic3').click
            # ログインページに遷移する
            visit new_user_session_path
          end
        end
 end

 RSpec.describe "食材の編集", type: :system do
    before do
      @item = FactoryBot.create(:item)
    end
  
        context '食材の編集ができる場合'do
          it 'ログインしたユーザーは食材の編集ができる' do
            # ログインする
            sign_in(@item.user)
            # 食材一覧ページがあることを確認する
            expect(page).to have_content('食材一覧')
            # 食材一覧ページをクリックする
            find('.topic2').click
            click_on '編集'
            # 編集ページに遷移する
            visit edit_item_path(@item)
            # 編集する
            select("2022", from: "item_buy_day_1i")
            select("12", from: "item_buy_day_2i")
            select("12", from: "item_buy_day_3i")

            select("麺類", from: "item-category")
            select("インスタント", from: "item-food")
            select("1kg", from: "item-size")

            select("2023", from: "item_sell_by_1i")
            select("8", from: "item_sell_by_2i")
            fill_in 'item-memo', with: ""

            # 登録ボタンをクリック
            find('input[name="commit"]').click
            # ページに遷移することを確認する
            expect(current_path).to eq root_path
            # トップページに遷移する
            visit root_path
          end
        end
          
        context '食材が編集できない場合'do
          it 'ログインしていないと食材が追加できない' do
            # トップページに遷移する
            visit root_path
            # 食材一覧ページがあることを確認する
            expect(page).to have_content('食材一覧')
            # 食材追加ページをクリックする
            find('.topic2').click
            # ログインページに遷移する
            expect(page).to have_no_link '編集'
          end
        end
  end

RSpec.describe '食材の削除', type: :system do
        
    before do
      @item = FactoryBot.create(:item)
    end

      context '食材の削除ができる場合'do
        it 'ログインしたユーザーは食材の追加ができる' do
          # ログインする
          sign_in(@item.user)
          # 食材一覧ページがあることを確認する
          expect(page).to have_content('食材一覧')
          # 食材一覧をクリックする
          find('.topic2').click
          # 食材一覧ページに遷移する
          visit items_path(@item)
          # 一覧ページに食材が並んでいることを確認する
          expect(page).to have_selector ".food-content"
          # 一覧ページに「処分」ボタンを確認。
          click_on '処分'
          expect(page.accept_confirm).to eq "#{@item.buy_day}日に購入した#{@item.food.name}を処分しますか？"
          # 処分後は、トップページに遷移する
          visit root_path
        end
      end

      context '食材が削除できない場合'do
        it 'ログインしていないと食材が追加できない' do
          # トップページに遷移する
          visit root_path
          # 食材一覧ページがあることを確認する
          expect(page).to have_content('食材一覧')
          # 食材追加ページをクリックする
          find('.topic2').click
          # 処分ページへのリンクがないことを確認する
          expect(page).to have_no_link '処分'
        end
      end
end


RSpec.describe '食材詳細', type: :system do

    before do
      @item = FactoryBot.create(:item)
    end

      context '詳細ページが確認できる' do
        it 'ログインしたユーザーは詳細ページを見ることができる' do
          # ログインする
          sign_in(@item.user)
          # 食材一覧があることを確認する
          expect(page).to have_content('食材一覧')
          # 食材一覧をクリックする
          find('.topic2').click
          # 食材一覧ページに遷移する
          visit items_path(@item)
          # 詳細のボタンを確認して、クリックする。
          click_on '詳細'
          # 詳細ページにコメントの入力
          fill_in 'comment_text', with: "こんにちは"
          # 送信ボタンを押すと、コメントの内容が表示される　
          find('input[name="commit"]').click
          expect(page).to have_content("こんにちは")
        end
      end
  
      context '詳細ページが確認できない' do
        it 'ログインしていない状態では詳細ページには遷移できない' do
          # トップページに移動する
          visit root_path
          # 食材一覧があることを確認する
          expect(page).to have_content('食材一覧')
          # 食材一覧をクリックする
          find('.topic2').click
          # 食材一覧ページに遷移する
          visit search_path
          # 詳細ページへのリンクがないことを確認する
          expect(page).to have_no_link '詳細'
        end
      end
end

RSpec.describe '食材検索', type: :system do

  before do
    @item = FactoryBot.create(:item)
  end

      context '検索が使えない' do
        it 'ログインしているユーザーは検索機能が使えない' do
          # ログインする
          sign_in(@item.user)
          # 食材一覧があることを確認する
          expect(page).to have_content('食材一覧')
          # 食材一覧ページをクリックする
          find('.topic2').click
          # 食材一覧ページに遷移する
          visit items_path(@item)
          # 検索ボタンがないことを確認する
          expect(page).to have_no_link '検索'
        end
      end

      context '検索が使える' do
        it 'ログインしていないユーザーは検索機能が使える' do
          # トップページに移動する
          visit root_path
          # 食材一覧ページがあることを確認する
          expect(page).to have_content('食材一覧')
          # 食材一覧ページをクリックする
          find('.topic2').click
          # 検索ページを遷移する
          visit search_path
          # 検索フォームに入力
          fill_in 'nickname', with: "ド"
          # 送信ボタンを押すと、登録した食材が表示される　
          find('input[name="commit"]').click
          expect(page).to have_selector(".result")
        end
      end
end
