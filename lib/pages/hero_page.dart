import 'package:flutter/material.dart';
import 'package:layout_demo_flutter/layout_type.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';

class HeroHeader extends SliverPersistentHeaderDelegate {

  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  HeroHeader({
        @required this.expandedHeight,
        this.hideTitleWhenExpanded = true,
  });
  
  // final LayoutGroup layoutGroup;
  // final VoidCallback onLayoutToggle;
  // double maxExtent;
  // double minExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {

    final appBarSize = expandedHeight - shrinkOffset;
    // final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;


        return SizedBox(
          height: expandedHeight + expandedHeight / 2,
          child: Stack(
            children: [
              SizedBox(
                height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
                
                child: AppBar(
                  centerTitle: true,
                  // backgroundColor: Colors.green,



                  leading: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  elevation: 0.0,
                  title: Opacity(
                      opacity: hideTitleWhenExpanded ? 1.0 - percent : 1.0,
                      child: Text("MyMasjid")),

        flexibleSpace: Container(
          decoration: BoxDecoration(
             border: null,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                    Colors.deepPurple,
                    Colors.purple,
            ])          
         ),        
     )

                ),



              ),



 new Stack(
      children: <Widget>[
        // The containers in the background

 

        new Column(
          children: <Widget>[


                   


             new Container(
              height: MediaQuery.of(context).size.height * .30,
              
              // decoration: BoxDecoration(
              //   border: null,
              //   gradient: LinearGradient(
              //     colors: [
              //       Colors.deepPurple,
              //       Colors.purple,
              //     ],
              //   ),
              // ),


              child: Center(
                child: Text(
                  ' MyMasjid \nAhmad Kazim',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    decoration: TextDecoration.none,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            new Container(
              height: MediaQuery.of(context).size.height * .70,
              color: Colors.white,
            )
          ],
        ),

        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter

       new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .20,
              right: 20.0,
              left: 20.0),

          //size of application list box
          child: new Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: new Card(
                color: Colors.white,
                elevation: 4.0,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => null));

                    // Navigator.of(context).pushNamedAndRemoveUntil("/second",
                    // (route) => true,);// Function is executed on tap.
                  },
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      //first row of application list
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Newsfeed Application Button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.brightness_4,
                                  color: Colors.blue[700],
                                  size: 30.0,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Newsfeed',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),

                          //Charity Application Button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.all_inclusive,
                                  color: Colors.yellow[600],
                                  size: 30.0,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Charity',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),

                          //Asnaf Application Button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.people,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Asnaf',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.people,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Asnaf',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      //second row of application service
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Newsfeed Application Button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.brightness_4,
                                  color: Colors.blue[700],
                                  size: 30.0,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Newsfeed',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),

                          //Charity Application Button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.all_inclusive,
                                  color: Colors.yellow[600],
                                  size: 30.0,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Charity',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),

                          //Asnaf Application Button
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.people,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Asnaf',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ),

       


      ],
    ),


            ],
          ),
        ); 





   //Sampai sini

  }

      @override
      double get maxExtent => expandedHeight + expandedHeight / 2;

      @override
      double get minExtent => kToolbarHeight;

      @override
      bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
        return true;
      }
}

class HeroPage extends StatelessWidget implements HasLayoutGroup {
  HeroPage({Key key, this.layoutGroup, this.onLayoutToggle}) : super(key: key);
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;

  final List<String> assetNames = [
    'assets/brady-bellini-212790-unsplash.jpg',
    'assets/stefan-stefancik-105587-unsplash.jpg',
    'assets/simon-fitall-530083-unsplash.jpg',
    'assets/anton-repponen-99530-unsplash.jpg',
    'assets/kevin-cochran-524957-unsplash.jpg',
    'assets/samsommer-72299-unsplash.jpg',
    'assets/simon-matzinger-320332-unsplash.jpg',
    'assets/meng-ji-102492-unsplash.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _scrollView(context),
    );
  }

  Widget _scrollView(BuildContext context) {
    // Use LayoutBuilder to get the hero header size while keeping the image aspect-ratio
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: HeroHeader(
              expandedHeight: 200,

              // minExtent: 90.0, //size of transformation
              // maxExtent: 250.0,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  padding: _edgeInsetsForIndex(index),
                  child: Image.asset(
                    assetNames[index % assetNames.length],
                  ),
                );
              },
              childCount: assetNames.length * 2,
            ),
          ),
        ],
      ),
    );
  }


 

  EdgeInsets _edgeInsetsForIndex(int index) {
    if (index % 2 == 0) {
      return EdgeInsets.only(top: 4.0, left: 8.0, right: 4.0, bottom: 4.0);
    } else {
      return EdgeInsets.only(top: 4.0, left: 4.0, right: 8.0, bottom: 4.0);
    }
  }
}



    class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
      final double expandedHeight;
      final bool hideTitleWhenExpanded;

      CustomSliverDelegate({
        @required this.expandedHeight,
        this.hideTitleWhenExpanded = true,
      });

      @override
      Widget build(
          BuildContext context, double shrinkOffset, bool overlapsContent) {
        final appBarSize = expandedHeight - shrinkOffset;
        final cardTopPosition = expandedHeight / 2 - shrinkOffset;
        final proportion = 2 - (expandedHeight / appBarSize);
        final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
        return SizedBox(
          height: expandedHeight + expandedHeight / 2,
          child: Stack(
            children: [
              SizedBox(
                height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
                child: AppBar(
                  backgroundColor: Colors.green,
                  leading: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  elevation: 0.0,
                  title: Opacity(
                      opacity: hideTitleWhenExpanded ? 1.0 - percent : 1.0,
                      child: Text("Test")),
                ),
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                top: cardTopPosition > 0 ? cardTopPosition : 0,
                bottom: 0.0,
                child: Opacity(
                  opacity: percent,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30 * percent),
                    child: Card(
                      elevation: 20.0,
                      child: Center(
                        child: Text("Header"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      @override
      double get maxExtent => expandedHeight + expandedHeight / 2;

      @override
      double get minExtent => kToolbarHeight;

      @override
      bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
        return true;
      }
    }
