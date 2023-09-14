import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

var data = 0;
void test() {
  data += 3;
}

class _Screen5State extends State<Screen5> {
  int currentPageIndex = 0;
  final TextEditingController _controller = TextEditingController();
  String _selectedValue = '';

  final List<String> _dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    // Add your dropdown items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 5'),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.school_outlined),
            label: 'School',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Page 1'),
              SizedBox(height: 20),
              TypeAheadFormField<String>(
                textFieldConfiguration: TextFieldConfiguration(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Select an item',
                    border: OutlineInputBorder(),
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  return _dropdownItems
                      .where((item) =>
                          item.toLowerCase().contains(pattern.toLowerCase()))
                      .toList();
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                onSuggestionSelected: (suggestion) {
                  setState(() {
                    _controller.text = suggestion;
                    _selectedValue = suggestion;
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Selected Value: $_selectedValue'),
            ],
          ),
        ),
        Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (a, b) {
                  return ListTile(
                    leading: Text("- "),
                    trailing: Text("${_dropdownItems[b]}"),
                  );
                },
                itemCount: _dropdownItems.length,
              ),
            ),
            MaterialButton(
              onPressed: () {
                _dropdownItems.add("Hey");
                setState(() {});
              },
              child: Text("Hey"),
              color: Colors.lightGreen,
            )
          ],
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Screen5(),
  ));
}
