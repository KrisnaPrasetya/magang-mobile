import 'package:internship/src/core/base_import.dart';

TextEditingController _pageController = TextEditingController();
Future<void> showDebugConsole(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('System Console'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Page Launcher"),
                    TextField(
                      controller: _pageController,
                      decoration: InputDecoration(hintText: "Route Name"),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(onPressed: () {}, child: Text('Go')),
                    const SizedBox(height: 24),
                    Text("API Token"),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}
