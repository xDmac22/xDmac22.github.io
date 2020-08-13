class Storage {
  constructor() {
    this.items;
    this.price;
  }

  getData() {
    let items;
    if(localStorage.getItem('items') === null){
      items = [];
    }else {
      items = JSON.parse(localStorage.getItem('items'));
    }

    return items;
  }

  setData(item) {

    const items = this.getData();

    items.push(item);

    localStorage.setItem('items', JSON.stringify(items));

  }

  removeData(itemName) {

    const items = this.getData();

    items.forEach((item, index) => {
      if(item.item === itemName) {
        items.splice(index, 1)
      }
    });

    localStorage.setItem('items', JSON.stringify(items));
  }
}