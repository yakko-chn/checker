// window.addEventListener('load', function(){
//   const addMemo = document.querySelector(".add");
//   const list = document.querySelector(".lists");

//       const createShoppingList = task => {
//         // HTMLを生成
//         const html = `
//         <li class="list-group-item d-flex justify-content-between align-items-center">
//             <span>${task}</span>
//             <i class="far fa-trash-alt delete"></i>
//         </li>
//         `;
        
//         list.innerHTML += html;
//       };

//       addMemo.addEventListener('submit', function(e) {
//         // デフォルトのイベントを無効
//         e.preventDefault();

//         // 正常に、フォームに値が入力された場合
//         const form = addMemo.add.value.trim();
//         if(form.length != 0) {
//             // 新しいHTMLフォームを生成
//             createShoppingList(form);
//             // フォームに入力した文字をクリア
//             addMemo.reset();
//         }
//       });

//       list.addEventListener('click', function(e) {
//         //リストの削除機能
//         if (e.target.classList.contains('delete')){
//             e.target.parentElement.remove();
//         }
//       });
// });