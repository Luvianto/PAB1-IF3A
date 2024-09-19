class Kendaraan {
  String merek;
  int tahunProduksi;

  Kendaraan(this.merek, this.tahunProduksi);

  void infoKendaraan() {
    print('Ini Info Kendaraan');
    print('$merek, Tahun: $tahunProduksi');
  }
}

class Mobil extends Kendaraan {
  int jumlahPintu;

  // Mobil(this.merek, this.model, this.tahunProduksi);
  Mobil(super.merek, super.tahunProduksi, this.jumlahPintu);

  void infoMobil() {
    print('Ini Info Mobil!');
    print('Mobil $merek');
    print('Tahun: $tahunProduksi');
    print('Pintu: $jumlahPintu');
  }
}

class Hewan {
  void suara() {
    print('Suara hewan!');
  }
}

class Anjing extends Hewan {
  String nama;

  Anjing(this.nama);

  @override
  void suara() {
    print('$nama: Guk guk!');
  }
}

class Kucing extends Hewan {
  @override
  void suara() {
    print('Meong meong!');
  }
}

class Mahasiswa {
  String _nama;
  String _umur;

  Mahasiswa(this._nama, this._umur);

  String get nama => _nama;
  set nama(String value) => _nama = value;

  String get umur => _umur;
  set umur(String value) => _umur = value;
}

abstract class Bentuk {
  double hitungLuas();
}

class Persegi extends Bentuk {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() {
    return sisi * sisi;
  }
}

void main() {
  var persegi = Persegi(10);
  print(persegi.hitungLuas());
}
