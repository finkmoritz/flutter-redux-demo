import 'package:reduxdemo/redux/app_state_action.dart';

class AppState {

  int count = 0;

  static AppState reduce(AppState state, dynamic action) {
    switch(action) {
      case AppStateAction.INCREMENT:
        state.count++;
        break;
      default:
        throw new Exception('Invalid action: $action');
    }
    return state;
  }
}
