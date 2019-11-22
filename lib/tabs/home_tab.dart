import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final Widget placeholder = Container(color: Colors.grey);

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //User input pauses carousels automatic playback
    final CarouselSlider touchDetectionDemo = CarouselSlider(
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      pauseAutoPlayOnTouch: Duration(seconds: 3),
      items: imgList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                width: 1000.0,
              ),
            ),
          );
        },
      ).toList(),
    );

    return ListView(
      children: <Widget>[
        Container(
          child: touchDetectionDemo,
        ),
        Container(
          height: 50,
          color: Colors.blue[500],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.red[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.orange[500],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.blue[500],
          child: const Center(child: Text('Entry D')),
        ),
        Container(
          height: 50,
          color: Colors.grey[500],
          child: const Center(child: Text('Entry E')),
        ),
        Container(
          height: 50,
          color: Colors.green[500],
          child: const Center(child: Text('Entry F')),
        ),
        Container(
          height: 50,
          color: Colors.black26,
          child: const Center(child: Text('Entry G')),
        ),
        Container(
          height: 50,
          color: Colors.indigo[500],
          child: const Center(child: Text('Entry H')),
        ),
        Container(
          height: 50,
          color: Colors.lightBlue[500],
          child: const Center(child: Text('Entry I')),
        ),
        Container(
          height: 50,
          color: Colors.yellow[500],
          child: const Center(child: Text('Entry J')),
        ),
        Container(
          height: 50,
          color: Colors.blueGrey[500],
          child: const Center(child: Text('Entry K')),
        ),
        Container(
          height: 50,
          color: Colors.yellow[500],
          child: const Center(child: Text('Entry L')),
        ),
        Container(
          height: 50,
          color: Colors.grey[500],
          child: const Center(child: Text('Entry M')),
        ),
        Container(
          height: 50,
          color: Colors.orange[500],
          child: const Center(child: Text('Entry N')),
        ),
        Container(
          height: 50,
          color: Colors.red[500],
          child: const Center(child: Text('Entry O')),
        ),
        Container(
          height: 50,
          color: Colors.blue[500],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.red[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.orange[500],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.blue[500],
          child: const Center(child: Text('Entry D')),
        ),
        Container(
          height: 50,
          color: Colors.grey[500],
          child: const Center(child: Text('Entry E')),
        ),
        Container(
          height: 50,
          color: Colors.green[500],
          child: const Center(child: Text('Entry F')),
        ),
        Container(
          height: 50,
          color: Colors.black26,
          child: const Center(child: Text('Entry G')),
        ),
        Container(
          height: 50,
          color: Colors.indigo[500],
          child: const Center(child: Text('Entry H')),
        ),
        Container(
          height: 50,
          color: Colors.lightBlue[500],
          child: const Center(child: Text('Entry I')),
        ),
        Container(
          height: 50,
          color: Colors.yellow[500],
          child: const Center(child: Text('Entry J')),
        ),
        Container(
          height: 50,
          color: Colors.blueGrey[500],
          child: const Center(child: Text('Entry K')),
        ),
        Container(
          height: 50,
          color: Colors.yellow[500],
          child: const Center(child: Text('Entry L')),
        ),
        Container(
          height: 50,
          color: Colors.grey[500],
          child: const Center(child: Text('Entry M')),
        ),
        Container(
          height: 50,
          color: Colors.orange[500],
          child: const Center(child: Text('Entry N')),
        ),
        Container(
          height: 50,
          color: Colors.red[500],
          child: const Center(child: Text('Entry O')),
        ),

//        Container(
//
//            child: Expanded(
//                child: GridView.count(
//                  shrinkWrap: true,
//                  scrollDirection: Axis.vertical,
//                  // Create a grid with 2 columns. If you change the scrollDirection to
//                  // horizontal, this produces 2 rows.
//                  crossAxisCount: 2,
//                  // Generate 100 widgets that display their index in the List.
//                  children: List.generate(100, (index) {
//                    return Center(
//                      child: Text(
//                        'Item $index',
//                        style: Theme.of(context).textTheme.headline,
//                      ),
//                    );
//                  }),
//                )
//
//        )
//
//
//
//
//        ),
      ],

//      child: Column(
//        // center the children
////        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//          Padding(
//            padding: EdgeInsets.symmetric(vertical: 5.0),
//            child: touchDetectionDemo,
//          ),
//          Padding(
//            padding: EdgeInsets.symmetric(vertical: 5.0),
//            child: Column(
//              children: [
//                Text("Products"),
//              ],
//            ),
//          ),
//
//        ],
//      ),
    );
  }
}
