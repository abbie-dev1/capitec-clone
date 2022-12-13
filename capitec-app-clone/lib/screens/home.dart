import 'package:capitect_app_clone/screens/central.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../dummy/dummy_data.dart';
import '../util/button_animation.dart';
import '../util/prefs.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250.0),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.27,
            color: Colors.red,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    alignment: Alignment.topRight,
                    onPressed: () {
                      setState(() {
                        Prefs.setBool("darkMode", true);
                      });
                    },
                    icon: const Icon(
                      FontAwesomeIcons.ellipsisVertical,
                      color: Colors.white,
                    ),
                  ),
                  const Center(
                    child: Text(
                      "hello",
                      style: TextStyle(color: Colors.white, fontSize: 60),
                    ),
                  ),
                  const Center(
                      child: Text(
                    "Dingaan",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ],
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Central()),
                    );
                  },
                  child: const Text(
                    'Sign In',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(50), // NEW
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      side: const BorderSide(color: Colors.blue),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Forgot PIN',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              GridView.count(
                padding: const EdgeInsets.all(12),
                primary: false,
                childAspectRatio: 4 / 2.1,
                shrinkWrap: true,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                crossAxisCount: 2,
                children: List.generate(Data.items.length, (index) {
                  return ButtonClickAnimation(
                    onTap: () {},
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(
                              Data.items[index].icon,
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Text(
                                Data.items[index].itemName,
                                style: const TextStyle(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                  "Capitec is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
