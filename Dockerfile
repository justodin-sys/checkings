# 1. Aşama: Temel imaj olarak Nginx'in hafif (alpine) sürümünü kullan.
# Nginx, statik dosyaları (HTML, CSS, JS) sunmak için harika bir web sunucusudur.
FROM nginx:alpine

# 2. Aşama: Yerel makinedeki 'index.html' dosyasını kopyala.
# Bu dosyayı, Nginx'in varsayılan olarak web dosyalarını sunduğu
# /usr/share/nginx/html klasörünün içine kopyala.
#
# EĞER style.css, app.js gibi başka dosyalarınız varsa:
# Sadece 'COPY index.html ...' satırı yerine
# 'COPY . /usr/share/nginx/html/' satırını kullanabilirsiniz.
# Bu, mevcut klasördeki *tüm* dosyaları konteynere kopyalar.
COPY index.html /usr/share/nginx/html/

# 3. Aşama: Portu belirt.
# Nginx varsayılan olarak 80 numaralı portu dinler.
# Bu satır, Docker'a konteynerin bu portu kullanacağını bildirir.
EXPOSE 80

# 4. Aşama: Sunucuyu başlat.
# Bu komuta gerek YOKTUR, çünkü 'nginx:alpine' imajı
# varsayılan olarak Nginx'i başlatan bir komutla (CMD) birlikte gelir.
# (CMD ["nginx", "-g", "daemon off;"])
