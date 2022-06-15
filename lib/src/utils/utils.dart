class Utils {
  /// Fix for Flutter v3 backward compatibility
  /// https://docs.flutter.dev/development/tools/sdk/release-notes/release-notes-3.0.0#your-code
  static T? ambiguate<T>(T? value) => value;
}
