//import 'package:flutter/material.dart';
//
//
//class FloatingNavigationBar extends StatefulWidget {
//  final List<FloatingNavigationBarItem> items;
//  final int currentIndex;
//  final int Function(int val) onTap;
//  final Color selectedBackgroundColor;
//  final Color selectedItemColor;
//  final Color unselectedItemColor;
//  final Color backgroundColor;
//  final double fontSize;
//  final double iconSize;
//
//  const FloatingNavigationBar(
//      {Key key,
//        @required this.items,
//        @required this.currentIndex,
//        @required this.onTap,
//        this.backgroundColor = Colors.black,
//        this.selectedBackgroundColor = Colors.white,
//        this.selectedItemColor = Colors.black,
//        this.iconSize = 24.0,
//        this.fontSize = 11.0,
//        this.unselectedItemColor = Colors.white})
//      : assert(items.length > 1),
//        assert(items.length <= 5),
//        assert(currentIndex <= items.length),
//        super(key: key);
//
//  @override
//  _FloatingNavbarState createState() => _FloatingNavbarState();
//}
//
//class _FloatingNavbarState extends State<FloatingNavigationBar> {
//  List<FloatingNavigationBarItem> get items => widget.items;
//
//  @override
//  Widget build(BuildContext context) {
//    return BottomAppBar(
//      color: Colors.transparent,
//      elevation: 0,
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//            child: Container(
//              padding: EdgeInsets.only(bottom: 8, top: 8),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(8),
//                color: widget.backgroundColor,
//              ),
//              width: double.infinity,
//              child: Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 8),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
//                  mainAxisSize: MainAxisSize.max,
//                  children: items.map((f) {
//                    return Expanded(
//                      child: Row(
//                        mainAxisSize: MainAxisSize.min,
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          AnimatedContainer(
//                            duration: Duration(milliseconds: 300),
//                            decoration: BoxDecoration(
//                                color: widget.currentIndex == items.indexOf(f) ? widget.selectedBackgroundColor : widget.backgroundColor, borderRadius: BorderRadius.circular(8)),
//                            child: InkWell(
//                              onTap: () {
//                                this.widget.onTap(items.indexOf(f));
//                              },
//                              borderRadius: BorderRadius.circular(8),
//                              child: Container(
//                                width: MediaQuery.of(context).size.width * (100 / (items.length * 100)) - 24,
//                                padding: EdgeInsets.all(4),
//                                child: Column(
//                                  mainAxisSize: MainAxisSize.max,
//                                  mainAxisAlignment: MainAxisAlignment.center,
//                                  crossAxisAlignment: CrossAxisAlignment.center,
//                                  children: <Widget>[
//                                    f.icon,
//                                    f.title
//                                  ],
//                                ),
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                    );
//                  }).toList(),
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//class FloatingNavigationBarItem {
//
//  Text title;
//  Widget icon;
//
//  FloatingNavigationBarItem(this.title, this.icon);
//
//}