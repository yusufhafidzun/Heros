import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:heros/models/pahlawan_model.dart';
import 'package:heros/views/detail_pahlawan.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<PahlawanModel> pahlawan = [
    PahlawanModel("Soekarno", "assets/images/Soekarno.png", "Presiden RI 1",
        "Soekarno, atau Bung Karno, adalah Proklamator Kemerdekaan Indonesia yang pertama. Ia juga menjadi Presiden pertama Indonesia setelah kemerdekaan. Soekarno dikenal sebagai pemimpin karismatik yang memimpin perjuangan rakyat Indonesia melawan penjajahan."),
    PahlawanModel("Kartini", "assets/images/Kartini.png", "Aktivis",
        "Raden Ajeng Kartini adalah seorang pahlawan nasional Indonesia yang dikenal sebagai pelopor perjuangan emansipasi wanita. Ia menekankan pentingnya pendidikan bagi perempuan dan berjuang agar perempuan memiliki hak yang setara dengan laki-laki."),
    PahlawanModel(
        "Diponegoro",
        "assets/images/Diponegoro.png",
        "Pahlawan Nasional",
        "Pangeran Diponegoro adalah pahlawan nasional Indonesia yang memimpin Perang Diponegoro melawan penjajahan Belanda pada abad ke-19. Perjuangannya menunjukkan semangat dan tekad untuk melawan penindasan asing."),
    PahlawanModel(
        "Cut Nyak Dien",
        "assets/images/CutNyakDhien.png",
        "Pahlawan Nasional",
        " Cut Nyak Dien adalah pahlawan nasional Indonesia yang terkenal karena perannya dalam perang Aceh melawan penjajah Belanda. Ia memimpin pasukan Aceh dalam pertempuran dan dikenal sebagai simbol perlawanan dan keberanian."),
    PahlawanModel(
        "Ki Hadjar Dewantara",
        "assets/images/KiHadjarDewantara.png",
        "Bapak Pendidikan Indonesia",
        "Ki Hajar Dewantara adalah pahlawan nasional Indonesia yang dikenal sebagai pelopor pendidikan. Ia mendirikan Taman Siswa, sebuah gerakan pendidikan yang bertujuan memberikan akses pendidikan kepada masyarakat luas, tanpa memandang status sosial."),
    PahlawanModel(
        "Sultan Hasanudin",
        "assets/images/SultanHasanudin.png",
        "Pahlawan Nasional",
        "Sultan Hasanuddin adalah pahlawan nasional Indonesia dari Makassar yang memimpin perlawanan terhadap VOC (Vereenigde Oost-Indische Compagnie). Pemberontakannya menunjukkan semangat perlawanan terhadap penjajahan Belanda."),
    PahlawanModel("Soeharto", "assets/images/Soeharto.png", "Presiden RI 2",
        "Soeharto adalah tokoh militer dan politikus Indonesia yang memegang peranan penting dalam sejarah Indonesia pasca-kemerdekaan. Ia menjadi Presiden kedua Indonesia dan memimpin negara dari tahun 1967 hingga 1998. Soeharto dikenal karena kebijakan pembangunan ekonomi yang berhasil, namun juga diwarnai kontroversi terkait hak asasi manusia."),
    PahlawanModel(
        "Mohammad Hatta",
        "assets/images/Hatta.png",
        "Wakil Presiden RI 1",
        "Mohammad Hatta adalah Proklamator Kemerdekaan Indonesia yang mendampingi Soekarno. Ia juga menjadi Wakil Presiden pertama Indonesia. Hatta terlibat aktif dalam perjuangan politik dan pemikiran ekonomi Indonesia."),
  ];

  List<PahlawanModel> display_list = List.from(pahlawan);

  void updateList(String value) {
    setState(() {
      display_list = pahlawan
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Heros',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blueAccent,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Image.asset(
                    'assets/images/herostransparant.png',
                    width: 370,
                    height: 370,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black26,
                height: 1,
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    MaterialCommunityIcons.wrench,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Rate App',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                },
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Search',
                style: TextStyle(
                    wordSpacing: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              child: TextField(
                onChanged: (value) => updateList(value),
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(color: Colors.black)),
                    hintText: "Masukkan Nama Pahlawan",
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    prefixIcon: Icon(Icons.search, color: Colors.grey[400])),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? const Center(
                      child: Text(
                        "Not Result Found",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )
                  : ListView.separated(
                      itemCount: display_list.length,
                      separatorBuilder: (context, index) => const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        title: Text(
                          display_list[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(display_list[index].desk),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 18.0),
                          child: Icon(
                            Icons.arrow_forward_sharp,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      pahlawanDesk:
                                          display_list[index].deskription,
                                      pahlawanPicture:
                                          display_list[index].picture,
                                      pahlawanTitle:
                                          display_list[index].title)));
                        },
                        leading: Image.asset(display_list[index].picture),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
