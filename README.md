# **SoalShiftSISOP20_modul1_A08**

## 1 Soal 1
   - **soal1.sh**\
     Fungsi awk pertama untuk:
     1. Menghapus kolom selain 11, 13, 17 dan 21;
     2. Mengganti separator dengan ```|```;
     3. Menyimpan output ke dalam file ```selected.csv```;
     
     Fungsi awk kedua untuk:
     1. Menjumlahkan profit dikelompokkan berdasarkan ```reg[]```;
     2. Menampilakn hasil awk
     3. Mengurutkan dari yang terkecil ke yang terbesar
     4. Mengambil hasil yang teratas
     
     

        
## Soal 2
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

