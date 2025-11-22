# Flutter 3.38 Demo

This project targets Flutter 3.38 features demo. 
- Widget Preview, 
- Dot shorthand
- Hot Reload for Flutter Web.

1) Widget Preview

- What it is: many IDEs (Android Studio / IntelliJ / VS Code) provide a small in-editor preview of a widget so you can see rendered output without launching the whole app.
  - How to use it:
    - Make sure you have the latest Flutter and Dart plugins installed in your IDE 
    - Update Flutter SDK >= 3.38 and Dart SDK >=3.10 
    - Add `@Preview()` over any UI to see Preview in Flutter Widget Preview window
      ```
      @Preview(name: "Paragraph1", brightness: Brightness.dark, group: "Page1"
      ,theme: getTheme)
      Widget paragraphWidget() {
        return Builder(
      ```
    - In Android Studio/IntelliJ you may see a "Preview" gutter icon or a context menu option (right-click) to open a preview; in VS Code look for preview commands in the Command Palette (install the Dart & Flutter extensions).
    - If your IDE doesn't show an inline preview, Run CLI `flutter widget-preview start` , the preview will launch in chrome browser.

2) Dot shorthand (concise configuration)

- A common, safe shorthand in Dart for configuring objects is the cascade operator (`.`). It lets you call multiple setters or methods on the same object without repeating the variable name.
- Example:

```
enum Status { none, running, stopped, paused }

Status currentStatus = .running;

int port = .parse('8080'); 

class Point {
  final int x, y;
  Point(this.x, this.y);
  Point.origin() : x = 0, y = 0;
}

Point origin = .origin(); 
```


3) Hot Reload for Flutter Web

- Running the app on the web:
  - From a terminal: `flutter run -d chrome` (or pick another web device)
- Performing Hot Reload:
  - In the terminal where `flutter run` is running, press `r` to trigger a hot reload (preserves app state when possible) or `R` for a hot restart (restarts the app and resets state).
  - In VS Code or Android Studio, use the Hot Reload (lightning bolt) button in the debug toolbar.

