import 'package:flutter/material.dart';
import 'dart:math';

import 'package:lit_starfield/view/lit_starfield_container.dart';


class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  String num1="",num2="",sop="";
  bool clk= false;


  final tval=TextEditingController();

  String date=DateTime.now().toString();

  ClickNum(String val)
  {
    if(clk)
    {
      num2 +=val;
      tval.text=num2;
    }
    else{
      num1 +=val;
      tval.text=num1;
    }
  }

  OpClick(String val, String selOp)
  {
    num1=tval.text;
    tval.text=val;
    sop=selOp;
    clk=true;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Text("$date",style: TextStyle(fontSize: 16,),textAlign: TextAlign.center,),
        leadingWidth: 100,
        title: Center(child: Text("CALCULATOR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu,size: 30,),
          ),
        ],
      ),
      body: Stack(
        children:[
          LitStarfield(),
          Container(
          height: double.infinity,
          width: double.infinity,


          child: Column(
            children: [
              SizedBox(height: 30,),

              Container(
                // height: 70,
                // width: 300,

                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  controller: tval,
                  decoration: InputDecoration(
                    fillColor: Colors.black45,
                    filled: true,
                  ),

                ),
              ),
              SizedBox(height: 10,),

              Container(
                height: 600,
                width: 500,
                decoration: BoxDecoration(
                 color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Expanded(
                  child: Column(
                    children: [

                      Row(

                        children: [

                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: (){
                                ClickNum('1');

                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('1',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: (){
                                ClickNum('2');

                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('2',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                ClickNum('3');

                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('3',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: (){
                                setState(() {
                                  tval.clear();
                                  num2="";
                                  num1="";
                                  sop="";
                                  clk=false;
                                });





                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent.shade100),

                                child: Text('AC',style: TextStyle(fontSize: 20)),),
                            ),
                          ),


                        ],
                      ),
                      Divider(

                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                ClickNum('4');
                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('4',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                ClickNum('5');

                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('5',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                ClickNum('6');

                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('6',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                OpClick('+','Add');
                              },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),backgroundColor: Colors.blueGrey,),

                                child: Text('+',style: TextStyle(fontSize: 40,color: Colors.red.shade100)),),
                            ),
                          ),


                        ],
                      ),
                      Divider(

                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                ClickNum('7');

                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('7',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                ClickNum('8');

                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('8',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                ClickNum('9');

                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),

                                child: Text('9',style: TextStyle(fontSize: 20)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                OpClick('-','minus');
                              },
                                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),backgroundColor: Colors.blueGrey,),

                                child: Text('-',style: TextStyle(fontSize: 40,color: Colors.red.shade100),),),
                            ),
                          ),


                        ],
                      ),
                      Divider(

                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: (){
                                if(clk)
                                { num2 +='0';
                                  tval.text=num2;
                                }else{
                                  num1+='0';
                                  tval.text=num1;
                                }
                              },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300,),
                                child: Text('0',style: TextStyle(fontSize: 20)),),

                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(
                                onPressed: (){
                                  double a=double.parse(num1);
                                  double b=double.parse(tval.text);
                                  double ans = 0;
                                if(sop=="Add")
                                  {
                                     ans= a + b;

                                  }
                                else
                                  if(sop=="minus")
                                  {
                                     ans= a - b;

                                  }
                                else
                                  if(sop=='div')
                                    {
                                       ans= a  / b;
                                    }
                                  else
                                    if(sop=="multiply")
                                      {
                                         ans= a * (b);
                                      }
                                  tval.text=ans.toString();
                                    num1 = ans.toString();
                                    num2 = '';
                                    clk = false;

                              },
                                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),backgroundColor: Colors.greenAccent.shade100,),

                                child: Text('=',style: TextStyle(fontSize: 30)),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                OpClick('/','div');
                              },
                                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),backgroundColor: Colors.blueGrey,),

                                child: Text('/',style: TextStyle(fontSize: 40,color: Colors.red.shade100),),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                OpClick('*','multiply');
                              },
                                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),backgroundColor: Colors.blueGrey,),

                                child: Text('*',style: TextStyle(fontSize: 40,color: Colors.red.shade100),),),
                            ),
                          ),

                        ],
                      ),
                      Divider(

                        color: Colors.red,
                      ),
                      Row(
                        children: [


                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child:  SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: (){
                                tval.text="√";
                                int a=int.parse(num1);
                                double ans=sqrt(a);
                                tval.text=ans.toString();
                                clk=true;

                              },
                                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),backgroundColor: Colors.blueGrey,),
                                child: Text('√',style: TextStyle(fontSize: 40,color: Colors.red.shade100)),),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: (){
                                int a=int.parse(tval.text);
                                if(a.isNegative)
                                  {
                                    tval.text=a.abs().toString();
                                  }
                                else{
                                  tval.text=(a*-1).toString();
                                }


                                clk=true;

                              },
                                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),backgroundColor: Colors.blueGrey,),
                                child: Text('+/-',style: TextStyle(fontSize: 20,color: Colors.red.shade100)),),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child:  SizedBox(
                              height: 80,
                              width: 80,
                              child: ElevatedButton(onPressed: ()
                              {
                                String mval=tval.text;

                                tval.text = mval.substring(0,mval.length-1);

                                },
                                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),backgroundColor: Colors.redAccent.shade100,),
                                child: Text('<<',style: TextStyle(fontSize: 30,)),),

                            ),
                          ),


                        ],
                      ),





                    ],
                  ),
                ),

              )

            ],
          ),
        ),]
      ),
    );
  }
}


//////////////////////////////////////////////////////
class LitStarfield extends StatelessWidget {
  const LitStarfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LitStarfieldContainer(
      animated: true,
      number: 500,
      velocity: 0.85,
      depth: 0.9,
      scale: 4,
      starColor: Colors.amber,
      backgroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black87,
            Colors.white,
            Colors.black87,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
