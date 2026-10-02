// String tentukanGrade(double nilai) {
//   if (nilai >= 85) {
//     return 'A';
//   } else if (nilai >= 70) {
//     return 'B';
//   } else if (nilai >= 60) {
//     return 'C';
//   } else {
//     return 'D';
//   }
// }

// void main() {
//   print(tentukanGrade(90));
//   print(tentukanGrade(75));
//   print(tentukanGrade(40));
// }

// import 'dart:ffi';

void main() {
  final String bintang = checkGrade(85.5);
  print(bintang);

  //   final int discount = getDiscount(10001, true);
  //   print(discount);

  final String status = getStatus(20);
  print(status);

  cetakStatusKuliah('Jumat');

  cetakStatusGrade('70');

  cetakPertemuan(5);

  contohForIn();

  contohWhile();
}

String getStatus(int umur) {
  // if (umur >= 17) {
  //     return 'dewasa';
  // } else {
  //     return 'anak-anak';
  // }
  //1 parameter doang
  return umur >= 17 ? 'Dewasa' : 'Anak-anak';
}

//switch
// ga kembalikan nilai = void
void cetakStatusKuliah(String hari) {
  switch (hari) {
    case 'Sabtu':
      print(
        'Kuliah Pengganti',
      ); //keluar, klo gada print ini munculnya ya yg libur
    case 'Minggu':
      print('Libur');
    //coba
    case 'Jumat':
      print('Shalat woy');
    //klo misal nulis jum'at pakenya petik ""
    default:
      print('Hari Kuliah');
  }

  String cetak = switch (hari) {
    'Sabtu' => 'Kuliah Pengganti',
    'Minggu' => 'Libur',
    _ => 'Hari Kuliah',
  };
  print(cetak);
}

//for
void cetakPertemuan(int total) {
  for (int x = 1; x <= total; x++) {
    //kondisi
    if (x % 2 == 1) {
      print('Pertemuan ke $x');
    }
    print('Pertemuan ke $x');
    //terakhit baru lakukan x++
  }
}

//for-in
void contohForIn() {
  List<int> pengeluaran = [10000, 40000, 50000];

  int totalPengeluaran = 0;
  // [][][]
  // belanja = [1]
  // totalPengeluaran = 0
  // totalPengeluaran = totalPengeluaran + belanja
  // totalPengeluaran = 0 + 10000
  // belanja = [2] (40000)
  // totalPengeluaran += belanja;
  // totalPengeluaran = 10000+40000 (14000)
  // belanja = [3] (50000)
  // totalPengeluaran += belanja;
  // totalPengeluaran = 14000+50000 (55000)

  for (final belanja in pengeluaran) {
    totalPengeluaran += belanja;
  }

  print('Total Pengeluaran : $totalPengeluaran');
}

//while
void contohWhile() {
  const int MAX_PERCOBAAN = 3;
  const String DEFAULT_PASSWORD = 'password';
  List<String> password = ['12345', 'abcde', 'password'];
  int totalPercobaan = 0;
  bool berhasil = false;

  while (!berhasil && totalPercobaan < MAX_PERCOBAAN) {
    String tempPassword = password[totalPercobaan];
    totalPercobaan++;

    if (tempPassword == DEFAULT_PASSWORD) {
      berhasil = true;
    }
  }

  print(
    'Status validasi password : $berhasil, percobaan berapa kali : $totalPercobaan',
  );
}

//break-hentikan pengulangan
//continue-lewati data kosong, lanjut looping

//switch expression
void cetakStatusGrade(String grade) {
  String keterangan = switch (grade) {
    'A' => 'Sangat baik',
    'B' => 'Baik',
    'C' => 'Cukup',
    _ => 'Diperbaiki',
  };
  print(keterangan);
}

//gada else
String checkGrade(double nilai) {
  if (nilai >= 85) {
    return '';
  }
  if (nilai >= 70) {
    return 'bintang';
  }
  if (nilai >= 60) {
    return '';
  }
  return '';
}


// variabel const diskonPotongan
// diskonMember
// minimumBelanja
// totalpotongan/totaldiskon

// di main buat skenario
// //case 1
// int totalBelanja = 80000;
// bool member = false;
// int totalBayar = hitungTotalBayar;
// cosnt EXPTED_CASE1 = 80000;

// if (8000(isi cosnt) = totalBayar) {
//     print(case 1 berhasil)
// }

