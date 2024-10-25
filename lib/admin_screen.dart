import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Register complaints",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,),
      body: SafeArea(
        child: Column(

          children: [
            Expanded(
                child: summaryreportDatatable())

          ],

        ),
      ),
    );
  }
  summaryreportDatatable(){
    return  DataTable2(
        horizontalMargin: 5,
        columnSpacing: 5,
        minWidth: 1550,
        headingRowHeight: 30,
        headingRowColor: WidgetStateProperty.all(Colors.indigoAccent),
        border: TableBorder.all(width: 1, style: BorderStyle.solid,color: Colors.grey),
        columns: const [
          DataColumn2(label: Center(child: Text('S.No',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),size: ColumnSize.L,fixedWidth: 50),
          DataColumn2(label: Center(child: Text('Atm ID',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),size: ColumnSize.L,fixedWidth: 100),
          DataColumn2(label: Center(child: Text('Branch Name',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),size: ColumnSize.L,fixedWidth: 300),
          DataColumn2(label: Center(child: Text('Branch ID',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),size: ColumnSize.L,fixedWidth: 150),
          DataColumn2(label: Center(child: Text('Type',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),size: ColumnSize.L,fixedWidth: 150),
          DataColumn2(label: Center(child: Text('Complaint',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),size: ColumnSize.L,fixedWidth: 150),

        ],

        rows: List<DataRow>.generate(
            5,
                (index) => DataRow(cells: [
              DataCell(Center(child: Text("1"))),
              DataCell(Center(child: Text('ID0001'))),
              DataCell(Center(child: Text("Main Branch"))),
              DataCell(Center(child: Text('ID0001'))),
              DataCell(Center(child: Text('General'))),
              DataCell(Center(child: Text("Ac not working"))),
            ],))
    );
  }

}
