import 'package:bbs_app/page/topic/components/userInfoHeader.dart';
import 'package:flutter/material.dart';

class TopicReply extends StatelessWidget {
  final String author;
  final String underAuthor;
  final Widget topRightWidget;
  final Widget bottomRightWidget;
  final String content;
  final int floor;

  TopicReply(
      {this.author,
      this.underAuthor,
      @required this.topRightWidget,
      this.content,
      this.floor,@required this.bottomRightWidget})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: UserInfoHeader(
              author: author,
              underAuthor: underAuthor,
              rightWidget: topRightWidget,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.grey[300]))),
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text(content,style: TextStyle(fontSize: 16),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${floor.toString()}楼',
                      style: TextStyle(color: Colors.grey,fontSize: 11),
                    ),
                    bottomRightWidget
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
