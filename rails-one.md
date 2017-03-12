# 1. Geleneksel Rails Ödevleri

## Konu

Bir kitaplık inşa edelim.

## Senaryo

Kullanıcı kayıt olur. Ardından giriş işlemini yapar. Kitaplarda istediği kitap olup olmadığına bakar. Eğer istediği kitap yok ise o kitabı oluşturur. Bu kitabı seçerek kitaplığına ekler.

### İhtiyaçlar

Bir **Book** ve **User** modeline ihtiyacımız var. **User** modeli devise ile birlikte oluşturulabilir. Devise ile oluşan alanlar dışında başka bir alan ihtiyacı yoktur. **Book** modeli ise name, description, year, author, publisher, number_of_pages gibi alanları olmalıdır.

Bir kullanıcının birden çok kitabı olabileceği gibi bir kitap da birden çok kullanıcıda
olabilir. İlişki bu şekilde tasarlanmalıdır. Üçüncü bir tablo bu ilişkiyi sağlamada yardımcı 
olabilir.

**User** için profil sayfası yeterli. Burada kendi bilgileri ve kitaplığı yer almalı. **Book** 
ise, yeni kayıt oluşturma, tüm kayıtları listeleme gibi aksiyonlara sahip olmalı. Kullanıcı bu 
kitaplardan istediğini seçebilmeli ve kitaplığına ekleyebilmelidir.

## Yararlı Şeyler
[Devise](https://github.com/plataformatec/devise)

[İlişkiler]([http://guides.rubyonrails.org/association_basics.html)
