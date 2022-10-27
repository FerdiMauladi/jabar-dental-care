import 'package:flutter/material.dart';
import 'package:jabardentalcare/screen/edukasi/edukasi_detail_screen.dart';

class EdukasiScreen extends StatefulWidget {
  const EdukasiScreen({Key? key}) : super(key: key);

  @override
  State<EdukasiScreen> createState() => _EdukasiScreenState();
}

class _EdukasiScreenState extends State<EdukasiScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            padding: const EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari Edukasi',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EdukasiDetailScreen(),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 150,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    'Edukasi 1',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(top: 8.0),
                                  child: const Text(
                                    'Ini adalah deskripsi edukasi Ini adalah deskripsi edukasi Ini adalah deskripsi edukasi Ini adalah deskripsi edukasi Ini adalah deskripsi edukasi',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
