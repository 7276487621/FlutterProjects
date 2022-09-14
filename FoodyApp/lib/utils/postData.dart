class PostFood{

  String imagePath;
  String imageName;
  int price;

  PostFood({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
      });

}


final List<PostFood> postFoods =[
  PostFood(
      imagePath:'images/burger.jpg',
      imageName:'Burger',
      price: 10

  ),

  PostFood(
    imagePath:'images/pizza.jpg',
    imageName:'Pizza',
    price: 15
  ),

  PostFood(
    imagePath:'images/rollmania.jpg',
    imageName:'Rolls',
    price: 11
  ),

  PostFood(
    imagePath:'images/sandwitchhub.jpg',
    imageName:'Sandwitch',
    price: 8
  ),

  PostFood(
    imagePath:'images/thali.jpg',
    imageName:'Thali',
    price: 20
  ),
  PostFood(
      imagePath:'images/mexican.jpg',
      imageName:'Mexican',
      price: 17
  )
];

class BurgerCategory{
  String imagePath;
  String imageName;
  int price;

  BurgerCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
  });
}


final List<BurgerCategory> burgerCategory = [
  BurgerCategory(
      imagePath:'images/burgerImages/chikenBurger.jpg',
      imageName:'ChikenBurg',
      price: 12
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/PaneerRoyalBurger.jpg',
      imageName:'RoyalBurger',
      price: 10
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/cheezBurger.jpg',
      imageName:'CheezBurger',
      price: 7
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/Nuggets.jpg',
      imageName:'Nuggets',
      price: 15
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/plainBurger.jpg',
      imageName:'PlainBurger',
      price: 5
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/veggieBurger.jpeg',
      imageName:'VeggieBurger',
      price: 8
  ),
];

class PizzaCategory{
  String imagePath;
  String imageName;
  int price;

  PizzaCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
  });
}



final List<PizzaCategory> pizzaCategory = [
  PizzaCategory(
      imagePath:'images/pizzaImages/chicken.jpg',
      imageName:'ChikenPizza',
      price: 20
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/farmhousepizza.jpg',
      imageName:'FarmHouse',
      price: 15
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/goldenCorn.jpg',
      imageName:'GoldenCorn',
      price: 10
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/margarita.jpg',
      imageName:'Margarita',
      price: 13
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/peperPizza.png',
      imageName:'PeperPizza',
      price: 18
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/veggies.jpg',
      imageName:'VeggiePizza',
      price: 12
  ),
];

class RollsCategory{
  String imagePath;
  String imageName;
  int price;

  RollsCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
  });
}

List<RollsCategory> rollsCategory = [
  RollsCategory(
      imagePath:'images/rollsImages/allootikkiroll.jpg',
      imageName:'AlloTikki',
      price: 7
  ),
  RollsCategory(
      imagePath:'images/rollsImages/chikenroll.jpg',
      imageName:'ChickenRoll',
      price: 10
  ),
  RollsCategory(
      imagePath:'images/rollsImages/omletroll.jpg',
      imageName:'OmletRoll',
      price: 5
  ),
  RollsCategory(
      imagePath:'images/rollsImages/paneerroll.jpg',
      imageName:'PaneerRoll',
      price: 7
  ),
  RollsCategory(
      imagePath:'images/rollsImages/rajmaroll.jpg',
      imageName:'RajmaRoll',
      price: 6
  ),
  RollsCategory(
      imagePath:'images/rollsImages/vegpennerroll.jpg',
      imageName:'VegRoll',
      price: 4
  ),
];

class SandwitchCategory{
  String imagePath;
  String imageName;
  int price;

  SandwitchCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
  });
}


List<SandwitchCategory> sandwitchCategory = [
  SandwitchCategory(
      imagePath:'images/sandwitchImages/choclatesandwitch.jpg',
      imageName:'Choclate',
      price: 8
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/cornsandwitch.jpeg',
      imageName:'Corn',
      price: 10
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/garliksandwitch.jpg',
      imageName:'Garlik',
      price: 6
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/grillSandwitch.jpg',
      imageName:'Grill',
      price: 8
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/tandoorisandwitch.jpg',
      imageName:'Tandoori',
      price: 12
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/vegsandwitch.jpg',
      imageName:'VegSand',
      price: 4
  ),
];

class ThaliCategory{
  String imagePath;
  String imageName;
  int price;

  ThaliCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
  });
}

List<ThaliCategory> thaliCategory = [
  ThaliCategory(
      imagePath:'images/thaliImages/bihari.jpg',
      imageName:'Bihari',
      price: 8
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/kashmiri.jpg',
      imageName:'Kashmiri',
      price: 10
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/maha.jpg',
      imageName:'Maharashtra',
      price: 6
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/panjabi.jpg',
      imageName:'Panjabi',
      price: 8
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/rajasthani.jpg',
      imageName:'Rajasthani',
      price: 12
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/south.jpg',
      imageName:'SouthIndia',
      price: 4
  ),
];

class MexicanCategory{
  String imagePath;
  String imageName;
  int price;

  MexicanCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
  });
}

List<MexicanCategory> mexicanCategory = [
  MexicanCategory(
      imagePath:'images/mexicanImages/nachos.jpg',
      imageName:'Nachos',
      price: 3
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/paneertacos.jpg',
      imageName:'pannerTacos',
      price: 6
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/quesadila.jpg',
      imageName:'Queasadila',
      price: 8
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/tacos.jpg',
      imageName:'Tacos',
      price: 5
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/tamales.jpeg',
      imageName:'Tamales',
      price: 11
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/vegtacos.jpg',
      imageName:'VegTacos',
      price: 2
  ),
];