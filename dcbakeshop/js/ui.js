class UI {

  constructor() {
    this.productList = document.getElementById('product-list');
    this.basket = document.getElementById('basket');
    this.basketList = document.getElementById('basket-list');
    this.total = document.getElementById('total');
  }

  showProducts(products) {
    let output = '';

    products.forEach((product) => {
      output += `
        <div id="product-card" class="card">
          <div class="card-body card-top">
            <p class="card-text">${product.name}</p>
          </div>
          <img class="product-image" src="${product.image}" alt="Card image">
          <div class="card-body">
            <p id="product-price" class="card-text"><span>&#8369</span> ${product.price}</p>
            <a class="add-product" href="#">Add to Basket <i class="fas fa-shopping-basket"></i></a>
          </div>
        </div>
      `
      this.productList.innerHTML = output
    })
  }

  addToBasket(productName, price) {

    const row = document.createElement('tr');
    row.classList.add('item-spec');
    row.innerHTML = `<td>${productName}</td>
      <td id="brought-price">${price}</td>
      <td><a href="#" class="delete-product">X</a></td>
      `;
      
    this.basketList.appendChild(row);

  }

  updateTotal(amount) {
    this.total.innerHTML = amount;
  }

  removeFromBasket(item, price) {
    item.remove();
  }


}