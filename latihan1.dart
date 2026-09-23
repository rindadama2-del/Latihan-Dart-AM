void main() {
  //ini adalah remark

  print("hello world");

  String kampus = 'Global Institut';
  print(kampus.toUpperCase());

  String prodi = 'Teknik Informatika';
  String konsentrasi = 'SOftware Engginering';
  int tahun = 2024;
  print('Prodi $prodi, Konsentrasi $konsentrasi, Tahun $tahun');

  List<String> namaMinuman = [
    'esteh', 
    'kopi', 
    'matcha'
    ];

  namaMinuman.add('coba');
  print(namaMinuman);

  String? namaMakanan;
  namaMakanan = 'makaroni';
  namaMakanan = null;
  print(namaMakanan);

  Map<String, dynamic> dataDiri = {
    'namamhs': 'Rinda',
    'nim': 11234,
    'status': 'aktif',
  };
  print(dataDiri);

//coba double
  double x = 5.2;
  double y = 7.4;
  print(x-y);

  bool punyaKTM = true;
  bool mahasiswa = 19 >= 17;
  bool bolehBikinKTM = punyaKTM && mahasiswa;
  print("Boleh bikin KTM: $bolehBikinKTM");
}