import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/login_page.dart';
import 'package:mini_project/textbox_widget.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {

  var idcontroller=TextEditingController();
  var brnchidcontroller=TextEditingController();
  var brnchnamecontroller=TextEditingController();
  var remarkscontroller=TextEditingController();
  String type="";

  final countries = ['Argentina', 'Australia', 'Brazil', 'Canada', 'China', 'France', 'Germany', 'India', 'Indonesia', 'Italy'];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("Complaint Register Form",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.blue,),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(

                  controller: idcontroller,
                  onChanged: (val){
                       if(val.length>=5){
                         brnchidcontroller.text="ID0001";
                         brnchnamecontroller.text="Main Branch";
                       }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ATM ID',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.amber, width: 4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelText: 'ATM ID'
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(child: textBoxWidget("Branch Name","",false,brnchnamecontroller,(){}),),
                    SizedBox(width: 8,),
                    Expanded(child: textBoxWidget("Branch Code","",false,brnchidcontroller,(){}),),
                  ],
                ),
                SizedBox(height: 16,),

                Container(
                  padding: EdgeInsets.all(8),
                  height:75,
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.modalBottomSheet(
                      showSelectedItems: true,
                    ),
                    items: [
                      "General",
                      "Transection",
                      "ATM ",
                      "Security",
                      "Maintenance",
                    ],
                    onChanged:(value) {
                      type=value!;
                    } ,
                    selectedItem: "Complaint Type..",
                  ),
                ),
                SizedBox(height: 16,),
                textBoxWidget1("Type your complaint here...",remarkscontroller),

              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(

        height: 50,
        margin: const EdgeInsets.all(10),

        child:  ElevatedButton(
          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
          onPressed: () {
              if(idcontroller.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Please enter ATM ID'),
                ));
              }else if(type.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Please select complaint type..'),
                ));
              }else if(remarkscontroller.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Please enter remarks..'),
                ));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Complaint register successfully..",style: TextStyle(color: Colors.white),),
                  backgroundColor: Colors.green,
                ));
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              }
          },
          child: Center(
            child: Text('BOOK',style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }


}
