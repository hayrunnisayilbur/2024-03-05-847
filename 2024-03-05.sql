-- kayıt ekleme örneği
INSERT INTO butce
VALUES (NULL,'Kırtasiye Öğretmen İstemiş',11,250,'2024-03-05');


-- kayıt güncelleme örneği
UPDATE butce
SET tanim = 'Öğretmen değil, müdür istemiş', miktar = 1500
WHERE id = 91;

-- kayıt silme örneği
DELETE FROM butce WHERE id= 91;


-- 2024-02-15 BIMden 680 liralık alışveriş yapılmıştır. 
-- Aynı gün memleketten dayım 5000 lira para göndermiştir.
INSERT INTO butce
VALUES(NULL,'BİM Alışveriş',6,680,'2024-02-15');

INSERT INTO butce
VALUES(NULL,'Para geldi',5,5000,'2024-02-15');

-- 2025-07-15 tarhinde yapılan tüm işlemleri iptal edin.
DELETE FROM butce WHERE tarih = '2025-07-15';

-- Tüm yakıt masraflarını 150 lira arttırın. NOT: eski değerinin üzerine 150 lira eklensin.

UPDATE butce
SET miktar = miktar + 150
WHERE tur_id = 10;

-- bütçe tablosundan tanim,miktar ve tarih sütunlarını kullanarak tüm verileri getir.
SELECT id,tanim,tur_id,miktar,tarih
FROM butce;

SELECT *
FROM butce;


SELECT DISTINCT tarih
FROM butce;


-- bütçe tablosunda kaç tane kayıt olduğunu getirin
SELECT COUNT(*)
FROM butce;


-- işlem gerçkeleştirilen tarihlerin sayısını getirin.
SELECT COUNT(DISTINCT tarih)
FROM butce;

-- tur_idsi 1 olan kayıtları getir.
SELECT *
FROM butce
WHERE tur_id = 1;

-- yapılan işlemlerden miktarı 10000 üzerinde olan kayıtları getirin.

SELECT *  -- ekranda göster
FROM butce  -- hangi tablodan
WHERE miktar > 10000; -- hangi şartlara uygun olacak


-- yapılan işlemlerden miktarı 20000 ile 25000 arasında olan 
-- kayıtların tanım,miktar ve tarihlerini getirin.
SELECT tanim, miktar, tarih
FROM butce
WHERE miktar > 20000 AND miktar <= 25000;

-- türü 1 olmayan kayıtların tamamını getırın

-- türü 6 ve 9 olanlar getirilsin.
SELECT *
FROM butce
WHERE tur_id = 6 OR tur_id = 9;

-- between ile yapılacak. 2024 yılı içinde yapılan işlemleri getirin.
SELECT * 
FROM butce
WHERE tarih BETWEEN '2024-01-01' AND '2024-12-31';


-- tur_idsi 6,9,15 olan kayıtları getirin.
SELECT *
FROM butce
WHERE tur_id IN (6,9,15);

-- mayıs ayından önceki 250 ile 600 arasındaki harcamalar

SELECT *
FROM butce
WHERE tarih < '2024-05-01' AND (miktar BETWEEN 250 AND 600);


-- yapılan işlemleri tur_idsine göre azalan, 
-- tur_idsi aynı olanlarıda işlem tarihine göre artan şekilde sıralayınız.
SELECT *
FROM butce
ORDER BY tur_id DESC, tarih ASC;


-- butce tablosundaki ilk 20 kaydı getirin.
SELECT *
FROM butce
LIMIT 20;

-- butce tablosundaki kayıtları tarihe göre artan şekilde sıralayıp 
-- ilk yirmi kaydı getirin.

-- butce tablosundaki işlemleri miktara göre sıralayıp 
-- 20. sıradan sonraki 5 kaydı getirin.

-- butçe tablosundaki en yüksek işleme sahip olan kaydı getirin.

-- 2024 yılı içindeki en düşük işleme sahip işemin 
-- tanım, miktar ve tarih bilgilerini getirin.











