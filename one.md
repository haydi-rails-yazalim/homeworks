## Ödevi Çekme ve Gönderme

```
git clone git@github.com:haydi-rails-yazalim/homeworks.git
```
ile projeyi yerelinize çekiniz. Ardından ```cd homeworks``` ile proje dizinine geçiniz. Yeni bir branch ```git checkout -b one/my-github-username``` açınız. Burada kendi github username'inizi kullanınız. Şimdi ```one.rb``` dosyasını bir editör ile açarak ödeve başlayabilirsiniz :)

Ödevi bitirdikten sonra ```git add one.rb``` ve ```git commit -m"birinci ödev"``` ile yerelinize kaydediniz. Ardından ```git push origin one/my-github-username``` branch'ine gönderiniz. Son olarak Github üzerinden Pull-Request açınız.


## Ödev Detayı

* Kullanıcıdan 3 değer alınacak ve  diziye atılacak. Dizi ```me``` adında bir ```örnek``` değişkene atanmalı. Sırasıyla alınız ve atınız.(```age```, ```name```, ```school```)
* Dizi indisiyle belirterek ```name``` 'in ve ```school``` 'un karakter uzunluğunun toplamını ```sum``` adındaki ```örnek``` değişkene atayınız.
* Akış kontrolü ile aşağıdaki işlemleri yapınız.
  * Eğer ```sum``` değişkeninin uzunluğu 7'den büyük ise ```me``` dizisine "7'den büyük" elemanını ekleyiniz.
  * Eğer ```sum``` değişkeninin uzunluğu 7'den büyük değil ise ```me``` dizisinin tüm elemanlarını çıkartıp sadece "7'den küçük" elemanını ekleyiniz.

* Son olarak ```me``` dizisini ekrana yazdırınız.