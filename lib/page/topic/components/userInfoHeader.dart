import 'package:flutter/material.dart';

class UserInfoHeader extends StatelessWidget {
  final String author;
  final String underAuthor;
  final Widget rightWidget;
  UserInfoHeader({this.author, this.underAuthor, this.rightWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                Icons.account_circle,
                size: 30,
              ),),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(author,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  Text(underAuthor,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w400))
                ],
              )
            ],
          ),
          rightWidget
        ],
      ),
    );
  }
}
