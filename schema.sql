-- ========================================================
-- Schema Database Supabase: Portal Rekapitulasi PNBP TWA GS
-- Proyek: ydngshjcrjkerwztibjo.supabase.co
-- ========================================================

-- 1. Tabel Transaksi Harian (Sudah ada & aktif)
CREATE TABLE IF NOT EXISTS "transaksiHarian" (
    id BIGINT PRIMARY KEY,
    tanggal DATE NOT NULL,
    loket INT NOT NULL,
    nusantara INT DEFAULT 0,
    asing INT DEFAULT 0,
    "nusantaraCash" INT DEFAULT 0,
    "nusantaraQris" INT DEFAULT 0,
    "nusantaraVa" INT DEFAULT 0,
    "asingCash" INT DEFAULT 0,
    "asingQris" INT DEFAULT 0,
    "asingVa" INT DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

-- Policy untuk transaksiHarian (Public Anon Read & Write)
ALTER TABLE "transaksiHarian" ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Allow all on transaksiHarian" ON "transaksiHarian" 
    FOR ALL USING (true) WITH CHECK (true);

-- 2. Tabel Hari Libur Custom
CREATE TABLE IF NOT EXISTS "customHolidays" (
    id BIGSERIAL PRIMARY KEY,
    bulan INT NOT NULL,
    tanggal INT NOT NULL,
    nama TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

-- Policy untuk customHolidays (Izinkan Anon untuk Read & Write)
ALTER TABLE "customHolidays" ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Allow all on customHolidays" ON "customHolidays" 
    FOR ALL USING (true) WITH CHECK (true);

-- 3. Tabel Berita Acara (Opsional untuk Cloud)
CREATE TABLE IF NOT EXISTS "beritaAcara" (
    id BIGINT PRIMARY KEY,
    loket INT NOT NULL,
    bulan TEXT NOT NULL,
    awal INT NOT NULL,
    akhir INT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

ALTER TABLE "beritaAcara" ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Allow all on beritaAcara" ON "beritaAcara" 
    FOR ALL USING (true) WITH CHECK (true);

-- 4. Tabel Stok Opname Karcis (Opsional untuk Cloud)
CREATE TABLE IF NOT EXISTS "stokOpname" (
    id BIGINT PRIMARY KEY,
    loket INT NOT NULL,
    tanggal DATE NOT NULL,
    awal INT NOT NULL,
    akhir INT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now())
);

ALTER TABLE "stokOpname" ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Allow all on stokOpname" ON "stokOpname" 
    FOR ALL USING (true) WITH CHECK (true);
