import 'package:flutter/material.dart';

class GoldScreen extends StatefulWidget {
  GoldScreen({super.key});

  @override
  State<GoldScreen> createState() => _GoldScreenState();
}

class _GoldScreenState extends State<GoldScreen> {
  TextEditingController goldprice=TextEditingController();

  TextEditingController tola=TextEditingController();

  TextEditingController gram=TextEditingController();

  TextEditingController ratti=TextEditingController();

  TextEditingController points=TextEditingController();

  double Rupees=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gold Calculator'),
        backgroundColor: Colors.yellowAccent.shade100,
      ),
      backgroundColor: Colors.blueGrey,
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //......Enter Gold Price......Row1;
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Text('Enter Gold Price',style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
                Container(height: 30, width: 180,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(color: Colors.black)
                  ),
                  child:
                  TextFormField(
                    controller: goldprice,
                  ),
                ),
              ],),
            ),
            //......Enter Gold Quantity......Row2;
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 20,bottom: 30),
                child: Text('Enter Gold Quantity',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,color: Colors.redAccent),),
              )
            ],),
            //......Enter Tola.......Row3;
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Enter Tola:',style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(height: 25,width: 150,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(color: Colors.black)
                    ),
                    child:
                    TextFormField(
                      controller: tola,
                      decoration: InputDecoration(
                      ),
                    )
                ),
              )
            ],),
            SizedBox(height: 30,),
            //.......Enter Gram.....Row4;
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 6),
                child: Text('Enter Gram:',style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(height: 25,width: 150,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(color: Colors.black)
                      ),
                      child:
                      TextFormField(
                        controller: gram,
                      )
                  ),
                ),
              )
            ],),
            SizedBox(height: 30,),
            //......Enter Ratti.....Row5;
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 5),
                child: Text('Enter Ratti:',style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(height: 25,width: 150,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(color: Colors.black)
                      ),
                      child:
                      TextFormField(
                        controller: ratti,
                      )
                  ),
                ),
              )
            ],),
            SizedBox(height: 30,),
            //.....Enter Points......Row6;
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 6),
                child: Text('Enter Points:',style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child:
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(height: 25,width: 150,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(color: Colors.black)
                      ),
                      child:
                      TextFormField(
                        controller: points,
                      )
                  ),
                ),
              )
            ],),
            Padding(
              padding: const EdgeInsets.only(bottom:  0,top: 80),
              child: FloatingActionButton(onPressed: (){
                double result1= double.parse(goldprice.text)*int.parse(tola.text);
                double result2=double.parse(goldprice.text)/10;
                double result3= result2*double.parse(gram.text);
                double result4= result1+result3;
                double result5= result2/6;
                double result6= result5*double.parse(ratti.text);
                double result7= result4+result6;
                double result8= result2/12;
                double result9= result8*double.parse(points.text);
                double result10= result9+result7;
                Rupees=result10;
                setState(() {

                });
              },
                  backgroundColor: Colors.orange.shade300,
                  child:
                  Icon(Icons.calculate,color: Colors.black,size: 40,)
              ),
            ),
            SizedBox(height: 80,),
            Text('Total Rs:=$Rupees',style: TextStyle(fontSize: 20,color: Colors.orange),),

          ],),
      ),
    );
  }
}
