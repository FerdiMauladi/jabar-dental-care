import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class EdukasiDetailScreen extends StatefulWidget {
  const EdukasiDetailScreen({Key? key}) : super(key: key);

  @override
  State<EdukasiDetailScreen> createState() => _EdukasiDetailScreenState();
}

const dataLoremHtml =
    r"""<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames 
    ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, 
    tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. 
    Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p> 
    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames 
    ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, 
    tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. 
    Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p
    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames 
    ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, 
    tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. 
    Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p
    """;

class _EdukasiDetailScreenState extends State<EdukasiDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 32,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(24.0),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    'Edukasi 1',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Html(
                    data: dataLoremHtml,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Edukasi Lainnya',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EdukasiDetailScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 125,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Edukasi 1',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Ini adalah deskripsi edu Ini adalah edukasi Ini adalah deskripsi edukasi Ini adalah deskripsi edukasi Ini adalah deskripsi edukasi',
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
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
