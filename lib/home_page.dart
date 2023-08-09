import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization_ex/localization_checker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("easy_localization".tr()),
        actions: [
          Tooltip(
              message: "change_language".tr(),
              child: IconButton(
                  onPressed: () {
                    LocalizationChecker.changeLanguge(context);
                  },
                  icon: const Icon(Icons.language)))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.red,
                  child: Text("personal_details".tr())),
              const SizedBox(height: 20),
              Card(
                shadowColor: Colors.lightBlue,
                color: Colors.lightBlue[50],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/girl.png",
                        width: 140,
                        height: 200,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${'name'.tr()}: ${"elsa".tr()}",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text("${'gender'.tr()}: ${"female".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"age".tr()}: 23",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                          Text("${"job".tr()}: ${"actress".tr()}",
                              style: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    boxname(),
                    boxname(),
                    boxname(),
                    boxname(),
                    boxname(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class boxname extends StatelessWidget {
  const boxname({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.cyan,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              children: [
                Icon(Icons.person),
                Text("personal_details".tr()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
