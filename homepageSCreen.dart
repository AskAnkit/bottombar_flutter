import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);
  final _controller = Get.put(ControllerHomePage());

  List storeData = [];

  @override
  Widget build(BuildContext context) {
    // _controller.getData();
    return Scaffold(
        appBar: AppBar(
          title: Text("helloo"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              /*  Container(
              height: 60,
              width: double.infinity,
              child: ListView.builder(itemBuilder: (BuildContext context, int index) {

               ControllerHomePage

              },),
            )*/
              Expanded(
                child: Obx(
                  () => Container(
                    child: ListView.builder(
                      itemCount: _controller.groupList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          onTap : ()=> _controller.groupList[index].title="ankit gandu ",

                          leading: Stack(children: [
                            CircleAvatar(
                                child: _controller.groupList[index].avatar),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: _controller.groupList[index].selectedItems
                                    ? const Icon(
                                        Icons.done,
                                        size: 20,
                                        color: Colors.white,
                                      )
                                    : Container(
                                        child: const Text(
                                          "yes ",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ))
                          ]),
                          title: Text(
                              _controller.groupList[index].title.toString()),
                          subtitle: Text(
                              _controller.groupList[index].subtitle.toString()),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
