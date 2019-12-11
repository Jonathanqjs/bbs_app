import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopicView extends StatelessWidget {
  final String author;
  final String dateTime;
  final String blockName;
  final String title;
  TopicView(
      {@required this.author,
      @required this.dateTime,
      @required this.title,
      @required this.blockName})
      : super();
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
          width: MediaQuery.of(context).size.width,
          constraints: BoxConstraints(minHeight: 80),
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                  bottom: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.black45,
                      width: 0.5))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            author,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '$dateTime   评论10',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        alignment: Alignment.center,
                        child: Text(
                          blockName,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.1),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
