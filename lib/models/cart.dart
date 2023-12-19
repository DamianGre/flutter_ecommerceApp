import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier{

  List<Shoe> shoeShop = [
    Shoe(
        name: 'Fake Freak',
        price: '200',
        description: 'Best fake shoes ever!',
        imagePath: "lib/images/shoe1.png"),
    Shoe(
        name: 'Fake-Zoom',
        price: '250',
        description: 'Air-Zoom best shoe.',
        imagePath: "lib/images/shoe2.png"),
    Shoe(
        name: 'Fake Fordan',
        price: '400',
        description: 'Fake Fordan for everyone',
        imagePath: "lib/images/shoe3.png"),
    Shoe(
        name: 'Fake360',
        price: '360',
        description: 'Fake360 You ccannot tell it is fake.',
        imagePath: "lib/images/shoe4.png"),
  ];

  List<Shoe> useCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
  return useCart;
  }

  void addItemToCart(Shoe shoe){
    useCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe){
    useCart.remove(shoe);
    notifyListeners();
  }
}