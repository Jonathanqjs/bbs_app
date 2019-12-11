import 'package:bbs_app/components/topicView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TopicListPage extends StatefulWidget {
  final String block;

  TopicListPage(this.block) : super();

  @override
  _TopicListPageState createState() => _TopicListPageState();
}

class _TopicListPageState extends State<TopicListPage> {
  RefreshController _refreshController = RefreshController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SmartRefresher(
          enablePullDown: true,
          enablePullUp: true,
          controller: _refreshController,
          header: WaterDropHeader(),
          footer: CustomFooter(
            builder: (BuildContext context, LoadStatus mode) {
              Widget body;
              if (mode == LoadStatus.idle) {
                body = Text("上拉加载");
              } else if (mode == LoadStatus.loading) {
                body = CupertinoActivityIndicator();
              } else if (mode == LoadStatus.failed) {
                body = Text("加载失败！点击重试！");
              } else if (mode == LoadStatus.canLoading) {
                body = Text("松手,加载更多!");
              } else {
                body = Text("没有更多数据了!");
              }
              return Container(
                height: 55.0,
                child: Center(child: body),
              );
            },
          ),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return TopicView(
                author: 'ef',
                blockName: 'fef',
                dateTime: 'fef',
                title: 'eff',
                onPressed: (){
                  Navigator.pushNamed(context,'topicContent');
                },
              );
            },
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: FloatingActionButton(
            child: Text('+',style: TextStyle(fontSize: 22),),
            onPressed: (){
              Navigator.pushNamed(context, 'topicPublish');
            },
          ),
        )
      ],
    );
  }
}
