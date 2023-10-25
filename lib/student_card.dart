import 'package:flutter/material.dart';
import 'student.dart';

class StudentCard extends StatefulWidget {
  Student std;
  StudentCard(this.std, {super.key});
  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('${widget.std.name} details: '),
                content: Text(widget.std.toString()),
                actions: [
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text('ok'),
                  ),
                ],
              );
            },
        );
      },
      onDoubleTap: () {
        print(widget.std.id);
      },
      onHorizontalDragEnd: (details) {
        print('you dragged ${widget.std.name} !!!');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children:  [
                      const Text('Name: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Text(widget.std.name,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const Text('Id: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Text(widget.std.id,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network('https://www.pngmart.com/files/22/User-Avatar-Profile-PNG.png',width: 50,height: 50,),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          widget.std.att = !widget.std.att;
                        });
                      },
                      icon: Icon(
                        widget.std.att ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}