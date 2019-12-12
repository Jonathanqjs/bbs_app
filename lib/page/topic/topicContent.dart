import 'package:bbs_app/components/myScaffold.dart';
import 'package:bbs_app/page/topic/components/userInfoHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'components/topicReply.dart';

class TopicContentPage extends StatefulWidget {
  @override
  _TopicContentPageState createState() => _TopicContentPageState();
}

class _TopicContentPageState extends State<TopicContentPage> {
  RefreshController _refreshController = RefreshController();
  TextEditingController _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('话题'),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('分享'),
                ),
                PopupMenuItem(
                  child: Text('感谢'),
                )
              ];
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          SmartRefresher(
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
                                bottom: BorderSide(
                                    width: 0.5, color: Colors.grey[300]))),
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
                                bottom: BorderSide(
                                    width: 0.5, color: Colors.grey[300]))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                        child: Text(
                          '阿尔法为发安文丰位符阿文发文发文案发文案费瓦非阿文发文发 ',
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  );
                } else {
                  return TopicReply(
                    author: '123',
                    underAuthor: 'feaf',
                    topRightWidget: Container(),
                    bottomRightWidget: Container(),
                    content: 'ewafaef',
                    floor: index,
                  );
                }
              },
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () async {
                return await showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return Container(
                        height: 250 + MediaQuery.of(context).viewInsets.bottom,
                        padding: EdgeInsets.only(left: 20, right: 10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '回复主题',
                                  style: TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  icon: Icon(Icons.send),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: TextField(
                                  controller: _editingController,
                                  maxLines: 99,
                                  decoration: InputDecoration(
                                      hintText: '请输入内容',
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none),
                                  keyboardType: TextInputType.multiline,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Icon(Icons.comment),
            ),
          )
        ],
      ),
    );
  }
}
