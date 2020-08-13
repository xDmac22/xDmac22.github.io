class Products {
  constructor(item, price) {
    this.item = item;
    this.price = price;
  }
 
  async getProducts() {
    
    const productProfile = await fetch('json/cake.json');
    const cookieProfile = await fetch('json/cookies.json');

    const product = await productProfile.json();
    const cookie = await cookieProfile.json();

    return {
      product,
      cookie
    }
  }
}