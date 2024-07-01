

import 'package:flutter/material.dart';


class CcPage extends StatefulWidget
{
  const CcPage({super.key});   

  @override
  State<CcPage> createState() {
    return _CcPageState();
  } 
}

class _CcPageState extends State<CcPage>
{

    double result = 0.0 ;
    final TextEditingController textEditingController = TextEditingController();    
   
  @override
  Widget build(BuildContext context)
  {
    return   Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Center(
          child:  Text(
                    " CURRENCY CONVERTER " , 
                      style:  TextStyle(
                        fontSize: 20 , 
                        color: Colors.white,
                        fontWeight: FontWeight.bold , 
                        backgroundColor: Colors.black , 
                        letterSpacing: 6),
                  ),
        ),
      ),
      body:  Center(
        
        child:   Column(
        
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                Padding(
                 padding: const EdgeInsets.only(bottom: 50 , top: 50),
                 child:  Text(
                      "${result != 0 ? result.toStringAsFixed(2) : result = 0} INR",
                      style:  const TextStyle(
                              fontSize: 40 , 
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold , 
                              letterSpacing: 5),
                    ),
               ),
                   Padding(
                 padding: const EdgeInsets.only(bottom: 50 , left: 30 , right : 30),
                 child: TextField
                 (
                    controller: textEditingController ,
                   style: const TextStyle 
                   ( 
                     fontSize: 20 , 
                     color: Colors.green 
                   
                   ) ,
                 
                   decoration: const InputDecoration
                   (
                     
                     hintText: "Enter Amount in USD" , 
                     hintStyle: TextStyle(color: Colors.grey),
                     prefixIcon: Icon(Icons.attach_money_sharp),
                     prefixIconColor: Colors.green,
                     filled: true,
                     fillColor: Colors.white10,
                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                     focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                   ),
                 
                   keyboardType: const  TextInputType.numberWithOptions(decimal: true , signed: false ),
                   
                  ),
               ),
              
              
                ElevatedButton
                (
                  onPressed:  () {
                    setState(() {
                    
                    result = double.parse(textEditingController.text)*83.19;
                      
                    });
                  },
                  style: const ButtonStyle
                  (
                    elevation: WidgetStatePropertyAll(30),
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white)
                  ),
                  child: const Padding
                  (
                    padding: EdgeInsets.all(5),
                    
                    child: Text
                    (
                        " Convert " ,
                        style:  TextStyle
                        (
                                  fontSize: 25 , 
                                  letterSpacing: 5,
                        ),
                        
                    ),
                    
                  ),
                  
                ),

                 const Padding(
                  padding: EdgeInsets.only(top : 200),
                  child: Text("Github : https://github.com/PINAK-CORE"),
                  
                  
                )
              
          ],
        ),
      )
    );
  }
}
