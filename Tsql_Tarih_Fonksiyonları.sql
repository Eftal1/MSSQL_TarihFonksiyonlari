

-- Tarih Fonksiyonlar�

-- GETDATE : Bug�n�n tarihini verir

SELECT GETDATE()

-- DATEADD : Verilen Tarihe verildi�i kadar g�n,ay,y�l ekler

SELECT DATEADD (DAY, 999, GETDATE())
SELECT DATEADD (MONTH, 999, GETDATE())
SELECT DATEADD (YEAR, 999, GETDATE())

--DATEDIFF : �ki tarih aras�ndaki g�n,ay,y�l� hesaplar

SELECT DATEDIFF (DAY, '2023-05-01', GETDATE())
SELECT SatisTarihi, DATEDIFF (DAY, SatisTarihi, GETDATE()) AS GunSayisi FROM Satislar

SELECT DATEDIFF (MONTH, '2022-12-01', GETDATE())
SELECT SatisTarihi, DATEDIFF (MONTH, SatisTarihi, GETDATE()) AS AySayisi FROM Satislar

SELECT DATEDIFF (YEAR, '2022-01-01', GETDATE())
SELECT SatisTarihi, DATEDIFF (YEAR, SatisTarihi, GETDATE()) AS YilSayisi FROM Satislar


SELECT SatisTarihi, 
DATEDIFF(YEAR, SatisTarihi, GETDATE()) AS YilSayisi,
DATEDIFF(MONTH, SatisTarihi, GETDATE()) AS AySayisi,
DATEDIFF(DAY, SatisTarihi, GETDATE())AS YilSayisi
FROM Satislar

-- DATEPART: Verilen tarihin haftan�n, ay�n veya y�l�n ka��nc� g�n� oldu�unu hesaplar

SELECT DATEPART (DW, GETDATE())
SELECT DATEPART (DAY, GETDATE())
SELECT DATEPART (MONTH, GETDATE())

SELECT 
DATEPART(DAY, SatisTarihi),
DATEPART(MONTH, SatisTarihi),
DATEPART(YEAR, SatisTarihi) 
FROM Satislar