#!/usr/bin/env bash
set -euo pipefail

# Bu script, 'Practical Statistics for Data Scientists' reposundan seçili dosyaları
# dokümantasyon klasörüne indirip günceller.
#
# Kullanım:
#   bash scripts/sync_practical_statistics.sh
#
# Gereksinimler: bash, git, curl

BASE_DIR=docs/statistics/practical-statistics
UPSTREAM=https://raw.githubusercontent.com/gedeck/practical-statistics-for-data-scientists/master

mkdir -p "$BASE_DIR"

# Örnek dosyalar (gerekirse çoğaltılabilir)
# README ve lisans
curl -fsSL "$UPSTREAM/README.md" -o "$BASE_DIR/UPSTREAM_README.md"
if curl -fsSL "$UPSTREAM/LICENSE" -o "$BASE_DIR/LICENSE_UPSTREAM.md"; then
  echo "Lisans indirildi"
else
  echo "Uyarı: LICENSE bulunamadı veya indirilemedi"
fi

# Buraya ek bölümler ekleyebilirsin; örneğin kitap bölümlerinin md/ipynb dosyaları
# curl -fsSL "$UPSTREAM/chapters/02-descriptive.md" -o "$BASE_DIR/02-descriptive.md" || true

echo "Senkr. tamamlandı. Değişiklikleri commit etmeyi unutma."
