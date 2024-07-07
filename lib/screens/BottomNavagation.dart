import 'package:flutter/material.dart';
import 'package:shopexpres/apis/models/listOfProductItem.dart';
import 'package:shopexpres/screens/cartScreen.dart';
import 'package:shopexpres/screens/productScreen.dart';

// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});

//   @override
//   State<BottomNavigation> createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void addToCart(Item product) {
//     setState(() {
//       cart.add(product);
//     });
//   }

//   void removeFromCart(Item product) {
//     setState(() {
//       cart.remove(product);
//     });
//   }

//   // ignore: prefer_final_fields
//   List<Widget> _widgetOptions() {
//     return [
//       ProductScreen(
//         cart: cart,
//         addToCart: addToCart,
//       ),
//       CartPage(
//         cart: cart,
//         removeFromCart: removeFromCart,
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     int cartItemCount = cart.length;
//     return Scaffold(
//       body: IndexedStack(index: _selectedIndex, children: _widgetOptions()),
//       bottomNavigationBar: Container(
//         height: 100,
//         decoration: BoxDecoration(
//             color: Colors.black,
//             shape: BoxShape.rectangle,
//             borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(5), topLeft: Radius.circular(5))),
//         child: BottomNavigationBar(

//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Container(
//                 child: Stack(
//                   children: <Widget>[
//                     Icon(Icons.shopping_basket_outlined),
//                     if (cart.isNotEmpty)
//                       Positioned(
//                         right: 0,
//                         child: Container(
//                           padding: EdgeInsets.all(1),
//                           decoration: BoxDecoration(
//                             color: Colors.red,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           constraints: BoxConstraints(
//                             minWidth: 18,
//                             minHeight: 18,
//                           ),
//                           child: Text(
//                             '${cartItemCount}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//               label: 'Cart',
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.amber[800],
//           onTap: _onItemTapped,
//         ),
//       ),
//     );
//   }
// }

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  List<Item> cart = []; // Assuming you have an Item class defined elsewhere
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void addToCart(Item product) {
    setState(() {
      cart.add(product);
    });
  }

  void removeFromCart(Item product) {
    setState(() {
      cart.remove(product);
    });
  }

  // ignore: prefer_final_fields
  List<Widget> _widgetOptions() {
    return [
      ProductScreen(
        cart: cart,
        addToCart: addToCart,
      ),
      CartPage(
        cart: cart,
        removeFromCart: removeFromCart,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    int cartItemCount = cart.length;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 235, 235),
      body: IndexedStack(index: _selectedIndex, children: _widgetOptions()),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home_outlined,
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Icon(
                          Icons.shopping_basket_outlined,
                          color:
                              _selectedIndex == 1 ? Colors.black : Colors.grey,
                        ),
                        if (cart.isNotEmpty)
                          Positioned(
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 18,
                                minHeight: 18,
                              ),
                              child: Text(
                                '$cartItemCount',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                      ],
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(
                        color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
