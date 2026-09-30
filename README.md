````dart
void main() {
  //ini adalah remark
  print("hello world");

  String kampus = 'Global Institut';
  print(kampus.toUpperCase());

  String prodi = 'Teknik Informatika';
  String konsentrasi = 'SOftware Engginering';
  String matkul = 'Aplikasi Mobile';
  int sks = 3;
  print('Prodi: $prodi, Konsentrasi: $konsentrasi, Matkul: $matkul, SKS: $sks');

    //coba double
  double x = 5.2;
  double y = 7.4;
  print(x - y);

  bool punyaKTM = true;
  bool mahasiswa = 19 >= 17;
  bool bolehBikinKTM = punyaKTM && mahasiswa;
  print("Boleh bikin KTM: $bolehBikinKTM");

  List<String> namaMinuman = [
    'esteh', 
    'kopi', 
    'matcha'
  ];

  namaMinuman.add('coba');
  print("Menu: $namaMinuman");

  String? namaMakanan;
  namaMakanan = 'makaroni';
  namaMakanan = null;
  print(namaMakanan);

  Set<String> warna = {
    'biru', 
    'kuning', 
    'abu-abu', 
    'kuning'};

  print("Pilihan Warna: $warna");
  print("Jumlah warna: ${warna.length}");

  Set<String> pilihanWarna = {};
  pilihanWarna.add('Hitam');
  pilihanWarna.add('Hitam');

  print(pilihanWarna);

  Map<String, dynamic> dataDiri = {
    'namamhs': 'Rinda',
    'nim': 1124160124,
    'aktif': true,
  };
  print(dataDiri);
  
}
````