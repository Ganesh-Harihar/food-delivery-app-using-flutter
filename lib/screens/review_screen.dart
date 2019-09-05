import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/C5103AQF9BmR3rrtWlg/profile-displayphoto-shrink_200_200/0?e=1568246400&v=beta&t=Kdsvhe00MSXhQknwZyTRMvZ4ai4x27RFdhZtcrnEGTs'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: deviceSize.width * .45),
                        child: Text(
                          'Ganesh Harihar',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                          height: 35,
                          width: deviceSize.width * .7,
                          child: Text("dfskjhgusadfgusdyg",style: TextStyle(fontSize: 10),maxLines: 3,)),
                      // Container(
                      //     height: 20,
                      //     width: deviceSize.width * .7,
                      //     child: TextField(
                      //       decoration: InputDecoration(
                      //           contentPadding: EdgeInsets.only(top: .1),
                      //           hintText: 'Comment',
                      //           hintStyle: TextStyle(fontSize: 10)),
                      //     )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]);
  }
}
