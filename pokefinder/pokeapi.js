class PokeApi{
  constructor(){
    this.pokeNumber = 1;
  }

  async getPokemon(name){
    const profileRespo = await fetch(`https://pokeapi.co/api/v2/pokemon/${name}
    `)
    if(profileRespo.status === 404){
      const stats = 404;
      console.log("WTF")

      return {
        stats 
      }
    }else {
      const profileData = await profileRespo.json();

      return {
        profileData
      }
    }

  }
}