const pokeapi = new PokeApi;
const ui = new UI;
const searchPokemon = document.getElementById('searchPoke');
const pokename = document.getElementById('pokeName');

searchPokemon.addEventListener('click', (e) => {
  const text = pokename.value;
  if(text !== '' || text.value > 808){
    pokeapi.getPokemon(text)
      .then(data => {
        console.log(data.stats);
        if(data.stats === 404) {
          ui.showMessage("Pokemon Not Found", "alert alert-danger");
        }else {
          ui.showProfile(data.profileData);
          ui.setBackgroundColor(data.profileData);  
        }
      })
  } else {
    ui.showMessage("Please Enter Pokemon Name or Number", "alert alert-danger");
  }
  e.preventDefault();
})
