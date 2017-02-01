## 1. Geleneksel Rails Ödevleri verildi.

### Sorular
1-kitapların listelendiği sayfadan bir kitap seçip kullanıcının kitaplığına ekleme işlemi alışveriş sitelerindeki ürünü sepete atma gibi mi?Ordan oraya nasıl kopyalama yapılıcak ipucu verebilecek olan var mı?




### Cevaplar
1-) Bu durum için standart olan ve ilk akla gelen senaryo şu şekilde gerçekleştirilebilir:
Öncelikle User ve Book modeli oluşturulur. Daha sonra bir model daha oluşturulur. Bu modelde **user_id** ve **book_id** alanları tutulur. Böylece bu tablo üzerinden ilişki sağlanmış olacaktır. Join Table olayına bakmakta fayda var. Yararlı linklerde yer alıyor. Bu başlık yardımcı olacaktır: **2.4 The has_many :through Association**

