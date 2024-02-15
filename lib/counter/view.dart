import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CounterPage extends StatelessWidget {
  CounterPage({Key? key}) : super(key: key);

  final logic = Get.put(CounterLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text('my first aplication',),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Column(
              children: [
                Obx(() {
                  return Text(
                    '${logic.counter.value}',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium,
                  );
                }),
                TextButton(onPressed: logic.incrementCounter,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 100,),
                TextButton(onPressed: logic.decrementCounter,
                  child: const Icon(Icons.minimize),
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}
