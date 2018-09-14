# SpamFilter

This program is a Spam Filter that I wrote for my Information Retrieval and Web Search (CSCE 5200) class at UNT.  It is meant to learn attributes from a test dataset of classified (spam / not spam) emails that it can use to classify emails in a test dataset.

## Description:
The program performs pre-processing on the documents, indexes them using hashes and uses the TF*IDF weighting scheme.  This program uses Inverse Document Frequency and Cosine Similarity to rank the documents.

## Instructions:
This program assumes that the Training documents are in a folder called "training" in the same directory as the program.  It also assumes that the Test documents are in a folder called "test" in the same directory as the program.  The cats.txt file must also be in the same directory.

Run the program from the command line with no arguments.  The results will print to a file called results.txt in the same folder as the program.  They will also be displayed in the console window.

The program has already been run to produce the output file in the root folder.  Running the program again will overwrite this file with new (identical) results.

## Results:
All documents were correctly classified as Spam or Not Spam according to the list in cats.txt

## Detailed Results:
See Results section below.

	
# Methodology:
## Stopwords
I tried running this program without removing stopwords because I thought that certain stopwords may be more prevalent in Spam messages.  I found that I got better results, though, when I removed both stopwords and punctuation.  I added punctuation to the stopwords file and prevented them from being counted by the algorithm.


## Weighting Scheme
I normalized the TF, and for the IDF I used the full number of documents as the numerator, but only the number of TRAINING documents that contain the word as the denominator.

I weighted the Test document vector terms using the IDF from the Training docs, and used Cosine Similarity to compare them.

I found this to produce the best results.


