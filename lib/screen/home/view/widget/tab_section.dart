import 'package:flutter/material.dart';

class TabSection extends StatelessWidget {
  const TabSection({
    super.key,
    required GlobalKey<ScaffoldState> globalKey,
  }) : _globalKey = globalKey;

  final GlobalKey<ScaffoldState> _globalKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    _globalKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10),
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Messages",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  )),
              const SizedBox(
                width: 35,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Online",
                    style: TextStyle(color: Colors.grey, fontSize: 26),
                  )),
              const SizedBox(
                width: 35,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Groups",
                    style: TextStyle(color: Colors.grey, fontSize: 26),
                  )),
              const SizedBox(
                width: 35,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "More",
                    style: TextStyle(color: Colors.grey, fontSize: 26),
                  )),
              const SizedBox(
                width: 35,
              ),
            ],
          ),
        )
      ],
    );
  }
}