# Practical Statistics for Data Scientists (Çalışma Alanı)

Kaynak repo: https://github.com/gedeck/practical-statistics-for-data-scientists

Bu sayfa, açık kaynak içeriği **lisansına uygun şekilde** referans vererek derlemek ve Türkçe ders sitemize entegre etmek için hazırlanmıştır.

## Nasıl Çalışacağız?
1. **Fork** (önerilir): Kaynak repoyu GitHub hesabına fork et.
2. **İçerik Senkronizasyonu**: Aşağıdaki klasörlerde gerekli dosyaları Türkçe notlarla birlikte ekle.
3. **Atıf/Lisans**: Orijinal lisans ve atıf notlarını koru.

## Önerilen Klasör Yapısı

````
 docs/statistics/practical-statistics/
 ├── 01-intro.md
 ├── 02-descriptive.md
 ├── 03-probability.md
 ├── 04-distributions.md
 ├── 05-sampling-clt.md
 ├── 06-estimation-ci.md
 ├── 07-hypothesis-testing.md
 ├── 08-correlation-regression.md
 └── LICENSE_UPSTREAM.md
````

> Not: Bölüm adları kaynak kitaptaki ana başlıklara paraleldir; net eşleştirme için içerik gezilerek güncellenecek.

## İş Akışı
- Her bölüm dosyasının en üstünde **kaynak bağlantıyı** ver.
- Bölüm sonunda **Türkçe özeti** ve **örnek veri/uygulama** ekle.
- İlgili Jupyter Notebook varsa `examples/` klasöründe paylaş.

## MkDocs Navigasyon
`mkdocs.yml` içine şu blok eklendi:

````
  - İstatistik:
      - Giriş: statistics/index.md
      - Ders Planı: statistics/plan.md
      - Kaynaklar: statistics/resources.md
      - Practical Statistics (TR): statistics/practical-statistics.md
````

Gerekirse alt başlıklar halinde her bölümü menüye ekleyebiliriz.

---
**Not:** Şimdilik dosyaları link vererek başlatıyoruz. İstersen doğrudan **fork** edip bu repo altına **subtree** ya da **kısmi kopya** olarak taşıma da yapabilirim.