

List<Drink> testlista =[Drink("9879", "https://www.thecocktaildb.com/images/media/drink/dms3io1504366318.jpg", "Vodka Sunrise", {"Vodka":"4cl", "Orange juice":"10cl", "Soda water": null}, "Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw", true)];


class Drink {
  
  String id;
  String image;
  String name;
  Map ingredients;
  String descreption;
  bool alcohol;
  bool favorite = false;

  Drink(this.id, this.image, this.name, this.ingredients, this.descreption, this.alcohol,);
}