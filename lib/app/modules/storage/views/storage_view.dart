import 'package:dirbbox/app/constant/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';

import '../controllers/storage_controller.dart';

class StorageView extends GetView<StorageController> {
  const StorageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage Details'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_rounded))
        ],
      ),
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 150,
                  child: PieChart(
                    dataMap: controller.dataMap,
                    chartValuesOptions: ChartValuesOptions(
                      showChartValues: false,
                    ),
                    colorList: [
                      Color(0xFF4CE364),
                      Color(0xFF567DF4),
                      Color(0xFF22215B),
                      Color(0xFFFFC700),
                      ],
                    ringStrokeWidth: 50,
                    legendOptions: LegendOptions(
                      showLegends: false,
                      showLegendsInRow: false
                    ),
                    chartType: ChartType.ring,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text("Available",
              style: TextStyle(
                fontSize: 20,
                color: appBlue
              ),),
              Text("43.36 GB",
              style: TextStyle(
                fontSize: 24,
                color: appBlue,
                fontWeight: FontWeight.bold
              ),),
              Text("Total 128 GB",
              style: TextStyle(
                fontSize: 20,
                color: appBlue
              ),),
              const SizedBox(height: 30),
              ListTile(
                leading: Image.asset("assets/icon/blue.png"),
                title: Text("Design Files",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: appBlue
                ),),
                subtitle: Text('38.66 GB',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: appBlue.withOpacity(0.6)
                ),),
                trailing: Container(
                  width: 120,
                  child: LinearPercentIndicator(
                    percent: 0.6,
                    padding: EdgeInsets.all(0),
                    animation: true,
                    barRadius: Radius.circular(5),
                    animationDuration: 1000,
                    progressColor: appBlue,
                    backgroundColor: Colors.grey,
                    isRTL: true,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/icon/yellow.png"),
                title: Text("Images",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: appBlue
                ),),
                subtitle: Text('24.80 GB',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: appBlue.withOpacity(0.6)
                ),),
                trailing: Container(
                  width: 120,
                  child: LinearPercentIndicator(
                    percent: 0.4,
                    padding: EdgeInsets.all(0),
                    animation: true,
                    barRadius: Radius.circular(5),
                    animationDuration: 1000,
                    progressColor: appYellowChart,
                    backgroundColor: Colors.grey,
                    isRTL: true,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/icon/green.png"),
                title: Text("Video",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: appBlue
                ),),
                subtitle: Text('12.60 GB',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: appBlue.withOpacity(0.6)
                ),),
                trailing: Container(
                  width: 120,
                  child: LinearPercentIndicator(
                    percent: 0.33,
                    padding: EdgeInsets.all(0),
                    animation: true,
                    barRadius: Radius.circular(5),
                    animationDuration: 1000,
                    progressColor: appGreenChart,
                    backgroundColor: Colors.grey,
                    isRTL: true,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/icon/ocean.png"),
                title: Text("Documents",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: appBlue
                ),),
                subtitle: Text('60.57 GB',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: appBlue.withOpacity(0.6)
                ),),
                trailing: Container(
                  width: 120,
                  child: LinearPercentIndicator(
                    percent: 0.7,
                    padding: EdgeInsets.all(0),
                    animation: true,
                    barRadius: Radius.circular(5),
                    animationDuration: 1000,
                    progressColor: appBlueOceanChart,
                    backgroundColor: Colors.grey,
                    isRTL: true,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/icon/orange.png"),
                title: Text("Others",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: appBlue
                ),),
                subtitle: Text('2.01 GB',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: appBlue.withOpacity(0.6)
                ),),
                trailing: Container(
                  width: 120,
                  child: LinearPercentIndicator(
                    percent: 0.17,
                    padding: EdgeInsets.all(0),
                    animation: true,
                    barRadius: Radius.circular(5),
                    animationDuration: 1000,
                    progressColor: appOrange,
                    backgroundColor: Colors.grey,
                    isRTL: true,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              TextButton(
              onPressed: (){}, 
              child: Text("Export Details",
               style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: appBlue
                ),))
            ],
          ),
        ),
      )
    );
  }
}
