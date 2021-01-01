// 食材の追加（プルダウン時に使用）
 window.addEventListener('load', function(){

  const itemCategory = document.getElementById("item-category");
  const itemFood = document.getElementById("item-food");
  const itemSize = document.getElementById("item-size");

  itemCategory.addEventListener('input', function(){
    if (itemFood.getAttribute("style") == "display:block;" || itemCategory.value == 1) {
      itemFood.removeAttribute("style", "display:block;");
      itemSize.removeAttribute("style", "display:block;");
    } else {
      itemFood.setAttribute("style", "display:inline-block;");
    }

    itemFood.addEventListener('input', function(){
    if (itemSize.getAttribute("style") == "display:block;" || itemFood.value == 1) {
      itemSize.removeAttribute("style", "display:block;")
    } else {
      itemSize.setAttribute("style", "display:inline-block;")
    }
   });
  });
});
