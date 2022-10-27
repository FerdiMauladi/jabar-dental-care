import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jabardentalcare/screen/loginregister/loginregister_screen.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  List<IconData> listIcon = [
    Icons.person,
    Icons.receipt,
    Icons.info,
    Icons.logout,
  ];

  List<String> listTitle = [
    'Profil Saya',
    'Riwayat Transaksi',
    'Tentang Aplikasi',
    'Keluar',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 35.0,
            ),
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Ferdi Ahmad Mauladi',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'cescaghniya@gmail.com',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          ListView.builder(
            itemCount: listIcon.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    if (index == 3) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginRegisterScreen(),
                        ),
                      );
                    }
                  },
                  leading: Icon(
                    listIcon[index],
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text(
                    listTitle[index],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
