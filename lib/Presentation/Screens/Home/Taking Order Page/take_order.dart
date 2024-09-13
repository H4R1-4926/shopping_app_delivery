import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_delivery/Core/colors.dart';

class TakeOrderPage extends StatelessWidget {
  TakeOrderPage({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        surfaceTintColor: kwhite,
        title: Text(
          'Take the order',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: SearchBar(
              controller: searchController,
              elevation: const WidgetStatePropertyAll(0),
              backgroundColor: const WidgetStatePropertyAll(klightGrey),
              hintText: 'Search with code',
              trailing: const [
                CircleAvatar(
                  backgroundColor: kdarkcolor3,
                  child: Icon(
                    Icons.search_outlined,
                    color: kwhite,
                  ),
                )
              ],
            ),
          ),
          const Expanded(
              child: Center(
            child: Text('Enter The code'),
          ))
        ],
      ),
    );
  }
}
