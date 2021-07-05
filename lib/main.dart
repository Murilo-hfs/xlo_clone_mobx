import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'app/app_widget.dart';
import 'app/stores/page_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setUplocators();
  runApp(AppWidget());
}

void setUplocators() {
  GetIt.I.registerSingleton(PageStore());
}

Future<void> initializeParse() async {
  await Parse().initialize('fpyRVFhwyiUSUqPbztIShECRpJopj3dre2SV7EwP',
      'https://parseapi.back4app.com/',
      clientKey: 'TS1Tvsr0Q3KTFPSt8yvaaEe28sLV4qNIkObZBtuC',
      autoSendSessionId: true,
      debug: true);
}
