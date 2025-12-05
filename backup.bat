@echo off
:: Jadikan tanggal aman (ganti / jadi -)
set tanggal=%date:/=-%

:: Lokasi sumber dan tujuan
set sumber=D:\Project1\MyFiles\Tugas
set tujuan=D:\Project3\backup_file\%tanggal%

:: Membuat folder backup
mkdir "%tujuan%"

echo.
echo Membuat folder backup: %tujuan%
echo.

:: Proses penyalinan
echo Menyalin file penting...
xcopy "%sumber%" "%tujuan%\Tugas" /E /I /Y

:: verifikasi
echo Backup selesai!
echo File tersimpan di
echo "%tujuan%\Tugas"
echo.

echo Daftar file hasil backup
dir "%tujuan%\Tugas"
echo.
pause