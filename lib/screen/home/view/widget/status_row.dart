import 'package:flutter/material.dart';

class StatusRowBefor extends StatelessWidget {
  const StatusRowBefor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Favorite contacts",
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
            )),
      ],
    );
  }
}