import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radiooo/controller_for_changestate.dart';

class radioobutton extends StatefulWidget {
  const radioobutton({Key? key}) : super(key: key);

  @override
  State<radioobutton> createState() => _radioobuttonState();
}

class _radioobuttonState extends State<radioobutton> {
  @override
  Widget build(BuildContext context) {
    print("hello");
    final valuechange=Provider.of<controlller>(context,listen:false);
    return Scaffold(
      body: Center(
        child: Container(
width:MediaQuery.of(context).size.width,
          height: 80,
          decoration:BoxDecoration(
            border: Border.all(
                width: 5,color: Colors.purple),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
          Expanded(
          child: Text("Gender",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
        ),
              Row(
        children: [
          Consumer<controlller>(builder: (context,value,child){
            return  Radio(
            value: "Male",
            groupValue: value.selectedvalue,
            onChanged: (val) {
              value.onchangegender(val);
            },
            activeColor: Colors.purple,
            fillColor: MaterialStateProperty.all(Colors.purple),
            );
          },

          ),
          Text("Male", style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
        ],
      ),
      Row(

        children: [
          Consumer<controlller>(
            builder: (
            context,value,child
            )
            {
              return Radio(
                value: "Female",
                groupValue: value.selectedvalue,
                onChanged: (val) {
value.onchangegender(val);
                },
                activeColor: Colors.purple,
                fillColor: MaterialStateProperty.all(Colors.purple),
              );
      },

          ),
          Text("Female", style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
        ],
      ),

   ]
          ),
    )
    ,

    )
    );
  }
}
