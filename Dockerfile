FROM mcr.microsoft.com/playwright:v1.60.0-noble

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev --no-audit --no-fund
# Pastikan Chromium sesuai versi playwright di lockfile (no-op jika sudah ada di image)
RUN npx playwright install chromium

COPY . .

ENV NODE_ENV=production
ENV USE_PLAYWRIGHT=true
ENV PORT=3000

EXPOSE 3000

CMD ["npm", "start"]
