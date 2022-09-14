/*
class PostFood{

  String imagePath;
  String imageName;
  int price;
  String restaurantName;

  PostFood({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
    this.restaurantName = '',
      });

  static Map toMap(PostFood postFood)=>
    {
      'imagePath':postFood.imagePath,
      'imageName':postFood.imageName,
      'price':postFood.price,
      'restaurantName':postFood.restaurantName,
    };


}


final List<PostFood> postFoods =[
  PostFood(
      imagePath:'images/burger.jpg',
      imageName:'Burger',
      price: 10,
      restaurantName: 'Pokket Cafe',

  ),

  PostFood(
    imagePath:'images/pizza.jpg',
    imageName:'Pizza',
    price: 15,
    restaurantName: 'Domino\'s Pizza'
  ),

  PostFood(
    imagePath:'images/rollmania.jpg',
    imageName:'Rolls',
    price: 11,
    restaurantName: 'Rolls Mania'
  ),

  PostFood(
    imagePath:'images/sandwitchhub.jpg',
    imageName:'Sandwitch',
    price: 8,
    restaurantName: 'Trunky Twist',
  ),

  PostFood(
    imagePath:'images/thali.jpg',
    imageName:'Thali',
    price: 20,
    restaurantName: 'Kokan Kinara',
  ),
  PostFood(
      imagePath:'images/mexican.jpg',
      imageName:'Mexican',
      price: 17,
      restaurantName: 'Firangi Bake',
  )
];
*/

/*class BurgerCategory{
  String imagePath;
  String imageName;
  int price;
  String restaurantName;
  String foodType;

  BurgerCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
    this.restaurantName = '',
    this.foodType='',
  });

  static Map toMap(BurgerCategory burgerCategory)=>
      {
        'imagePath':burgerCategory.imagePath,
        'imageName':burgerCategory.imageName,
        'price':burgerCategory.price,
        'restaurantName':burgerCategory.restaurantName,
        'foodType':burgerCategory.foodType,
      };

}


final List<BurgerCategory> burgerCategory = [
  BurgerCategory(
      imagePath:'images/burgerImages/chikenBurger.jpg',
      imageName:'ChikenBurg',
      price: 12,
      restaurantName: 'Pokket Cafe',
      foodType:'Burger',
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/PaneerRoyalBurger.jpg',
      imageName:'RoyalBurger',
      price: 10,
      restaurantName:'Just Say Cafe',
      foodType:'Burger',
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/cheezBurger.jpg',
      imageName:'CheezBurger',
      price: 7,
      restaurantName: 'KNS',
      foodType:'Burger',
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/Nuggets.jpg',
      imageName:'Nuggets',
      price: 15,
      restaurantName: 'Cafe Creme',
      foodType:'Burger',
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/plainBurger.jpg',
      imageName:'PlainBurger',
      price: 5,
      restaurantName:'Trunky Twist',
      foodType:'Burger',
  ),
  BurgerCategory(
      imagePath:'images/burgerImages/veggieBurger.jpeg',
      imageName:'VeggieBurger',
      price: 8,
      restaurantName: 'KFC',
      foodType:'Burger',
  ),
];*/

