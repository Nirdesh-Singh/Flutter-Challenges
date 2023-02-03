import 'package:challenge_2/login.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Color> col = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple
  ];
  List<Icon> icn = [
    const Icon(Icons.email),
    const Icon(Icons.password),
    const Icon(Icons.percent),
    const Icon(Icons.person),
    const Icon(Icons.search),
    const Icon(Icons.shield),
    const Icon(Icons.circle_sharp),
    const Icon(Icons.flag),
    const Icon(Icons.local_pizza),
    const Icon(Icons.bug_report_rounded),
    const Icon(Icons.laptop),
    const Icon(Icons.mobile_friendly),
    const Icon(Icons.align_vertical_bottom),
    const Icon(Icons.remove_red_eye),
    const Icon(Icons.safety_divider)
  ];
  List<String> flag = [
    'usa.png',
    'uk.png',
    'south_korea.png',
    'kenya.png',
    'india.png',
    'greece.png',
    'germany.png',
    'egypt.png',
    'france.png',
    'australia.png',
    'canada.png',
    'argentina.png'
  ];
  List<String> countries = [
    'USA',
    'UK',
    'South Korea',
    'Kenya',
    'India',
    'Greece',
    'Germany',
    'Egypt',
    'France',
    'Australia',
    'Canada',
    'Argentina'
  ];
  List<String> capital = [
    'Washington D.C.',
    'London',
    'Seoul',
    'Nairobi',
    'New Delhi',
    'Athens',
    'Berlin',
    'Cairo',
    'Paris',
    'Canberra',
    'Ottawa',
    'Buenos Aires'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text('Home Screen'),
        centerTitle: true,
        leading: TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          label: const Text(''),
        ),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SignIn())),
            icon: const Icon(Icons.logout),
            label: const Text(''),
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return ListTileTheme(
            child: Card(
              color: col[index],
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${flag[index]}')),
                trailing: icn[index],
                title: Text(countries[index]),
                subtitle: Text(capital[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
