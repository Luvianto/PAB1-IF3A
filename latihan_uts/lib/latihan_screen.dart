import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan UTS"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "INFORMATIKA",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
              ),
              const SizedBox(height: 8),
              Image.asset(
                "images/latihan.jpg",
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              const Text(
                "Universitas Multi Data Palembang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              const Text(
                "Kota Palembang, Prov. Sumatera Selatan",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              //Area Container Merah (Informasi Detail)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red[900],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      //ToDo: Baris 1 berisi info
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Kolom Kiri -- status dan akre
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Aktif",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Akreditasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Unggul",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          //Kolom Kanan -- tgl berdiri dan jumlah mhs
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Taggal Berdiri",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "9 April 2021",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Jumlah Mahasiswa",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "5000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      //ToDo: Baris 2 berisi kontak
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //telp : icon + text
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "0711-376400",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                          //email : icon + text
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "kuliah@mdp.ac.id",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                          Expanded(
                              child: Row(
                            children: [
                              Icon(
                                Icons.inbox,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "@universitasmdp",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                          //website : icon + text
                          SizedBox(
                              child: Row(
                            children: [
                              Icon(
                                Icons.link,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "mdp.ac.id",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Box 2 (Abu-abu)
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //ToDo: Baris 1 berisi Alamat
                      const Text("Alamat"),
                      const Text(
                        "Jl. Rajawali no. 14",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      //ToDo: Baris 2 berisi Button
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text("Lihat Maps"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
