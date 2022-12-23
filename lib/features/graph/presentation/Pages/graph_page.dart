// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_it/get_it.dart';
import 'package:wallet/features/graph/domain/entity/Quote.dart';
import 'package:wallet/features/graph/presentation/Pages/home_page.dart';

import '../Controllers/quote_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

const List<String> list = <String>['msft', 'PETR4.SA', 'TSLA', 'NVDA'];
const List<String> list2 = <String>[
  'open',
  'close',
  'high',
  'low',
];

class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  late final QuoteController _controller;
  late String name;
  late String id;
  bool favorite = false;
  String dropdownValue = list.first;
  String dropdownValue2 = list2.first;
  @override
  void initState() {
    super.initState();
    _controller = GetIt.I.get<QuoteController>();
    _controller.fetchData("msft", "open");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: Text("Graph")),
      body: AnimatedBuilder(
        animation: Listenable.merge([_controller.posts, _controller.inLoader]),
        builder: (_, __) => _controller.inLoader.value
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.grey[400],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 300,
                      width: 400,
                      child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        title: ChartTitle(text: 'quote and timestamp'),
                        series: <ChartSeries<dynamic, String>>[
                          LineSeries<dynamic, String>(
                              dataSource: _controller.posts.value,
                              xValueMapper: (dynamic quotes, _) =>
                                  quotes[1].toString(),
                              yValueMapper: (dynamic quotes, _) => quotes[0])
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              _controller.fetchData(value!, dropdownValue2);
                              dropdownValue = value!;
                            });
                          },
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        DropdownButton<String>(
                          value: dropdownValue2,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              _controller.fetchData(dropdownValue, value!);
                              dropdownValue2 = value!;
                            });
                          },
                          items: list2
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )
                      ],
                    ),
                    Center(
                        child: SfCircularChart(
                            borderColor: Colors.black,
                            title: ChartTitle(text: 'timestamp and quote'),
                            legend: Legend(isVisible: true),
                            series: <PieSeries<dynamic, String>>[
                          PieSeries<dynamic, String>(
                              explode: true,
                              explodeIndex: 0,
                              dataSource: _controller.posts.value,
                              xValueMapper: (dynamic data, _) =>
                                  data[0].toString(),
                              yValueMapper: (dynamic data, _) => data[1],
                              dataLabelSettings:
                                  DataLabelSettings(isVisible: true)),
                        ]))
                  ],
                ),
              ),
      ),
    );
  }
}
