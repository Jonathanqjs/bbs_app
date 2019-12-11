import 'package:bbs_app/components/myScaffold.dart';
import 'package:flutter/material.dart';

class TopicPublishPage extends StatefulWidget {
  @override
  _TopicPublishPageState createState() => _TopicPublishPageState();
}

class _TopicPublishPageState extends State<TopicPublishPage> {
  TextEditingController _titleEditingController;
  FocusNode focusNode = FocusNode();
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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_circle_outline),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _titleEditingController,
                style: TextStyle(
                  fontSize: 16,
                ),
                focusNode: focusNode,
                cursorWidth: 2,
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    labelText: '标题',
                    labelStyle: TextStyle(
                        color:
                            focusNode.hasFocus ? Colors.black87 : Colors.black),
                    hintStyle: TextStyle(color: Colors.blue),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87, width: 2),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87, width: 1),
                    )),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    maxLines: 99,
                    cursorColor: Colors.black54,
                    cursorWidth: 2,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: '请输入内容', focusedBorder: InputBorder.none),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