# Test Run:
## This is copied from results.txt
	////////////////////////////////////////////////////////////////
	//
	//	Information Retrieval CSCE 5200
	//	Assignment 3
	//	Jacob Danks
	//	03/22/2013
	//
	////////////////////////////////////////////////////////////////

	5-1298msg1.txt	Not Spam	 Got it right!
	5-1298msg2.txt	Not Spam	 Got it right!
	5-1298msg3.txt	Not Spam	 Got it right!
	5-1300msg1.txt	Not Spam	 Got it right!
	5-1300msg2.txt	Not Spam	 Got it right!
	5-1300msg3.txt	Not Spam	 Got it right!
	5-1301msg1.txt	Not Spam	 Got it right!
	5-1302msg1.txt	Not Spam	 Got it right!
	5-1303msg1.txt	Not Spam	 Got it right!
	5-1303msg2.txt	Not Spam	 Got it right!
	5-1303msg3.txt	Not Spam	 Got it right!
	5-1304msg1.txt	Not Spam	 Got it right!
	5-1307msg1.txt	Not Spam	 Got it right!
	5-1307msg2.txt	Not Spam	 Got it right!
	5-1307msg3.txt	Not Spam	 Got it right!
	5-1311msg1.txt	Not Spam	 Got it right!
	5-1311msg2.txt	Not Spam	 Got it right!
	5-1311msg3.txt	Not Spam	 Got it right!
	5-1312msg1.txt	Not Spam	 Got it right!
	5-1312msg2.txt	Not Spam	 Got it right!
	5-1312msg3.txt	Not Spam	 Got it right!
	5-1315msg1.txt	Not Spam	 Got it right!
	5-1315msg2.txt	Not Spam	 Got it right!
	5-1315msg3.txt	Not Spam	 Got it right!
	5-1315msg4.txt	Not Spam	 Got it right!
	5-1315msg5.txt	Not Spam	 Got it right!
	5-1316msg1.txt	Not Spam	 Got it right!
	5-1318msg1.txt	Not Spam	 Got it right!
	5-1318msg2.txt	Not Spam	 Got it right!
	5-1318msg3.txt	Not Spam	 Got it right!
	5-1321msg1.txt	Not Spam	 Got it right!
	5-1322msg1.txt	Not Spam	 Got it right!
	5-1324msg1.txt	Not Spam	 Got it right!
	5-1325msg1.txt	Not Spam	 Got it right!
	5-1326msg1.txt	Not Spam	 Got it right!
	5-1327msg1.txt	Not Spam	 Got it right!
	5-1328msg1.txt	Not Spam	 Got it right!
	5-1328msg2.txt	Not Spam	 Got it right!
	5-1328msg3.txt	Not Spam	 Got it right!
	5-1329msg1.txt	Not Spam	 Got it right!
	5-1330msg1.txt	Not Spam	 Got it right!
	5-1331msg1.txt	Not Spam	 Got it right!
	5-1332msg1.txt	Not Spam	 Got it right!
	5-1333msg1.txt	Not Spam	 Got it right!
	5-1335msg1.txt	Not Spam	 Got it right!
	5-1337msg1.txt	Not Spam	 Got it right!
	5-1338msg1.txt	Not Spam	 Got it right!
	5-1339msg1.txt	Not Spam	 Got it right!
	5-1343msg1.txt	Not Spam	 Got it right!
	5-1344msg1.txt	Not Spam	 Got it right!
	5-1345msg1.txt	Not Spam	 Got it right!
	5-1347msg1.txt	Not Spam	 Got it right!
	5-1349msg1.txt	Not Spam	 Got it right!
	5-1351msg1.txt	Not Spam	 Got it right!
	5-1352msg1.txt	Not Spam	 Got it right!
	5-1353msg1.txt	Not Spam	 Got it right!
	5-1353msg2.txt	Not Spam	 Got it right!
	5-1353msg3.txt	Not Spam	 Got it right!
	5-1356msg1.txt	Not Spam	 Got it right!
	5-1358msg1.txt	Not Spam	 Got it right!
	5-1359msg1.txt	Not Spam	 Got it right!
	5-1361msg1.txt	Not Spam	 Got it right!
	5-1362msg1.txt	Not Spam	 Got it right!
	5-1370msg1.txt	Not Spam	 Got it right!
	5-1371msg0.txt	Not Spam	 Got it right!
	5-1371msg1.txt	Not Spam	 Got it right!
	5-1371msg2.txt	Not Spam	 Got it right!
	5-1372msg1.txt	Not Spam	 Got it right!
	5-1372msg2.txt	Not Spam	 Got it right!
	5-1372msg3.txt	Not Spam	 Got it right!
	5-1373msg1.txt	Not Spam	 Got it right!
	5-1375msg1.txt	Not Spam	 Got it right!
	5-1375msg2.txt	Not Spam	 Got it right!
	5-1375msg3.txt	Not Spam	 Got it right!
	5-1375msg4.txt	Not Spam	 Got it right!
	5-1375msg5.txt	Not Spam	 Got it right!
	5-1376msg1.txt	Not Spam	 Got it right!
	5-1377msg1.txt	Not Spam	 Got it right!
	5-1378msg1.txt	Not Spam	 Got it right!
	5-1382msg0.txt	Not Spam	 Got it right!
	5-1383msg1.txt	Not Spam	 Got it right!
	5-1384msg1.txt	Not Spam	 Got it right!
	5-1385msg1.txt	Not Spam	 Got it right!
	5-1386msg1.txt	Not Spam	 Got it right!
	5-1388msg1.txt	Not Spam	 Got it right!
	5-1389msg1.txt	Not Spam	 Got it right!
	5-1390msg1.txt	Not Spam	 Got it right!
	5-1390msg2.txt	Not Spam	 Got it right!
	5-1390msg3.txt	Not Spam	 Got it right!
	5-1393msg1.txt	Not Spam	 Got it right!
	5-1393msg2.txt	Not Spam	 Got it right!
	5-1393msg3.txt	Not Spam	 Got it right!
	5-1398msg1.txt	Not Spam	 Got it right!
	5-1402msg1.txt	Not Spam	 Got it right!
	5-1402msg2.txt	Not Spam	 Got it right!
	5-1402msg3.txt	Not Spam	 Got it right!
	5-1405msg1.txt	Not Spam	 Got it right!
	5-1405msg2.txt	Not Spam	 Got it right!
	5-1405msg3.txt	Not Spam	 Got it right!
	5-1413msg1.txt	Not Spam	 Got it right!
	5-1413msg2.txt	Not Spam	 Got it right!
	5-1413msg3.txt	Not Spam	 Got it right!
	5-1413msg4.txt	Not Spam	 Got it right!
	5-1413msg5.txt	Not Spam	 Got it right!
	5-1415msg1.txt	Not Spam	 Got it right!
	5-1415msg2.txt	Not Spam	 Got it right!
	5-1415msg3.txt	Not Spam	 Got it right!
	5-1416msg1.txt	Not Spam	 Got it right!
	5-1419msg1.txt	Not Spam	 Got it right!
	5-1420msg1.txt	Not Spam	 Got it right!
	5-1420msg2.txt	Not Spam	 Got it right!
	5-1420msg3.txt	Not Spam	 Got it right!
	5-1426msg1.txt	Not Spam	 Got it right!
	5-1426msg2.txt	Not Spam	 Got it right!
	5-1426msg3.txt	Not Spam	 Got it right!
	5-1430msg1.txt	Not Spam	 Got it right!
	5-1430msg2.txt	Not Spam	 Got it right!
	5-1430msg3.txt	Not Spam	 Got it right!
	5-1431msg1.txt	Not Spam	 Got it right!
	5-1432msg1.txt	Not Spam	 Got it right!
	5-1434msg1.txt	Not Spam	 Got it right!
	5-1434msg2.txt	Not Spam	 Got it right!
	5-1434msg3.txt	Not Spam	 Got it right!
	5-1435msg1.txt	Not Spam	 Got it right!
	5-1435msg2.txt	Not Spam	 Got it right!
	5-1435msg3.txt	Not Spam	 Got it right!
	5-1439msg1.txt	Not Spam	 Got it right!
	5-1440msg1.txt	Not Spam	 Got it right!
	5-1442msg1.txt	Not Spam	 Got it right!
	5-1443msg1.txt	Not Spam	 Got it right!
	5-1444msg1.txt	Not Spam	 Got it right!
	5-1445msg1.txt	Not Spam	 Got it right!
	5-1450msg1.txt	Not Spam	 Got it right!
	5-1452msg1.txt	Not Spam	 Got it right!
	5-1453msg1.txt	Not Spam	 Got it right!
	5-1453msg2.txt	Not Spam	 Got it right!
	5-1453msg3.txt	Not Spam	 Got it right!
	5-1454msg1.txt	Not Spam	 Got it right!
	5-1454msg2.txt	Not Spam	 Got it right!
	5-1455msg1.txt	Not Spam	 Got it right!
	5-1455msg2.txt	Not Spam	 Got it right!
	5-1455msg3.txt	Not Spam	 Got it right!
	5-1458msg1.txt	Not Spam	 Got it right!
	5-1459msg1.txt	Not Spam	 Got it right!
	5-1459msg2.txt	Not Spam	 Got it right!
	5-1459msg3.txt	Not Spam	 Got it right!
	5-1460msg1.txt	Not Spam	 Got it right!
	5-1462msg1.txt	Not Spam	 Got it right!
	5-1462msg2.txt	Not Spam	 Got it right!
	5-1462msg3.txt	Not Spam	 Got it right!
	5-1463msg1.txt	Not Spam	 Got it right!
	5-1464msg1.txt	Not Spam	 Got it right!
	5-1466msg1.txt	Not Spam	 Got it right!
	5-1468msg1.txt	Not Spam	 Got it right!
	5-1470msg1.txt	Not Spam	 Got it right!
	5-1471msg1.txt	Not Spam	 Got it right!
	5-1472msg1.txt	Not Spam	 Got it right!
	5-1473msg1.txt	Not Spam	 Got it right!
	5-1474msg1.txt	Not Spam	 Got it right!
	5-1475msg1.txt	Not Spam	 Got it right!
	5-1479msg1.txt	Not Spam	 Got it right!
	5-1482msg1.txt	Not Spam	 Got it right!
	5-1482msg2.txt	Not Spam	 Got it right!
	5-1482msg3.txt	Not Spam	 Got it right!
	5-1482msg4.txt	Not Spam	 Got it right!
	5-1482msg5.txt	Not Spam	 Got it right!
	5-1484msg1.txt	Not Spam	 Got it right!
	5-1486msg1.txt	Not Spam	 Got it right!
	5-1487msg1.txt	Not Spam	 Got it right!
	5-1488msg1.txt	Not Spam	 Got it right!
	5-1488msg2.txt	Not Spam	 Got it right!
	5-1488msg3.txt	Not Spam	 Got it right!
	5-1490msg1.txt	Not Spam	 Got it right!
	5-1491msg1.txt	Not Spam	 Got it right!
	5-1492msg1.txt	Not Spam	 Got it right!
	5-1495msg1.txt	Not Spam	 Got it right!
	5-1496msg1.txt	Not Spam	 Got it right!
	5-1496msg2.txt	Not Spam	 Got it right!
	5-1496msg3.txt	Not Spam	 Got it right!
	5-1497msg1.txt	Not Spam	 Got it right!
	5-1498msg1.txt	Not Spam	 Got it right!
	5-1499msg1.txt	Not Spam	 Got it right!
	5-1503msg1.txt	Not Spam	 Got it right!
	5-1504msg1.txt	Not Spam	 Got it right!
	5-1505msg1.txt	Not Spam	 Got it right!
	5-1506msg1.txt	Not Spam	 Got it right!
	5-1508msg1.txt	Not Spam	 Got it right!
	5-1508msg2.txt	Not Spam	 Got it right!
	5-1508msg3.txt	Not Spam	 Got it right!
	5-1509msg1.txt	Not Spam	 Got it right!
	5-1510msg1.txt	Not Spam	 Got it right!
	5-1510msg2.txt	Not Spam	 Got it right!
	5-1510msg3.txt	Not Spam	 Got it right!
	5-1511msg1.txt	Not Spam	 Got it right!
	6-1000msg1.txt	Not Spam	 Got it right!
	6-1001msg1.txt	Not Spam	 Got it right!
	6-1002msg1.txt	Not Spam	 Got it right!
	6-1003msg1.txt	Not Spam	 Got it right!
	6-1004msg1.txt	Not Spam	 Got it right!
	6-1005msg1.txt	Not Spam	 Got it right!
	6-1008msg1.txt	Not Spam	 Got it right!
	6-1009msg1.txt	Not Spam	 Got it right!
	6-1010msg1.txt	Not Spam	 Got it right!
	6-1011msg1.txt	Not Spam	 Got it right!
	6-1013msg1.txt	Not Spam	 Got it right!
	6-1017msg1.txt	Not Spam	 Got it right!
	6-1018msg1.txt	Not Spam	 Got it right!
	6-1019msg1.txt	Not Spam	 Got it right!
	6-1020msg1.txt	Not Spam	 Got it right!
	6-1021msg1.txt	Not Spam	 Got it right!
	6-1022msg1.txt	Not Spam	 Got it right!
	6-1025msg1.txt	Not Spam	 Got it right!
	6-1029msg1.txt	Not Spam	 Got it right!
	6-1030msg1.txt	Not Spam	 Got it right!
	6-1030msg2.txt	Not Spam	 Got it right!
	6-1030msg3.txt	Not Spam	 Got it right!
	6-1031msg1.txt	Not Spam	 Got it right!
	6-1032msg1.txt	Not Spam	 Got it right!
	6-1033msg1.txt	Not Spam	 Got it right!
	6-1035msg1.txt	Not Spam	 Got it right!
	6-1036msg1.txt	Not Spam	 Got it right!
	6-1036msg2.txt	Not Spam	 Got it right!
	6-1036msg3.txt	Not Spam	 Got it right!
	6-1037msg1.txt	Not Spam	 Got it right!
	6-1037msg2.txt	Not Spam	 Got it right!
	6-1037msg3.txt	Not Spam	 Got it right!
	6-1039msg1.txt	Not Spam	 Got it right!
	6-1040msg1.txt	Not Spam	 Got it right!
	6-1041msg1.txt	Not Spam	 Got it right!
	6-1044msg1.txt	Not Spam	 Got it right!
	6-1045msg1.txt	Not Spam	 Got it right!
	6-1047msg1.txt	Not Spam	 Got it right!
	6-1048msg1.txt	Not Spam	 Got it right!
	6-1049msg1.txt	Not Spam	 Got it right!
	6-1050msg1.txt	Not Spam	 Got it right!
	6-1050msg2.txt	Not Spam	 Got it right!
	6-1050msg3.txt	Not Spam	 Got it right!
	6-1051msg1.txt	Not Spam	 Got it right!
	6-1052msg1.txt	Not Spam	 Got it right!
	6-1055msg1.txt	Not Spam	 Got it right!
	6-1056msg1.txt	Not Spam	 Got it right!
	spmsga1.txt	Spam	 Got it right!
	spmsga10.txt	Spam	 Got it right!
	spmsga100.txt	Spam	 Got it right!
	spmsga101.txt	Spam	 Got it right!
	spmsga102.txt	Spam	 Got it right!
	spmsga103.txt	Spam	 Got it right!
	spmsga104.txt	Spam	 Got it right!
	spmsga105.txt	Spam	 Got it right!
	spmsga106.txt	Spam	 Got it right!
	spmsga107.txt	Spam	 Got it right!
	spmsga108.txt	Spam	 Got it right!
	spmsga109.txt	Spam	 Got it right!
	spmsga11.txt	Spam	 Got it right!
	spmsga110.txt	Spam	 Got it right!
	spmsga111.txt	Spam	 Got it right!
	spmsga112.txt	Spam	 Got it right!
	spmsga113.txt	Spam	 Got it right!
	spmsga114.txt	Spam	 Got it right!
	spmsga115.txt	Spam	 Got it right!
	spmsga116.txt	Spam	 Got it right!
	spmsga117.txt	Spam	 Got it right!
	spmsga118.txt	Spam	 Got it right!
	spmsga119.txt	Spam	 Got it right!
	spmsga12.txt	Spam	 Got it right!
	spmsga120.txt	Spam	 Got it right!
	spmsga121.txt	Spam	 Got it right!
	spmsga122.txt	Spam	 Got it right!
	spmsga123.txt	Spam	 Got it right!
	spmsga124.txt	Spam	 Got it right!
	spmsga125.txt	Spam	 Got it right!
	spmsga126.txt	Spam	 Got it right!
	spmsga127.txt	Spam	 Got it right!
	spmsga128.txt	Spam	 Got it right!
	spmsga129.txt	Spam	 Got it right!
	spmsga13.txt	Spam	 Got it right!
	spmsga130.txt	Spam	 Got it right!
	spmsga131.txt	Spam	 Got it right!
	spmsga132.txt	Spam	 Got it right!
	spmsga133.txt	Spam	 Got it right!
	spmsga134.txt	Spam	 Got it right!
	spmsga135.txt	Spam	 Got it right!
	spmsga136.txt	Spam	 Got it right!
	spmsga137.txt	Spam	 Got it right!
	spmsga138.txt	Spam	 Got it right!
	spmsga139.txt	Spam	 Got it right!
	spmsga14.txt	Spam	 Got it right!
	spmsga140.txt	Spam	 Got it right!
	spmsga141.txt	Spam	 Got it right!
	spmsga142.txt	Spam	 Got it right!
	spmsga143.txt	Spam	 Got it right!
	spmsga144.txt	Spam	 Got it right!
	spmsga145.txt	Spam	 Got it right!
	spmsga146.txt	Spam	 Got it right!
	spmsga147.txt	Spam	 Got it right!
	spmsga148.txt	Spam	 Got it right!
	spmsga149.txt	Spam	 Got it right!
	spmsga15.txt	Spam	 Got it right!
	spmsga150.txt	Spam	 Got it right!
	spmsga151.txt	Spam	 Got it right!
	spmsga152.txt	Spam	 Got it right!
	spmsga153.txt	Spam	 Got it right!
	spmsga154.txt	Spam	 Got it right!
	spmsga155.txt	Spam	 Got it right!
	spmsga156.txt	Spam	 Got it right!
	spmsga157.txt	Spam	 Got it right!
	spmsga158.txt	Spam	 Got it right!
	spmsga159.txt	Spam	 Got it right!
	spmsga16.txt	Spam	 Got it right!
	spmsga160.txt	Spam	 Got it right!
	spmsga161.txt	Spam	 Got it right!
	spmsga162.txt	Spam	 Got it right!
	spmsga163.txt	Spam	 Got it right!
	spmsga164.txt	Spam	 Got it right!
	spmsga165.txt	Spam	 Got it right!
	spmsga166.txt	Spam	 Got it right!
	spmsga17.txt	Spam	 Got it right!
	spmsga18.txt	Spam	 Got it right!
	spmsga19.txt	Spam	 Got it right!
	spmsga2.txt	Spam	 Got it right!
	spmsga20.txt	Spam	 Got it right!
	spmsga21.txt	Spam	 Got it right!
	spmsga22.txt	Spam	 Got it right!
	spmsga23.txt	Spam	 Got it right!
	spmsga24.txt	Spam	 Got it right!
	spmsga25.txt	Spam	 Got it right!
	spmsga26.txt	Spam	 Got it right!
	spmsga27.txt	Spam	 Got it right!
	spmsga28.txt	Spam	 Got it right!
	spmsga29.txt	Spam	 Got it right!
	spmsga3.txt	Spam	 Got it right!
	spmsga30.txt	Spam	 Got it right!
	spmsga31.txt	Spam	 Got it right!
	spmsga32.txt	Spam	 Got it right!
	spmsga33.txt	Spam	 Got it right!
	spmsga34.txt	Spam	 Got it right!
	spmsga35.txt	Spam	 Got it right!

	Correct: 337
	Wrong: 0
