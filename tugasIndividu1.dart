// =============================================
// HW 2 - <Pembayaran (E-Wallet)>
// Nama : Rinda Danar Madanti
// NIM  : 1124160124
// =============================================

void main() {
  // Skenario 1: Bayar Rp500.000 dengan PIN benar
  bayarEWallet(500000, "123456");

  // Skenario 2: Bayar Rp2.700.000 (saldo kurang)
  bayarEWallet(2700000, "123456");

  // Skenario 3: Bayar Rp1.600.000 (melebihi limit harian)
  bayarEWallet(1600000, "123456");

  bayarEWallet(100000, "000000"); // Skenario 4: PIN salah pertama kali
  bayarEWallet(100000, "111111"); // Skenario 5: PIN salah kedua kali
  bayarEWallet(100000, "222222"); // Skenario 6: PIN salah ketiga kali (akun terblokir)

  // Skenario 7: bayar pas akun terblokir
  bayarEWallet(50000, "123456");
}

double saldo = 3000000;
double totalPengeluaranHariIni = 0;
const double LIMIT_HARIAN = 2000000;
const String PIN_BENAR = "123456";

bool statusAkun = true;
int jumlahSalahPin = 0;

void bayarEWallet(double nominal, String inputPin) {

  // BR-01: status akun
  if (!statusAkun) {
    print("Transaksi ditolak. Akunmu sedang terblokir!");
    return;
  }

  // BR-02: kecukupan saldo/saldo tidak boleh minus
  if (saldo < nominal) {
    print("Saldo tidak mencukupi. Saldo saat ini: Rp$saldo");
    return;
  }

  // BR-03: limit harian
  if (totalPengeluaranHariIni + nominal > LIMIT_HARIAN) {
    print("Transaksi melebihi limit harian Rp2.000.000.");
    return;
  }

  // BR-04: PIN salah 3 kali → akun terblokir
  if (inputPin != PIN_BENAR) {
    jumlahSalahPin++;
    if (jumlahSalahPin >= 3) {
      statusAkun = false;
      print("PIN salah 3 kali berturut-turut, akunmu terblokir.");
    } else {
      int sisaKesempatan = 3 - jumlahSalahPin;
      print("PIN salah, sisa kesempatan: $sisaKesempatan kali.");
    }
    return;
  }

  // BR-05: update saldo
  saldo -= nominal;
  totalPengeluaranHariIni += nominal;
  jumlahSalahPin = 0;

  print("Pembayaran sebesar Rp$nominal berhasil!");
  print("Sisa saldo: Rp$saldo");
  print("Total pengeluaran hari ini: Rp$totalPengeluaranHariIni");
}