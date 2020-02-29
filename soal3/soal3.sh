#!/bin/bash

#3a
for((i=1; i<29; i++))
do
 wget -O pdkt_kusuma_$i loremflickr.com/320/240/cat -a wget.log
done

#3c
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

#for ((i=1;i<29;i++))  merupakan iterasi untuk mendapatkan 28 gambar dari web yang telah disediakan dimana nantinya juga akan dilakukan penomoran untuk gambar-gambar tersebut.

#-a digunakan untuk menambahkan dan -O digunakan untuk mengubah nama file menjadi “pdkt_kusuma_$i” dimana i adalah penomoran yang dimaksud diatas.

#fungsi wget digunakan untuk mengunduh file yang ada di website dan wget.log digunakan untuk menyimpan file yang sudah diunduh

#grep 'Location' wget.log > location.log berarti mencari kata 'Location' dalam tiap baris di wget.log dan menyimpannya di location.log

#dir=$(pwd) berarti var dir berisi lokasi current directory saat ini

#for ((i=1; i<29; i++)) dan for((j=1; j<29; j++)) digunakan untuk melakukan looping pengecekan

#if [ $i == $j ] digunakan agar file tidak compare file dengan nomor yang sama

#cmp -s "pdkt_kusuma_"$i"" "pdkt_kusuma_"$j"" berarti membandingkan apakah file $i sama dengan $j atau tidak

#mv "pdkt_kusuma_"$j"" "duplicate_"$d"" berarti jika file sama maka file $j mengganti nama jadi duplicate_$d

#mv "duplicate_"$d"" duplicate untuk memindahkan ke directory duplicate setelah ganti nama

#d=$((d+1)) berarti setiap kali ada file yang sama var d akan melakukan increnment

# [ -f "pdkt_kusuma_"$i"" ] then .... berfungsi untuk memindahkan gambar yang tidak memiliki duplikat ke kenangan.

