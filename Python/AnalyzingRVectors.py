from CsvReadings import CsvReadings
from GeneratingRBitmaps import GeneratingRBitmaps


# odczyt wektorow jednomilionowych z R

csvMt1 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/CsvR/csv1mln/mt1")
csvMt1Bitmap = GeneratingRBitmaps("mt1_bitmap", csvMt1.seq)

csvTh1 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/CsvR/csv1mln/th1")
csvTh1Bitmap = GeneratingRBitmaps("th1_bitmap", csvTh1.seq)

csvXor1 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/CsvR/csv1mln/xor1")
csvXor1Bitmap = GeneratingRBitmaps("xor1_bitmap", csvXor1.seq)

# odczyt wektorow 10 milionowych

csvMt2 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/CsvR/csv10mln/mt2")
csvMt2Bitmap = GeneratingRBitmaps("mt2_bitmap", csvMt2.seq)

csvTh2 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/CsvR/csv10mln/th2")
csvTh2Bitmap = GeneratingRBitmaps("th2_bitmap", csvTh2.seq)

csvXor2 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/CsvR/csv10mln/xor2")
csvXor2Bitmap = GeneratingRBitmaps("xor2_bitmap", csvXor2.seq)

# odczyt  wektorow 100 milionowych

csvMt3 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/RandomNumberGenerating/Python/assets/csv100Mt3")
csvMt3Bitmap = GeneratingRBitmaps("mt3_bitmap", csvMt3.seq)

csvTh3 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/RandomNumberGenerating/Python/assets/csv100Th3")
csvTh3Bitmap = GeneratingRBitmaps("th3_bitmap", csvTh3.seq)


csvXor3 = CsvReadings("D:/SEMESTR IV/PRAKTYKI/RandomNumberGenerating/Python/assets/csv100Xor3")
csvXor3Bitmap = GeneratingRBitmaps("xor3_bitmap", csvXor3.seq)
