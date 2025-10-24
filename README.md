# Öğretici Paket (Tutorial Package)

Bu depo, GitHub üzerinde **öğretici içerik** yayınlamak için hazır bir paket şablonu sunar.
Aşağıdakileri içerir:
- Python paketi (`src/tutorial_package`)
- Örnekler (`examples/`)
- Dokümantasyon sitesi (MkDocs, `docs/` + `mkdocs.yml`)
- GitHub Actions ile **GitHub Pages**'a otomatik yayın (docs.yml)
- (İsteğe bağlı) PyPI yayın iş akışı (publish.yml)

## Hızlı Başlangıç
```bash
# Geliştirme ortamı
python -m venv .venv && source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -r requirements.txt

# Yerelde dokümanları çalıştır
mkdocs serve

# Örnek kodu çalıştır
python -m tutorial_package
```

## Yapı
```
tutorial-package/
├── README.md
├── requirements.txt
├── pyproject.toml
├── mkdocs.yml
├── docs/
│   ├── index.md
│   ├── installation.md
│   └── usage.md
├── src/
│   └── tutorial_package/
│       ├── __init__.py
│       └── main.py
├── examples/
│   └── quickstart.ipynb
└── .github/
    └── workflows/
        ├── docs.yml
        └── publish.yml
```

## Yayın
- **Doküman**: `main` dalına itince otomatik **GitHub Pages**’e deploy olur.
- **PyPI**: `publish.yml` iş akışını manuel tetikleyerek ya da bir sürüm etiketi (`v0.1.0`) ile yayınlayabilirsiniz.
