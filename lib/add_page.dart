import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPage createState() => _AddPage();
}

class _AddPage extends State<AddPage> {
//  final List<String> _classList = ['안드로이드', '웹', '임베디드', '디자인', '운동'];
  //final List<DropdownItem> _classList = [DropdownItem('안드로이드', Icon(Icons.android)), DropdownItem('WEB', Icon(Icons.code))];

  List<DropdownItem> _items = DropdownItem.getItem();
  List<DropdownMenuItem<DropdownItem>> _classList;
  DropdownItem _currentSelectedItem;

  @override
  void initState() {
    _classList = buildDropdownMenuItems(_items);
    _currentSelectedItem = _classList[1].value;
    super.initState();
  }

  List<DropdownMenuItem<DropdownItem>> buildDropdownMenuItems(List _items) {
    List<DropdownMenuItem<DropdownItem>> items = List();
    for (DropdownItem item in _items) {
      items.add(
        DropdownMenuItem(
          value: item,
          child: Text(item.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(DropdownItem selectedCompany) {
    setState(() {
      _currentSelectedItem = selectedCompany;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true, // when keyboard displayed then make can scrolling on the scaffold
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.send),
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        child:  Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: DropdownButton(
                value: _currentSelectedItem,
                items: _classList.map(
                      (val) {
                    return DropdownMenuItem<DropdownItem>(
                      value: val.value,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          val.value.icon,
                          Text(val.value.name),
                        ],
                      ),
                    );
                  },
                ).toList(),
                onChanged: onChangeDropdownItem,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '제목',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '부제목',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '내용',
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class DropdownItem {
  String name;
  Icon icon;

  DropdownItem(this.name, this.icon);

  static List<DropdownItem> getItem() {
    return <DropdownItem>[
      DropdownItem('안드로이드', Icon(Icons.android, color: Colors.greenAccent)),
      DropdownItem('웹', Icon(Icons.code, color: Colors.blue,)),
      DropdownItem('디자인', Icon(Icons.color_lens, color: Colors.orange,)),
      DropdownItem('임베디드', Icon(Icons.memory, color: Colors.green,)),
      DropdownItem('운동', Icon(Icons.directions_run, color: Colors.deepOrangeAccent,)),
    ];
  }
}
