import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_delivery/Core/colors.dart';

class PlacedOrder extends StatelessWidget {
  const PlacedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        surfaceTintColor: kwhite,
        title: Text(
          'Orders',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
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
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Close',
                            style: GoogleFonts.poppins(color: kdarkcolor1),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                kdarkcolor1,
                              ),
                              foregroundColor: WidgetStatePropertyAll(kwhite)),
                          child: Text(
                            'Delivered',
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
                      'View',
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