/*class PizzaCategory{
  String imagePath;
  String imageName;
  int price;
  String restaurantName;
  String foodType;


  PizzaCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
    this.restaurantName = '',
    this.foodType = '',
  });

  static Map toMap(PizzaCategory pizzaCategory)=>
      {
        'imagePath':pizzaCategory.imagePath,
        'imageName':pizzaCategory.imageName,
        'price':pizzaCategory.price,
        'restaurantName':pizzaCategory.restaurantName,
        'foodType':pizzaCategory.foodType,
      };
}



final List<PizzaCategory> pizzaCategory = [
  PizzaCategory(
      imagePath:'images/pizzaImages/chicken.jpg',
      imageName:'ChikenPizza',
      price: 20,
      restaurantName: 'Domino\'s Pizza',
      foodType: 'Pizza',
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/farmhousepizza.jpg',
      imageName:'FarmHouse',
      price: 15,
      restaurantName:'Izletes Pizza',
      foodType: 'Pizza',
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/goldenCorn.jpg',
      imageName:'GoldenCorn',
      price: 10,
      restaurantName:'Pizza Hut',
      foodType: 'Pizza',
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/margarita.jpg',
      imageName:'Margarita',
      price: 13,
      restaurantName: 'KNS',
      foodType: 'Pizza',
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/peperPizza.png',
      imageName:'PeperPizza',
      price: 18,
      restaurantName:'NP Pizza',
      foodType: 'Pizza',
  ),
  PizzaCategory(
      imagePath:'images/pizzaImages/veggies.jpg',
      imageName:'VeggiePizza',
      price: 12,
      restaurantName:'Cafe 9',
      foodType: 'Pizza',
  ),
];*/

/*class RollsCategory{
  String imagePath;
  String imageName;
  int price;
  String restaurantName;
  String foodType;

  RollsCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
    this.restaurantName='',
    this.foodType ='',
  });

  static Map toMap(RollsCategory rollsCategory)=>
      {
        'imagePath':rollsCategory.imagePath,
        'imageName':rollsCategory.imageName,
        'price':rollsCategory.price,
        'restaurantName':rollsCategory.restaurantName,
        'foodType':rollsCategory.foodType,
      };
}

List<RollsCategory> rollsCategory = [
  RollsCategory(
      imagePath:'images/rollsImages/allootikkiroll.jpg',
      imageName:'AlloTikki',
      price: 7,
      restaurantName: 'Rolls Mania',
      foodType:'Rolls',
  ),
  RollsCategory(
      imagePath:'images/rollsImages/chikenroll.jpg',
      imageName:'ChickenRoll',
      price: 10,
      restaurantName:'Pizza Hut',
      foodType:'Rolls',
  ),
  RollsCategory(
      imagePath:'images/rollsImages/omletroll.jpg',
      imageName:'OmletRoll',
      price: 5,
      restaurantName:'Soft Kitchen',
      foodType:'Rolls',
  ),
  RollsCategory(
      imagePath:'images/rollsImages/paneerroll.jpg',
      imageName:'PaneerRoll',
      price: 7,
      restaurantName:'Roll and Momo',
      foodType:'Rolls',
  ),
  RollsCategory(
      imagePath:'images/rollsImages/rajmaroll.jpg',
      imageName:'RajmaRoll',
      price: 6,
      restaurantName:'GD\'s Golden Spoon',
      foodType:'Rolls',
  ),
  RollsCategory(
      imagePath:'images/rollsImages/vegpennerroll.jpg',
      imageName:'VegRoll',
      price: 4,
      restaurantName:'LunchBox-Meals and Thalis',
      foodType:'Rolls',
  ),
];*/

/*class SandwitchCategory{
  String imagePath;
  String imageName;
  int price;
  String restaurantName;
  String foodType;

  SandwitchCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
    this.restaurantName='',
    this.foodType ='',

  });

  static Map toMap(SandwitchCategory sandwitchCategory)=>
      {
        'imagePath':sandwitchCategory.imagePath,
        'imageName':sandwitchCategory.imageName,
        'price':sandwitchCategory.price,
        'restaurantName':sandwitchCategory.restaurantName,
      };
}


List<SandwitchCategory> sandwitchCategory = [
  SandwitchCategory(
      imagePath:'images/sandwitchImages/choclatesandwitch.jpg',
      imageName:'Choclate',
      price: 8,
      restaurantName: 'Sandwitch Express',
      foodType: 'Sandwitch',
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/cornsandwitch.jpeg',
      imageName:'Corn',
      price: 10,
      restaurantName:'Bombay Sandwitch & Grill',
      foodType: 'Sandwitch',
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/garliksandwitch.jpg',
      imageName:'Garlik',
      price: 6,
      restaurantName: 'Trunky Twist',
      foodType: 'Sandwitch',
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/grillSandwitch.jpg',
      imageName:'Grill Sandwitch',
      price: 8,
      restaurantName:'Kute\'s Kitchen',
      foodType: 'Sandwitch',
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/tandoorisandwitch.jpg',
      imageName:'Tandoori',
      price: 12,
      restaurantName:'Pokket Cafe',
      foodType: 'Sandwitch',
  ),
  SandwitchCategory(
      imagePath:'images/sandwitchImages/vegsandwitch.jpg',
      imageName:'VegSand',
      price: 4,
      restaurantName: 'Cafe Creme',
      foodType: 'Sandwitch',
  ),
];*/

