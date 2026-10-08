import 'dart:io';
void main() {
   void tampilmenu() {
    print("===================================");
    print("Wash & Clean");
    print("===================================");
    print("Menu 1: Tambah Waiting List");
    print("Menu 2: Lihat Waiting List");
    print("Menu 3: Lihat POS");
    print("Menu 4: Selesaikan POS");
    print("Menu 5: Keluar dari aplikasi");
   
  }
   
  var jalan = true;
   List WaitingList = [];
    Map<dynamic, dynamic> pos1 = {'plat' : null};
    Map<dynamic, dynamic> pos2 = {'plat' : null};
    Map<dynamic, dynamic> pos3 = {'plat' : null};

  while (jalan == true ) {
   tampilmenu();
    stdout.write("Pilih Menu(1/2/3/4/5): ");
    var input = stdin.readLineSync()!;

    if (input == "1") {
      print("===================================");
      stdout.write("Masukkan Nomor Plat Kendaraan: ");
    var input1 = stdin.readLineSync()!;

    if (pos1['plat'] == null) {
      pos1['plat']= input1;
    } else if (pos2['plat'] == null){
      pos2['plat']= input1;
    } else if(pos3['plat'] == null){
      pos3['plat']= input1;
    }else {
      WaitingList.add(input1);
    }
    }
    if(input == "2") {
      print("===================================");
      if (WaitingList.isEmpty ) {
          print('Tidak Ada Kendaraan di Waiting List');
        } else {
           for (var i = 0; i < WaitingList.length; i++) {
          print('$WaitingList[$i]');
        }
        
      }

    }
     if( input == "3") {
      print("===================================");
        print( 'POS 1 : ${pos1['plat']} ');
        print( 'POS 2 : ${pos2['plat']}');
        print('POS 3 : ${pos3['plat']}');
      }
      if( input == "4") {
        print("===================================");
         stdout.write("Masukkan Nomor Pos: ");
    var input2 = stdin.readLineSync()!;
     if (input2 == "1") {
       print('Kendaraan ${pos1['plat']} Telah Selesai');
      pos1['plat'] = null;
      pos1 = WaitingList.first;
    } else if (input2 == "2"){
       print('Kendaraan  ${pos2['plat']} Telah Selesai');
      pos2['plat'] = null;
       pos2 = WaitingList.first;
    } else if(input2 == "3"){
       print('Kendaraan  ${pos3['plat']} Telah Selesai');
      pos3['plat'] = null;
       pos3 = WaitingList.first;
      }
      WaitingList.removeAt(0);
      }
 if (input == "5") {
      exit(0);
    }   
  
  }
}