import 'package:bbs_app/components/myScaffold.dart';
import 'package:flutter/material.dart';

class TopicPublishPage extends StatefulWidget {
  @override
  _TopicPublishPageState createState() => _TopicPublishPageState();
}

class _TopicPublishPageState extends State<TopicPublishPage> {
  TextEditingController _titleEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _titleEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('创作新主题'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _titleEditingController,
              style: TextStyle(),
              decoration: InputDecoration(
                  labelText: '标题',
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
