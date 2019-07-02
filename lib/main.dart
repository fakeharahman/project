import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

main() {
  runApp(MyApp());
}

String project = 'My Project',
    proj_no = '123',
    insp_no = '123',
    dwg_no = '232',
    locaton = 'abc',
    item_to_be_inspected = 'abc \n cdf \n \n \n\n\ncfff\n\n\n\n\n\n\n\n',
    hold_point = 'abc \n bsd',
    next_operation = 'nos',
    raised_to = 'abc',
    description = 'Description';
bool active_status = false;

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
          appBar: AppBar(
            title: Text('RFI Form'),
          ),
          body: TheText()),
    );
  }
}

class TheText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: (ListView(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Project Name :',
              style: TextStyle(fontSize: 16),
            ),
            Text(project,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Project number :',
              style: TextStyle(fontSize: 16),
            ),
            Text(proj_no,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Inspection number :',
              style: TextStyle(fontSize: 16),
            ),
            Text(insp_no,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'DWG number :',
              style: TextStyle(fontSize: 16),
            ),
            Text(dwg_no,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Location :',
              style: TextStyle(fontSize: 16),
            ),
            Text(locaton,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ]),
          Divider(),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Item to be inspected :',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              item_to_be_inspected,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              textAlign: TextAlign.justify,
            ),
          ]),
          Divider(),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Hold Point/ Witness Point :',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              hold_point,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              textAlign: TextAlign.justify,
            ),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Operation Name :',
              style: TextStyle(fontSize: 16),
            ),
            Text(next_operation,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Raised to :',
              style: TextStyle(fontSize: 16),
            ),
            Text(raised_to,
                style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ]),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Active Status',
              style: TextStyle(fontSize: 16),
            ),
            if (active_status == true)
              Text('Active',
                  style: TextStyle(
                      fontSize: 16, color: CupertinoColors.activeOrange))
            else
              Text('Closed',
                  style: TextStyle(fontSize: 16, color: Colors.green))
          ]),
          Divider(),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(children: [
                      Image.asset('assets/download.jpeg'),
                      Center(child: Text(description))
                    ]);
                  });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset('assets/download.jpeg'),
            ),
          ),
          Center(
            child: Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          )
        ],
      )),
    );
  }
}
