import 'package:bbs_app/components/myScaffold.dart';
import 'package:bbs_app/page/topic/topicList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabs = ['全部', '第一幅'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  drawButton() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                '登录',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MyScaffold(
      appBar: AppBar(
        // Here we take the value from the HomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('wefaef'),
        bottom: TabBar(
          isScrollable: tabs.length > 4,
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.black54, width: 2),
              insets: EdgeInsets.symmetric(horizontal: 40)),
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          tabs: tabs.map((item) => Tab(text: item)).toList(),
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: <Widget>[drawButton(),drawButton()],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((item) => TopicListPage(item)).toList(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
