# PyPI Yayınlama Rehberi

Bu dosya, `ibrahimguney/web-proje` deposundaki Python paketini **PyPI.org** sitesine yayınlamak için adım adım talimatları içerir.

---

## 🪪 1. PyPI Hesabı Oluşturma
1. [https://pypi.org/account/register/](https://pypi.org/account/register/) adresine git.
2. Kullanıcı adı olarak **ibrahimguney** yaz.
3. E-posta adresini doğrula.

---

## 🔑 2. API Token Oluşturma
1. PyPI'de oturum aç.
2. Sağ üstten **Account settings → API tokens** menüsüne git.
3. **Add API token** butonuna tıkla.
4. "Scope: Entire account (upload all packages)" seçeneğini işaretle.
5. Oluşturulan token’ı kopyala. (Bu token bir daha gösterilmez.)

---

## ⚙️ 3. GitHub Actions İçin Secret Ekleme
1. `ibrahimguney/web-proje` deposunda **Settings → Secrets and variables → Actions** sekmesine git.
2. **New repository secret** butonuna tıkla.
   - Name: `PYPI_API_TOKEN`
   - Value: (PyPI'den aldığın token)

Bu secret, `.github/workflows/publish.yml` iş akışında otomatik kullanılacaktır.

---

## 🚀 4. Paket Yayınlama
1. Paket sürümünü güncelle (`pyproject.toml` içinde `version` satırı).
2. Etiket oluştur ve gönder:
   ```bash
   git tag v0.1.0
   git push origin v0.1.0
   ```
3. GitHub Actions otomatik olarak çalışacak ve paketi PyPI'ye yükleyecek.

---

## ✅ 5. Doğrulama
Yayın tamamlandıktan sonra paket şu adreste listelenir:

➡️ [https://pypi.org/user/ibrahimguney/](https://pypi.org/user/ibrahimguney/)

ve kurulumu test etmek için:
```bash
pip install tutorial-package-izustyle
```

---

📘 *Bu rehber, İZÜ için hazırlanan öğretici paket altyapısına özeldir.*
