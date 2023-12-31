import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 14),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 46,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  child: const Column(
                    children: [
                      Text(
                        "100",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Total Pending (Rs.)",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Customer Name",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "this is a customer address with full text",
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color: Color(0xFF353535),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                    iconSize: 30,
                    tooltip: "Call",
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton:
          ExpandableFab(type: ExpandableFabType.up, distance: 60, children: [
        FloatingActionButton.small(
            tooltip: "Edit Profile",
            heroTag: "Edit Profile",
            onPressed: () {},
            child: const Icon(Icons.edit)),
        FloatingActionButton.small(
            tooltip: "History",
            heroTag: "History",
            onPressed: () {},
            child: const Icon(Icons.history)),
      ]),
    );
  }
}
