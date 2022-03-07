import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/cart.dart';
import 'package:getx_state_management/controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Items',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Obx(() => Text(
                    c.sum.toString(),
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(height: 20),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () => Get.back(),
                  child: const Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
