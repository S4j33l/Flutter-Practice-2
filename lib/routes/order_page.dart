import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPageNotifier = ValueNotifier<int>(0);
    String orderQuantity = "0";
    String price = "0";
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [Icon(Icons.search, color: Colors.black)],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            const FittedBox(
              fit: BoxFit.fill,
              child: Image(
                image: AssetImage("assets/images/borgir.jpg"),
                height: 200,
                width: 300,
              ),
            ),
            CirclePageIndicator(currentPageNotifier: currentPageNotifier, itemCount: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Cheeseburger",
                    style: Theme.of(context).textTheme.titleLarge),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    color: const Color.fromRGBO(232, 232, 232, 1),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.remove)),
                        Text(orderQuantity,
                            style: Theme.of(context).textTheme.bodyMedium),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    height: 40,
                    width: 120,
                    color: const Color.fromRGBO(232, 232, 232, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.alarm,
                          color: Colors.green,
                        ),
                        Text(
                          " 16-20 mins",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 5.0),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    height: 40,
                    width: 120,
                    color: const Color.fromRGBO(232, 232, 232, 1),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(Icons.star, color: Colors.yellow),
                          Text(
                            "(4.8)",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5.0),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    height: 40,
                    width: 120,
                    color: const Color.fromRGBO(232, 232, 232, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.location_pin,
                          color: Colors.green,
                        ),
                        Text(
                          "2.7 km",
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
                "Lorem ipsum dolor sit amet. Eum odit minus sit provident possimus et voluptas totam et dolor veritatis ea temporibus consequatur et voluptatem minima et enim quia. Quo Quis quia rem amet voluptas id eius animi.",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.normal)),
            const SizedBox(height: 15.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Ingredients",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            const SizedBox(height: 10.0),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                          image: AssetImage("assets/images/burger sauce.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                          image: AssetImage("assets/images/ground beef.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child:
                          Image(image: AssetImage("assets/images/onions.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                          image: AssetImage("assets/images/lettuce.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                          image: AssetImage("assets/images/pickles.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                          image: AssetImage("assets/images/burger sauce.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                          image: AssetImage("assets/images/ground beef.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child:
                          Image(image: AssetImage("assets/images/onions.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                          image: AssetImage("assets/images/lettuce.jpg"))),
                  SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                          image: AssetImage("assets/images/pickles.jpg"))),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Total",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal)),
                    ),
                    Text(price,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 20.0)),
                  ],
                ),
                OutlinedButton(
                    style: Theme.of(context).outlinedButtonTheme.style,
                    onPressed: () {
                      Navigator.of(context).pushNamed("/my_product_page");
                    },
                    child: Text("ADD TO CART",
                        style: Theme.of(context).textTheme.displayMedium))
              ],
            )
          ],
        ),
      ),
    );
  }
}
