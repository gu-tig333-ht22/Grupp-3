

List<Drink> testlista =[Drink("9879", "image", "name", {"ingredients":"4cl"}, "descreption", true)];


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