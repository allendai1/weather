import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:flutter/material.dart';
import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_app_flutter/at_app_flutter.dart' show AtEnv;
import 'package:at_utils/at_logger.dart' show AtSignLogger;
import 'package:path_provider/path_provider.dart'
    show getApplicationSupportDirectory;

// * Once the onboarding process is completed you will be taken to this screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * Getting the AtClientManager instance to use below
    final String atSignPico = "@distinctiveblue";
    final String key = "temperature";
    AtClientManager atClientManager = AtClientManager.getInstance();
    final AtClient atClient = atClientManager.atClient;
    final AtKey atKey = AtKey.public(
        key, namespace: "group5", sharedBy: atSignPico).build();
    int temp;

    void getWeather() async {
      GetRequestOptions options = GetRequestOptions();
      options.bypassCache = true;
      AtValue atValue = await atClient.get(atKey, getRequestOptions: options);
      final String value = atValue.value;
      print(value);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Center(
<<<<<<< HEAD
          child: [ElevatedButton(
            onPressed: getWeather,
            child: const Text("Get weather!"),
          ),
            SizedBox(
              width: 18,
              child: Text('$temp'),
            )
          ]
=======
        child: ElevatedButton(
          onPressed: () async {
            final String atSignPico = "@distinctiveblue";
            final String key = "test";

            AtClientManager atClientManager = AtClientManager.getInstance();
            final AtClient atClient = atClientManager.atClient;
            // final AtKey atKey = AtKey.public(key, namespace: "group5", sharedBy: atSignPico).build();
            // final AtKey atKey = AtKey.public(key, sharedBy: atSignPico).build();
            final AtKey atKey = AtKey.public(key, sharedBy: atSignPico).build();

            print(atKey);
            final AtValue atValue = await atClient.get(atKey);
            // final String value = atValue.value;
            // print("test!");


          },
          child: const Text("Test!"),
        )
>>>>>>> cfb47fdfb90cd68d904bda526f55dec9fbcf1f23
      ),
    );
  }
}
