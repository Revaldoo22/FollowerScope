# Social Scraper (Instagram + TikTok + IG/TikTok Content Views)

Frontend: HTML + CSS (input list + menu platform)
Backend: Node.js (Express)

## Cara jalanin

1. Install dependency:
   npm install
2. Install Chromium for local browser-based profile scraping:
   npx playwright install chromium
3. Copy env:
   copy .env.example .env
4. (Opsional, untuk IG content views lebih akurat) isi `INSTAGRAM_SESSIONID` di `.env`
5. Jalankan server:
   npm start
6. Buka browser:
   http://localhost:3000

## Format input

1. Instagram Followers / TikTok Followers  
   Masukkan username dipisah baris atau koma, contoh:

instagram
cristiano,nike

2. Instagram Content Views  
   Masukkan URL/shortcode konten Instagram video/reel dipisah baris atau koma, contoh:

https://www.instagram.com/reel/SHORTCODE/
SHORTCODE

3. TikTok Content Views  
   Masukkan URL video TikTok atau video ID dipisah baris atau koma, contoh:

https://www.tiktok.com/@user/video/1234567890123456789
1234567890123456789

## Catatan

- Tool ini hanya untuk data publik.
- Jangan dipakai untuk spam atau aktivitas yang melanggar kebijakan platform.
- Instagram dan TikTok bisa mengubah endpoint sewaktu-waktu.
- Untuk TikTok, project ini menggunakan `tikwm` dengan fallback ke data profil publik TikTok jika `tikwm` tidak tersedia.
- Endpoint IG Content Views: `POST /api/instagram/content-views`.
- Endpoint TikTok Content Views: `POST /api/tiktok/content-views`.
- Jika `views` tidak muncul, isi `INSTAGRAM_SESSIONID` (akun login yang memang bisa melihat angka views).
