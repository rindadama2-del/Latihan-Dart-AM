// ==================================================
// Tugas Kelompok - Latihan 1
// Nama Anggota : 1. Maharani Kusuma Dewi (1124160211)
//                2. Rinda Danar Madanti (1124160124)
// ====================================================
void main() {
  // Skenario 1
  // int minimalBelanja = 80000;
  // bool memberToko = false;

  // skenario 2
  // int minimalBelanja = 150000;
  // bool memberToko = false;

  // skenario 3
  const MINIMAL_BELANJA = 150000;
  bool memberToko = true;
  // Skenario 4
  // int minimalBelanja = 300000;
  // bool memberToko = true;

  final double discount = hitungPersenDiskon(MINIMAL_BELANJA, memberToko);
  final double totalBayar = hitungTotalBayar(MINIMAL_BELANJA, discount);
  print('Total Belanja: Rp$MINIMAL_BELANJA');
  print('Total Discount :$discount %');
  print('Total bayar: Rp$totalBayar');
}

hitungPersenDiskon(MINIMAL_BELANJA, bool memberToko) {
  double discount = 0;
  if (MINIMAL_BELANJA >= 100000) {
    discount = 10;
    if (memberToko) {
      discount += 5;
    }
  }
  return discount;
}

hitungTotalBayar(MINIMAL_BELANJA, double discount) {
  double potongan = MINIMAL_BELANJA * discount / 100;
  if (potongan > 25000) {
    potongan = 25000;
  }
  return MINIMAL_BELANJA - potongan;
}