# **SoalShiftSISOP20_modul1_A08**

## Soal 1
   - **soal1.sh**\
     Fungsi awk ke-1 untuk:
     1. Menghapus kolom selain 11, 13, 17 dan 21;
     2. Mengganti separator dengan ```|```;
     3. Menyimpan output ke dalam file ```selected.csv```;
     
     Fungsi awk ke-2 untuk:
     1. Menjumlahkan profit dikelompokkan berdasarkan ```reg[]```;
     2. Menampilakn hasil awk;
     3. Mengurutkan dari yang terkecil ke yang terbesar;
     4. Mengambil hasil yang teratas ```head -n 1```;
     
     Fungsi awk ke-3 untuk:
     1. Mengidentifikasi apakah region adalah ```"Central"```
     2. Menjumlahkan profit dikelompokkan berdasarkan ```sta[]```;
     3. Menampilakn hasil awk;
     3. Mengurutkan dari yang terkecil ke yang terbesar;
     4. Mengambil 2 hasil teratas ```head -n 2```;
     
     Fungsi awk ke-4 untuk:
     1. Mengidentifikasi apakah region adalah ```"Central"``` dan state adalah ```"Texas"``` atau ```"Illinois"```;
     2. Menjumlahkan profit dikelompokkan berdasarkan ```sta[]```;
     3. Menampilakn hasil awk;
     3. Mengurutkan dari yang terkecil ke yang terbesar;
     4. Mengambil 2 hasil teratas ```head -n 10```;
        
## Soal 2
   - **soal2.sh**\
     Urutan kerja script:
     1. Mengecek input nama file apakah alphabet
     2. Mengebuat password yang berisi huruf kecil dan huruf besar serta angka
     3. Menyimpan hasil password ke nama file yang dimasukan
     
   - **soal2_coba.sh**\
     Urutan kerja script:
     1. Mengenkripsi nama file yang dimasukkan
     2. Mengganti nama dengan nam baru hasil enkripsi ```mv```
     2. Menyimpan kunci dari jam ```(date +"%H")``` dienkripsinya nama file ke dalam file tersebut
     
   - **soal2_wadaw.sh**\
     Urutan kerja script:
     1. Mengambil kunci dari jam yang disimpan di file terenkripsi
     2. Mendekripsi nama file yang terenkripsi kembali ke nama semula
     
## Soal 3

Urutan kerja script:
1. grep 'Location' wget.log > location.log berarti mencari kata 'Location' dalam tiap baris di wget.log dan menyimpannya di location.log
2. dir=$(pwd) berarti var dir berisi lokasi current directory saat ini
3. for ((i=1; i<29; i++)) dan for((j=1; j<29; j++)) digunakan untuk melakukan looping pengecekan
4. if [ $i == $j ] digunakan agar file tidak compare file dengan nomor yang sama
5. cmp -s "pdkt_kusuma_"$i"" "pdkt_kusuma_"$j"" berarti membandingkan apakah file $i sama dengan $j atau tidak
6. mv "pdkt_kusuma_"$j"" "duplicate_"$d"" berarti jika file sama maka file $j mengganti nama jadi duplicate_$d
7. mv "duplicate_"$d"" duplicate untuk memindahkan ke directory duplicate setelah ganti nama
8. d=$((d+1)) berarti setiap kali ada file yang sama var d akan melakukan increnment
9. [ -f "pdkt_kusuma_"$i"" ] then .... berfungsi untuk memindahkan gambar yang tidak memiliki duplikat ke kenangan.

