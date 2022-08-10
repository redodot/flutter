import 'package:flutter/material.dart';

class Addproduct extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(DateFormat.yMMMMd().format(DateTime.now())
                      style: subHeadingStyle,
                      ),
                      Text("Today",
                      style: HeadingStyle,
                      )
                    ],
                  ),
                ),
                MyButton(label: "+Add Product", onTap: ()=>null)


              ],
            ),
          ),
        ],
      ),
    ),
  }
}

_addTaskbar(){
  return 
}

