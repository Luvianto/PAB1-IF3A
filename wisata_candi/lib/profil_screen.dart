import 'package:flutter/material.dart';
import 'package:wisata_candi/widgets/profile_info_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //TODO 1: Deklarasikan variabel yg dibutuhkan
  bool isSignedIn = true;
  String fullName = "Nur Rachmat";
  String username = "nurrachmat";
  int favoriteCandiCount = 0;

  //TODO 5 : Fungsi SignIn
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  //TODO 6 : Fungsi SignOut
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO 2: Buat bagian ProfileHeader berisi gambar
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200 - 50),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepPurple, width: 2),
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("images/placeholder_image.png"),
                          ),
                        ),
                        if (isSignedIn)
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.deepPurple[50],
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                //TODO 3: Buat bagian ProfileInfo
                //row username /pengguna
                SizedBox(height: 20),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                ProfileInfoItem(
                  icon: Icons.lock,
                  label: "Pengguna",
                  value: username,
                  iconColor: Colors.amber,
                ),
                //row nama
                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        children: [
                          Icon(Icons.person, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            'Nama',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $fullName',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    if (isSignedIn) Icon(Icons.edit),
                  ],
                ),
                //row favorit
                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red),
                          SizedBox(width: 8),
                          Text(
                            'Favorit',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $favoriteCandiCount',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                //TODO 4: Buat bagian profile action
                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 20),
                isSignedIn
                    ? TextButton(onPressed: signOut, child: Text('Sign Out'))
                    : TextButton(onPressed: signIn, child: Text('Sign In'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
