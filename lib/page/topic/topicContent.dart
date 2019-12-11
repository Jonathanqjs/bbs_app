import 'package:bbs_app/components/myScaffold.dart';
import 'package:bbs_app/page/topic/components/userInfoHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TopicContentPage extends StatefulWidget {
  @override
  _TopicContentPageState createState() => _TopicContentPageState();
}

class _TopicContentPageState extends State<TopicContentPage> {
  RefreshController _refreshController = RefreshController();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('话题'),
      ),
      body: SmartRefresher(
        enablePullDown: false,
        enablePullUp: true,
        controller: _refreshController,
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.grey))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          UserInfoHeader(
                            author: 'fe',
                            underAuthor: 'efef',
                            rightWidget: Container(),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 15, left: 7),
                              child: Text(
                                'fefefaef',
                                style: TextStyle(fontSize: 18),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.grey))),
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                    child: Text(
                      'feafefeaf',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              );
            } else {
              return Text('$index');
            }
          },
        ),
      ),
    );
  }
}
