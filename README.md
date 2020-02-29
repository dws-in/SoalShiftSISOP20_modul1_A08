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
     Script ini berfungsi untuk:
     1. Mengecek input nama file apakah alphabet
     2. Mengebuat password yang berisi huruf kecil dan huruf besar serta angka
     3. Menyimpan hasil password ke nama file yang dimasukan
     
   - **soal2_coba.sh**\
     Script ini berfungsi untuk:
     1. Mengenkripsi nama file yang dimasukkan
     2. Mengganti nama dengan nam baru hasil enkripsi
     2. Menyimpan kunci dari jam dienkripsinya nama file ke dalam file tersebut
     
   - **soal2_wadaw.sh**\
     Script ini berfungsi untuk:
     1. Mengambil kunci dari jam yang disimpan di file terenkripsi
     2. Mendekripsi nama file yang terenkripsi kembali ke nama semula
     
## Soal 3


Soal 3:

grep 'Location' wget.log > location.log

        d=1
        k=1
        dir=$(pwd)

        for ((i=1; i<29; i++))
        do
                for((j=1; j<29; j++))
                do
                        if [[ $i == $j ]]
                        then
                                continue
                        elif  cmp -s "pdkt_kusuma_"$i"" "pdkt_kusuma_"$j"" ;
                        then
                                mv "pdkt_kusuma_"$j""  "duplicate_"$d""
                                mv "duplicate_"$d"" duplicate
                                d=$((d+1))
                        else
                        break
                        fi
                done

                if [ -f "pdkt_kusuma_"$i"" ]
                then
                        mv "pdkt_kusuma_"$i"" "kenangan_"$k
                        mv "kenangan_"$k"" kenangan
                        k=$((k+1))
                fi
        done

mv "wget.log" "wget.log.bak"
mv "location.log" "location.log.bak"


grep 'Location' wget.log > location.log berarti mencari kata 'Location' dalam tiap baris di wget.log dan menyimpannya di location.log
#dir=$(pwd) berarti var dir berisi lokasi current directory saat ini
#for ((i=1; i<29; i++)) dan for((j=1; j<29; j++)) digunakan untuk melakukan looping pengecekan
#if [ $i == $j ] digunakan agar file tidak compare file dengan nomor yang sama
#cmp -s "pdkt_kusuma_"$i"" "pdkt_kusuma_"$j"" berarti membandingkan apakah file $i sama dengan $j atau tidak
#mv "pdkt_kusuma_"$j"" "duplicate_"$d"" berarti jika file sama maka file $j mengganti nama jadi duplicate_$d
#mv "duplicate_"$d"" duplicate untuk memindahkan ke directory duplicate setelah ganti nama
#d=$((d+1)) berarti setiap kali ada file yang sama var d akan melakukan increnment
# [ -f "pdkt_kusuma_"$i"" ] then .... berfungsi untuk memindahkan gambar yang tidak memiliki duplikat ke kenangan.

