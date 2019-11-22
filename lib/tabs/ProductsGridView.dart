import 'package:flutter_raashin/models/countries_model.dart';
import 'package:flutter_raashin/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';



class ProductsGridView extends StatelessWidget {
//  final List<Products> productsList;
  final List<Country> productsList;

  ProductsGridView({Key key, this.productsList}) : super(key: key);

//  Card getStructuredGridCell(Country country) {
//    return new Card(
//        elevation: 1.5,
//        child: new Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisSize: MainAxisSize.min,
//          verticalDirection: VerticalDirection.down,
//          children: <Widget>[
//            new FadeInImage.memoryNetwork(
//              image: country.flag.replaceAll('https', 'http'),
//              placeholder: kTransparentImage),
//            ),
//            new Padding(
//              padding: EdgeInsets.only(left: 10.0),
//              child: new Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  new Text(country.name),
//                  new Text(country.nativeName),
//                  new Text(country.capital),
//                ],
//              ),
//            )
//          ],
//        ));
//  }





  GestureDetector getStructuredGridCell(Country products) {
    // Wrap the child under GestureDetector to setup a on click action
    return GestureDetector(
      onTap: () {
        print("onTap called->>"+products.name);
      },
      child: Card(
          elevation: 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Center(child: CircularProgressIndicator()),
                  Center(
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
//                      image: 'https://skytoptrial.000webhostapp.com/images/'+products.image,
                      image: products.flag,
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(products.name),
              ),
//              Center(
//                child: Text(
//                    name,
//                  //style: TextStyle(fontWeight: FontWeight.bold),
//                ),
//
//              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      primary: true,
      crossAxisCount: 2,
      childAspectRatio: 0.80,
      padding: const EdgeInsets.all(1.0),
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      shrinkWrap: true,
      physics: ScrollPhysics(), //to disable gridviews' scrolling
      children: List.generate(productsList.length, (index) {
        return getStructuredGridCell(productsList[index]);
      }),
    );
  }
}



//          child: GridView.count(
//            primary: true,
//            padding: const EdgeInsets.all(1.0),
//            childAspectRatio: 0.85,
//            mainAxisSpacing: 1.0,
//            crossAxisSpacing: 1.0,
//            shrinkWrap: true,
//            physics: ScrollPhysics(), //to disable gridviews' scrolling
//            // Create a grid with 2 columns. If you change the scrollDirection to
//            // horizontal, this produces 2 rows.
//            crossAxisCount: 2,
//            // Generate 100 widgets that display their index in the List.
//            children: <Widget>[
//              getStructuredGridCell("Facebook", "facebook.png"),
//              getStructuredGridCell("Twitter", "twitter.png"),
//              getStructuredGridCell("Instagram", "instagram.png"),
//              getStructuredGridCell("Linkedin", "linked_in.png"),
//              getStructuredGridCell("Google Plus", "google_plus.png"),
//              Container(
//                height: 50,
//                child: Stack(
//                  children: <Widget>[
//                    Center(child: CircularProgressIndicator()),
//                    Center(
//                      child: FadeInImage.memoryNetwork(
//                        placeholder: kTransparentImage,
//                        image: 'https://picsum.photos/250?image=9',
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Container(
//                height: 50,
//                child: Stack(
//                  children: <Widget>[
//                    Center(child: CircularProgressIndicator()),
//                    Center(
//                      child: FadeInImage.memoryNetwork(
//                        placeholder: kTransparentImage,
//                        image: 'https://picsum.photos/250?image=9',
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ],
//          ),//ENDS HERE GRIDVIEW
