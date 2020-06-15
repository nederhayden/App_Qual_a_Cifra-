import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 100,
            left: 100,
            child: DragTarget(
              builder: (context, List<int> candidateData, rejectedData) {
                if (accepted) {
                  return Container(
                    child: Center(
                        child: Text(
                      'Teste 2',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  );
                } else {
                  return Container(
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      border: Border.all(),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  );
                }
              },
              onWillAccept: (data) {
                print('1');
                return true;
              },
              onAccept: (data) {
                print('2');
                accepted = true;
              },

            ),
          ),
          Positioned(
            top: 100,
            left: 200,
            child: Draggable(
              data: 1,
              childWhenDragging: Container(
                child: Text(
                  '',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                width: 80,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  border: Border.all(),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              feedback: Container(
                child: Center(
                    child: Text(
                  'Teste 2',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
                width: 80,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              child: Container(
                      child: Center(
                          child: Text(
                        'Teste 2',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
