class UI {
  constructor() {
    this.profile = document.getElementById('profile');
    this.color = {
      fire: '#FDDFDF',
      grass: '#DEFDE0',
      electric: '#FCF7DE',
      water: '#DEF3FD',
      ground: '#f4e7da',
      rock: '#d5d5d4',
      fairy: '#fceaff',
      poison: '#98d7a5',
      bug: '#f8d5a3',
      dragon: '#97b3e6',
      psychic: '#eaeda1',
      flyin: '#F5F5F5',
      fighting: '#E6E0D4',
      normal: '#F5F5F5'
    };
  }
  
  showProfile(name) {
    this.profile.innerHTML = `
      <div class="card card-body mb-3">
        <div class="row">
          <div class="col-md-4">
            <img class="img-fluid" src="https://pokeres.bastionbot.org/images/pokemon/${name.id}.png">
          </div>
          <div class="col-md-8">
            <span class="badge badge-primary">Height: ${name.height}</span>
            <span class="badge badge-primary">Weight: ${name.weight}</span>
            <br><br>
            <ul class="list-group">
              <li class="list-group-item">No: ${name.id}</li>
              <li class="list-group-item">Name: ${name.name}</li>
              <li class="list-group-item">Type: ${name.types[0].type.name}</li>
            </ul>
          </div>
        </div>
      </div>
    `;
  }

  showMessage(message, className){
    this.clearAlert();
    const div = document.createElement('div');
    div.className = className;
    div.appendChild(document.createTextNode(message));
    const container = document.querySelector('.searchContainer');
    const card = document.querySelector('.search');
    container.insertBefore(div, card);
    setTimeout(() => {
      this.clearAlert();
    }, 3000);
  }

  showError(message, className) {
    this.clearAlert();
    const div = document.createElement('div');
    div.className = className;
    div.appendChild(document.createTextNode(message));
    const container = document.querySelector('.searchContainer');
    const card = document.querySelector('.search');
    container.insertBefore(div, card);
    setTimeout(() => {
      this.clearAlert();
    }, 3000);
  }

  clearAlert() {
    const message = document.querySelector('.alert');
    if (message) {
      message.remove();
    }
  }

  setBackgroundColor(name) {
    let type = `${name.types[0].type.name}`;
    let pokeContainer = document.getElementById('searchContainer');
    console.log(type);
    let self = this.color
    if (this.color.hasOwnProperty(type)) {
      let bColor = this.color[type];
      console.log(bColor);
      document.body.style.backgroundColor = bColor;
      
    }
  }

}