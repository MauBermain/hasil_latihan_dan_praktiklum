import 'dart:io'; // <--- WAJIB ADA

import 'package:kontrol_flow_furqon/kontrol_flow_furqon.dart'
    as kontrol_flow_furqon;

void main(List<String> arguments) {
  print('Hello world: ${kontrol_flow_furqon.calculate()}!');

  var libur = true;
  if (libur == true) {
    print("Hari ini Libur");
  } else {
    print("Hari ini Tidak Libur");
  }

  var nilai = 30;
  if (nilai >= 90) {
    print("A");
  } else if (nilai < 90) {
    print("B");
  } else if (nilai < 80) {
    print("C");
  } else if (nilai < 60) {
    print("D");
  }

  var nilaii = -101;
  if (nilaii >= 90 && nilaii <= 100) {
    print("A");
  } else if (nilaii >= 80 && nilaii < 90) {
    print("B");
  } else if (nilaii >= 60 && nilaii < 80) {
    print("C");
  } else if (nilaii >= 0 && nilaii < 60) {
    print("D");
  } else {
    print("nilai $nilai tidak diakui");
  }

  var nilaiMin = 70;
  var nilaiKu = 65;
  var ket = nilaiKu > nilaiMin ? "Lulus" : "Tidak Lulus";
  print(ket);

  var jk = "pria";
  var umur = 16;
  if (jk == "pria") {
    if (umur <= 18) {
      print("Belum dewasa");
    }
  }

  // latihan 1
  // anjayyyyyy......
  var usia = 25;
  if (usia < 12) {
    print("Anak-anak");
  } else if (usia <= 17) {
    print("Remaja");
  } else if (usia <= 64) {
    print("Dewasa");
  } else {
    print("Lansia");
  }

  // RUMUS LOOP
  // for (var i = 0; i < limit; i++) {
  //   // kode yang akan diulang sejumlah limit kali
  // }

  for (int angka = 1; angka <= 5; angka++) {
    print(angka);
  }

  var bahasa = "dart";
  for (int angka = 1; angka <= 5; angka++) {
    print(bahasa);
  }

  // Latihan 2
  // anjayyyyyy......
  for (int angka50 = 1; angka50 <= 50; angka50++) {
    print(angka50);
  }

  // For-in
  var myList = [1, 2, 3, 4, 5];
  for (var item in myList) {
    // kode yang dijalankan untuk setiap item dalam myList
  }

  var mySet = {1, 2, 3, 4, 5};
  for (var item in mySet) {
    // kode yang dijalankan untuk setiap item dalam mySet
  }

  var myMap = {'a': 1, 'b': 2, 'c': 3};
  for (var key in myMap.keys) {
    var value = myMap[key];
    // kode yang dijalankan untuk setiap pasangan kunci-nilai dalam myMap
  }

  // forEach
  var myList2 = [1, 2, 3, 4, 5];
  myList2.forEach((item) {
    // kode yang dijalankan untuk setiap item dalam myList
  });

  var mySet2 = {1, 2, 3, 4, 5};
  mySet2.forEach((item) {
    // kode yang dijalankan untuk setiap item dalam mySet
  });

  var myMap2 = {'a': 1, 'b': 2, 'c': 3};
  myMap2.forEach((key, value) {
    // kode yang dijalankan untuk setiap pasangan kunci-nilai dalam myMap
  });

  // while
  // RUMUS WSHILE
  //  while (condition) {
  // // kode yang akan diulang selama kondisi benar
  // }
  var angka = 1;
  while (angka <= 5) {
    print(angka);
    angka++;
  }

  // Latihan 3
  // anjayyyyyy......
  var angka3 = 0;
  while (angka3 <= 15) {
    print(angka3);
    angka3 += 3;
  }

  // do while
  // RUMUS DO WHILE
  //  do {
  // // kode yang akan dijalankan setidaknya sekali
  // } while (condition);

  var count = 1;
  do {
    print('Nilai count: $count');
    count++;
  } while (count <= 5);

  //   switch (expression) {
  // case value1:
  // // kode yang dieksekusi jika expression sama dengan value1
  // break;
  // case value2:
  // // kode yang dieksekusi jika expression sama dengan value2
  // break;
  // // case-case lainnya
  // default:
  // // kode yang dieksekusi jika expression tidak sama dengan nilai semua case
  // }

  var nilaiii = 'B';
  switch (nilaiii) {
    case 'A':
      print('Sangat Baik');
      break;
    case 'B':
      print('Baik');
      break;
    case 'C':
      print('Cukup');
      break;
    default:
      print('Nilai tidak valid');
  }

  final angka1 = 2;
  final angka2 = 5;
  final operator = "tambah";
  switch (operator) {
    case 'tambah':
      print(angka1 + angka2);
      break;
    case 'kurang':
      print(angka1 - angka2);
      break;
    default:
      print('tidak ada pilihan tersebut');
  }

  String jumlahHari(int bulan) {
    switch (bulan) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        return "31 hari";

      case 4:
      case 6:
      case 9:
      case 11:
        return "30 hari";

      case 2:
        return "28 hari";

      default:
        return "Bulan tidak valid";
    }
  }

  stdout.write('Masukkan nomor bulan (1-12): ');

  // Membaca input, tanda ! memastikan input tidak null, lalu diubah ke int
  int? inputBulan = int.tryParse(stdin.readLineSync() ?? '');

  if (inputBulan != null) {
    // Memasukkan input pengguna ke dalam fungsi jumlahHari
    String hasil = jumlahHari(inputBulan);
    print('Jumlah hari: $hasil');
  } else {
    print('Input harus berupa angka!');
  }
}
