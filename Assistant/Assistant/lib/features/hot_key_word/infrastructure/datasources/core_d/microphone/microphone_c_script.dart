import 'dart:io';

import 'package:Assistant/core/shared_variables.dart';

class Microphone {
  Future<ProcessResult> listenToVoiceCommand() async {
    return await Process.run(
        SharedVariables.getProjectRootDirectoryPath() +
            '/scripts/cScripts/demo',
        [SharedVariables.getProjectRootDirectoryPath()]);
  }
}
