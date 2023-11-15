import 'package:flutter/material.dart';

class MyProductPage extends StatelessWidget {
  const MyProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    String pay = "0";
    String taxes = "0";
    String deliveryCharges = "0";
    String total = "0";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:
            Text("My Product", style: Theme.of(context).textTheme.titleLarge),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(
            Icons.heart_broken,
            color: Colors.red,
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          const SizedBox(
            height: 270,
            width: 400,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image(image: AssetImage("assets/images/borgir.jpg")),
            ),
          ),
          Column(
            children: <Widget>[
              const SizedBox(height: 240),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                child: Container(
                  height: 500,
                  width: 500,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("Payment Success",
                          style: Theme.of(context).textTheme.titleLarge),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("From Bank",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black)),
                          Text("Star Bank",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Pay",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black)),
                          Text(pay,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Taxes",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black)),
                          Text(taxes,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Delivery Charges",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black)),
                          Text(deliveryCharges,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.black))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Total",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      color: Colors.black, fontSize: 24.0)),
                          Text(total,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      color: Colors.black, fontSize: 24.0))
                        ],
                      ),
                      OutlinedButton(
                          style: Theme.of(context).outlinedButtonTheme.style,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/order_page");
                          },
                          child: Text("NOW TRACK",
                              style: Theme.of(context).textTheme.displayMedium))
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            left: 170,
            top: 220,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Color.fromRGBO(46, 162, 96, 1),
              child: Icon(Icons.check),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(247, 100, 101, 1),
        onPressed: () {},
        child: const Icon(Icons.check_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
            ),
            label: "Shops"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: "Menu"),
      ]),
    );
  }
}