/*
class ThaliCategory{
  String imagePath;
  String imageName;
  int price;
  String restaurantName;
  String foodType;



  ThaliCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
    this.restaurantName='',
    this.foodType='',
  });

  static Map toMap(ThaliCategory thaliCategory)=>
      {
        'imagePath':thaliCategory.imagePath,
        'imageName':thaliCategory.imageName,
        'price':thaliCategory.price,
        'restaurantName':thaliCategory.restaurantName,
      };
}

List<ThaliCategory> thaliCategory = [
  ThaliCategory(
      imagePath:'images/thaliImages/bihari.jpg',
      imageName:'Bihari',
      price: 8,
      restaurantName:'Rajshree\'s Kitchen',
      foodType: 'Thali',
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/kashmiri.jpg',
      imageName:'Kashmiri',
      price: 10,
      restaurantName:'Kajal\'s Kitchen',
      foodType: 'Thali',
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/maha.jpg',
      imageName:'Maharashtra',
      price: 6,
      restaurantName: 'Chatakdar Chavdar',
      foodType: 'Thali',
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/panjabi.jpg',
      imageName:'Panjabi',
      price: 8,
      restaurantName: 'Soft Kitchen',
      foodType: 'Thali',
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/rajasthani.jpg',
      imageName:'Rajasthani',
      price: 12,
      restaurantName:'Durga Hotel',
      foodType: 'Thali',
  ),
  ThaliCategory(
      imagePath:'images/thaliImages/south.jpg',
      imageName:'SouthIndia',
      price: 4,
      restaurantName: 'Hotel Janavi',
      foodType: 'Thali',
  ),
];
*/

/*class MexicanCategory{
  String imagePath;
  String imageName;
  int price;
  String restaurantName;
  String foodType;

  MexicanCategory({
    this.imagePath = '',
    this.imageName = '',
    this.price = 0,
    this.restaurantName = '',
    this.foodType='',
  });

  static Map toMap(MexicanCategory mexicanCategory)=>
      {
        'imagePath':mexicanCategory.imagePath,
        'imageName':mexicanCategory.imageName,
        'price':mexicanCategory.price,
        'restaurantName':mexicanCategory.restaurantName,
      };
}

List<MexicanCategory> mexicanCategory = [
  MexicanCategory(
      imagePath:'images/mexicanImages/nachos.jpg',
      imageName:'Nachos',
      price: 3,
      restaurantName: 'Margarita Deck',
      foodType: 'Mexican',
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/paneertacos.jpg',
      imageName:'pannerTacos',
      price: 6,
      restaurantName: 'Taco bell',
      foodType: 'Mexican',
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/quesadila.jpg',
      imageName:'Queasadila',
      price: 8,
      restaurantName: 'Picantos',
      foodType: 'Mexican',
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/tacos.jpg',
      imageName:'Tacos',
      price: 5,
      restaurantName:'Chili\'s',
      foodType: 'Mexican',
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/tamales.jpeg',
      imageName:'Tamales',
      price: 11,
      restaurantName: 'The Bridge',
      foodType: 'Mexican',
  ),
  MexicanCategory(
      imagePath:'images/mexicanImages/vegtacos.jpg',
      imageName:'VegTacos',
      price: 2,
      restaurantName: 'Laa Unico',
      foodType: 'Mexican',
  ),
];*/

