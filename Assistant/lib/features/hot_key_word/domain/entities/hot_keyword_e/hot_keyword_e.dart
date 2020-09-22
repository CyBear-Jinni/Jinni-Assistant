import 'package:Assistant/features/hot_key_word/infrastructure/repositories/hot_keyword_r/hot_keyword_r.dart';

class HotKeywordE {
  HotKeyWordR _hotKeyWordRepository;

  HotKeywordE() {
    _hotKeyWordRepository = HotKeyWordR();
  }

  Stream<bool> startListeningToVoiceCommandForever() async* {
    yield* _hotKeyWordRepository.startListeningToVoiceCommandForever();
  }
}
