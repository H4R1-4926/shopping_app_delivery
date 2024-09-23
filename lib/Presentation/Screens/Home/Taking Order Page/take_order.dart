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
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        padding: const EdgeInsets.only(bottom: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Center(
                        child: Text(
                          '(Product Code)',
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Price: ',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Payment: ',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Order By: ',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Deliver To: ',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Phone Number:',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Secondary Number:',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Pincode:',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Address:',
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                kdarkcolor1,
                              ),
                              foregroundColor: WidgetStatePropertyAll(kwhite)),
                          child: Text(
                            'Close',
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                kdarkcolor1,
                              ),
                              foregroundColor:
                                  const WidgetStatePropertyAll(kwhite)),
                          child: Text(
                            'Proceed with order',
                            style: GoogleFonts.poppins(),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                tileColor: klightGrey,
                title: Text(
                  'Product Code',
                  style: GoogleFonts.poppins(),
                ),
                subtitle: Text(
                  'To (Place Name)',
                  style: GoogleFonts.poppins(),
                ),
                trailing: Container(
                  height: double.infinity,
                  width: 90,
                  decoration: BoxDecoration(
                      color: kdarkcolor1,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      'Take\nOrder',
                      style: GoogleFonts.lato(
                          color: kwhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
