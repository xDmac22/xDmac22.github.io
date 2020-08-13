const products = new Products;
const ui = new UI;
const storage = new Storage;

let totalAmount = 0;
const candm = document.getElementById('candm');
const cakes = document.getElementById('cakes');

document.addEventListener('DOMContentLoaded', () => {

  products.getProducts()
    .then(data => {
      ui.showProducts(data.product)
    })
  
  const items= storage.getData();
  
  items.forEach((item) => {
    ui.addToBasket(item.item, item.price);

    totalAmount += item.price;
  })

  ui.updateTotal(totalAmount);
  
});

cakes.addEventListener('click', () => {

  products.getProducts()
    .then(data => {
      ui.showProducts(data.product)
    })
  
});

candm.addEventListener('click', () => {

  products.getProducts()
    .then(data => {
      ui.showProducts(data.cookie)
    })
})

addEventListener('click', (e) => {
  const target = (e.target);
  let priceString;

  if(target.className === 'add-product'){

    const priceRaw = target.previousElementSibling.textContent;
    priceString = parseInt(priceRaw.toString().slice(2, 5));

    const productName = target.parentElement.previousElementSibling.previousElementSibling.textContent.trim();

    ui.addToBasket(productName, priceString);
    const item = new Products(productName, priceString);
    storage.setData(item);

    totalAmount += priceString;
    e.preventDefault();

  }else if (target.className === 'delete-product'){
    
    const item = target.parentElement.parentElement;
    const bprice = -Math.abs(parseInt(item.querySelector('#brought-price').innerHTML));
    if(item.className === 'item-spec') {
      ui.removeFromBasket(item);
      storage.removeData(item.firstChild.innerHTML);
      totalAmount += bprice;
    }
    e.preventDefault();
  }
  
  ui.updateTotal(totalAmount);

  
})
