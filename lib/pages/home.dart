import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getApp/controllers/home.controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX App"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: GetBuilder<HomeController>(
        id: "counter",
        init: this._controller,
        builder: ( _ ) => Center(
          child: Text(_.counter.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {this._controller.increment();},
        child: Icon(Icons.add),
      )
    );
  }
}