/*
 Navicat Premium Data Transfer

 Source Server         : hp
 Source Server Type    : PostgreSQL
 Source Server Version : 140005 (140005)
 Source Host           : localhost:5432
 Source Catalog        : infobed
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140005 (140005)
 File Encoding         : 65001

 Date: 15/12/2022 14:18:38
*/


-- ----------------------------
-- Sequence structure for log_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."log_log_id_seq";
CREATE SEQUENCE "public"."log_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_bed_m_bed_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_bed_m_bed_id_seq";
CREATE SEQUENCE "public"."m_bed_m_bed_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_puskesmas_pkm_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_puskesmas_pkm_id_seq";
CREATE SEQUENCE "public"."m_puskesmas_pkm_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_ruangg_ruang_idd_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_ruangg_ruang_idd_seq";
CREATE SEQUENCE "public"."m_ruangg_ruang_idd_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_user_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_user_user_id_seq";
CREATE SEQUENCE "public"."m_user_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for t_bed_bed_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."t_bed_bed_id_seq";
CREATE SEQUENCE "public"."t_bed_bed_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for log_bed
-- ----------------------------
DROP TABLE IF EXISTS "public"."log_bed";
CREATE TABLE "public"."log_bed" (
  "bed_id" int4 NOT NULL DEFAULT nextval('t_bed_bed_id_seq'::regclass),
  "m_bed_id" int2,
  "bed_kapasitas" int2,
  "bed_pria" int2,
  "bed_wanita" int2,
  "bed_campur" int2,
  "bed_anak" int2,
  "bed_terisi" inet,
  "bed_kelas" inet,
  "bed_created_date" timestamp(6),
  "bed_created_by" varchar(60) COLLATE "pg_catalog"."default",
  "bed_updated_date" date,
  "bed_updated_by" varchar(60) COLLATE "pg_catalog"."default",
  "m_ruang_id" int4
)
;

-- ----------------------------
-- Records of log_bed
-- ----------------------------

-- ----------------------------
-- Table structure for m_bed
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_bed";
CREATE TABLE "public"."m_bed" (
  "m_bed_id" int4 NOT NULL DEFAULT nextval('m_bed_m_bed_id_seq'::regclass),
  "m_bed_nama" varchar(60) COLLATE "pg_catalog"."default",
  "m_bed_kode" varchar(60) COLLATE "pg_catalog"."default",
  "m_bed_created_date" date,
  "m_bed_created_by" varchar(60) COLLATE "pg_catalog"."default",
  "m_bed_updated_date" date,
  "m_bed_updated_by" varchar(60) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of m_bed
-- ----------------------------
INSERT INTO "public"."m_bed" VALUES (1, 'A I', 'A I', '2022-12-14', 'admin', NULL, NULL);
INSERT INTO "public"."m_bed" VALUES (2, 'A II', 'A II', '2022-12-14', 'admin', NULL, NULL);
INSERT INTO "public"."m_bed" VALUES (3, 'B III', 'B III', '2022-12-14', 'admin', NULL, NULL);
INSERT INTO "public"."m_bed" VALUES (4, 'C III', 'C III', '2022-12-14', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for m_puskesmas
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_puskesmas";
CREATE TABLE "public"."m_puskesmas" (
  "pkm_id" int4 NOT NULL DEFAULT nextval('m_puskesmas_pkm_id_seq'::regclass),
  "pkm_nama" varchar(100) COLLATE "pg_catalog"."default",
  "pkm_nomor" varchar(20) COLLATE "pg_catalog"."default",
  "pkm_alamat" varchar(150) COLLATE "pg_catalog"."default",
  "pkm_nama_kepala" varchar(100) COLLATE "pg_catalog"."default",
  "pkm_wilayah" varchar(40) COLLATE "pg_catalog"."default",
  "pkm_no_telp" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of m_puskesmas
-- ----------------------------
INSERT INTO "public"."m_puskesmas" VALUES (1, 'Asemrowo', NULL, 'Jln. Asem Raya No. 8', 'dr. Diah Miryati', NULL, '(031) 5456122 / 081252965070');
INSERT INTO "public"."m_puskesmas" VALUES (2, 'Balas Klumprik', NULL, 'Jln. Raya Balas Klumprik', 'dr. Yessy Pebriaty Sukatendel, MM', NULL, '(031) 7665219');
INSERT INTO "public"."m_puskesmas" VALUES (3, 'Balongsari', NULL, 'Jln. Balongsari Tama No. 2 Surabaya', 'dr. Dewi Ayuning Asih', NULL, '(031) 7417104');
INSERT INTO "public"."m_puskesmas" VALUES (4, 'Bangkingan', NULL, 'Jln. Banyu Urip Kidul 6/8', 'dr. Winartuti Santoso, M.Kes', NULL, '(031) 5685424 - 5615292 / 081334932007');
INSERT INTO "public"."m_puskesmas" VALUES (5, 'Banyu Urip', NULL, 'Jln. Raya Benowo No. 48', 'dr. Aloysius Tri Joehanto, MH', NULL, '(031) 7405936');
INSERT INTO "public"."m_puskesmas" VALUES (6, 'Benowo', NULL, 'Jln. Raya Benowo No. 48', 'dr. Aloysius Tri Joehanto, MH', NULL, '(031) 7405936');
INSERT INTO "public"."m_puskesmas" VALUES (7, 'Bulak Banteng', NULL, 'Jln. Dukuh Bulak Banteng Perintis Utama Lebar No.35', 'drg. Elfi Asriningdiah Poedji Utami', NULL, '(031) 3765209 / 081334932056');
INSERT INTO "public"."m_puskesmas" VALUES (8, 'Dr. Soetomo', NULL, 'Jln. Pandegiling No.223-A', 'dr. Murtiningrum', NULL, '81334932059');
INSERT INTO "public"."m_puskesmas" VALUES (9, 'Dukuh Kupang', NULL, 'Jln. Dukuh Kupang 25/48', 'dr. Khusnul Khowatin', NULL, '(031) 5677615');
INSERT INTO "public"."m_puskesmas" VALUES (10, 'Dupak', NULL, 'Jln. Dupak Bangunrejo Gg Poliklinik No.6 Surabaya', 'dr. RR. Endang Dwihastutiningsih', NULL, '(031) 3531009');
INSERT INTO "public"."m_puskesmas" VALUES (11, 'Gading', NULL, 'Jln. Kapas Lor 1 no 1 Surabaya', 'dr. Dwiastuti Setyorini', NULL, '(031) 3767736 / 089676962140');
INSERT INTO "public"."m_puskesmas" VALUES (12, 'Gayungan', NULL, 'Jln. Gayungsari Barat 124', 'drg. Harijanti Judaningsih', NULL, '(031) 8290043');
INSERT INTO "public"."m_puskesmas" VALUES (13, 'Gundih', NULL, 'Jln. Margodadi 36 - 38 Surabaya', 'dr. Tita Pusparini, M. Kes', NULL, '(031) 5476275');
INSERT INTO "public"."m_puskesmas" VALUES (14, 'Gunung Anyar', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."m_puskesmas" VALUES (15, 'Jagir', NULL, 'Jln. Bendul Merisi No 1', 'dr. Dessy Jumiaty Setia', NULL, '(031) 8416926 / 081334937379');
INSERT INTO "public"."m_puskesmas" VALUES (16, 'Jemursari', NULL, 'Jln. Jemursari Selatan IV/5', 'drg. Siti Januarsih', NULL, '(031)8414743 / 081259545370');
INSERT INTO "public"."m_puskesmas" VALUES (17, 'Jeruk', NULL, 'Jln. Raya Menganti Jeruk 277A', 'drg. Harjanti', NULL, '(031) 7521680 / 081335248385');
INSERT INTO "public"."m_puskesmas" VALUES (18, 'Kalijudan', NULL, 'Jln. Kalijudan No. 123', 'dr. Ageng Rusbaya', NULL, '(031) 3824566');
INSERT INTO "public"."m_puskesmas" VALUES (19, 'Kalirungkut', NULL, 'Jln. Rungkut Puskesmas No. 1', 'dr. Bernadetta Martini', NULL, '(031) 8700668');
INSERT INTO "public"."m_puskesmas" VALUES (20, 'Kebonsari', NULL, 'Jln. Kebonsari Manunggal No. 30 - 31', 'dr. Reyner Meilaksana S.M.H.Kes', NULL, '(031) 8294420');
INSERT INTO "public"."m_puskesmas" VALUES (21, 'Kedungdoro', NULL, 'Jln. Kaliasin Pompa 79-81 Surabaya', 'dr. Diah Roichan Arifiani, M.Kes', NULL, '(031) 5345968');
INSERT INTO "public"."m_puskesmas" VALUES (22, 'Kedurus', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."m_puskesmas" VALUES (23, 'Kenjeran', NULL, 'Jl. Tambak Deres 2 Surabaya', 'dr. Rosna Suswanti', NULL, '89515356046');
INSERT INTO "public"."m_puskesmas" VALUES (24, 'Keputih', NULL, 'Jln. Keputih Tegal No. 19', 'drg. Siti Rozaemah, M. Kes', NULL, '81336211653');
INSERT INTO "public"."m_puskesmas" VALUES (25, 'Ketabang', NULL, 'Jln. Jaksa Agung Suprapto No 10', 'dr. Joyce Hestia Nugrahanti', NULL, '(031) 5311999');
INSERT INTO "public"."m_puskesmas" VALUES (26, 'Klampis Ngasem', NULL, 'Jln. Arif Rahman Hakim 99B', 'dr. Denti Lina Rouli Tumanggor', NULL, '(031) 5992389');
INSERT INTO "public"."m_puskesmas" VALUES (27, 'Krembangan Selatan', NULL, 'Jln. Pesapen Selatan No. 70', 'dr. Raden Muhammad Ali Satria', NULL, '81252405563');
INSERT INTO "public"."m_puskesmas" VALUES (28, 'Lidah Kulon', NULL, 'Jln. Menganti No. 1111A', 'dr. Heni Agustina', NULL, '(031) 7533544');
INSERT INTO "public"."m_puskesmas" VALUES (29, 'Lontar', NULL, 'Jln. Lontar No. 26', 'dr. Maulidina Fitria Ning Tiyas', NULL, '(031) 7522874');
INSERT INTO "public"."m_puskesmas" VALUES (30, 'Made', NULL, 'Jln. Raya Made No 116 Kelurahan Made Kecamatan Sambikerep Surabaya', 'drg. Endang Susilowati', NULL, '(031) 7440828');
INSERT INTO "public"."m_puskesmas" VALUES (31, 'Manukan Kulon', NULL, 'Jln. Manukan Dalam 12 Tandes Surabaya', 'dr. Lolita Riamawati, M.Kes', NULL, '(031) 7405982');
INSERT INTO "public"."m_puskesmas" VALUES (32, 'Medokan Ayu', NULL, 'Jln. Medokan Asri Utara IV No. 31 Surabaya', 'dr. Dini Octavia Sitaresmi', NULL, '(031) 8720080');
INSERT INTO "public"."m_puskesmas" VALUES (33, 'Menur', NULL, 'Jln. Manyar Rejo 1 no. 35', 'dr. Medyana Puspita', NULL, '(031) 5948677');
INSERT INTO "public"."m_puskesmas" VALUES (34, 'Mojo', NULL, 'Jln. Mojo Klanggru Wetan 2/11', 'dr. Ratna Megasari, M.Kes', NULL, '(031) 5932332');
INSERT INTO "public"."m_puskesmas" VALUES (35, 'Morokrembangan', NULL, 'Jln. Tambakasri 13/7 Morokrembangan', 'dr. Nurul Ihsani', NULL, '(031) 7493259');
INSERT INTO "public"."m_puskesmas" VALUES (36, 'Mulyorejo', NULL, 'Jln. Mulyorejo Utara 201 BLK.', 'dr. Erna Mindarti', NULL, '(031) 3816885');
INSERT INTO "public"."m_puskesmas" VALUES (37, 'Ngagel Rejo', NULL, 'Jln. Ngagel Dadi III No.17', 'dr. Febria Sukmaini', NULL, '(031) 5047055');
INSERT INTO "public"."m_puskesmas" VALUES (38, 'Pacar Keling', NULL, 'Jln. Jolotundo Baru III/16', 'dr. Suluh Rahardjo', NULL, '(031) 50322310 / 081259819584');
INSERT INTO "public"."m_puskesmas" VALUES (39, 'Pakis', NULL, 'Jln. Kembang Kuning No.2', 'drg. Puspa Karmila', NULL, '(031) 5632985');
INSERT INTO "public"."m_puskesmas" VALUES (40, 'Pegirian', NULL, 'Jln. Karang Tembok No 39', 'dr. Retno Widayanti', NULL, '(031) 3766179');
INSERT INTO "public"."m_puskesmas" VALUES (41, 'Peneleh', NULL, 'Jln. Makam Peneleh No.35', 'dr. Ayu Ekanita Hendrayani', NULL, '(031) 5343473');
INSERT INTO "public"."m_puskesmas" VALUES (42, 'Perak Timur', NULL, 'Jln. Jakarta 9 Kel. Perak Timur Kec. Pabean Cantian Kab. Surabaya', 'dr. Anggraini Dian Prameswari', NULL, '(031) 3524247');
INSERT INTO "public"."m_puskesmas" VALUES (43, 'Pucang Sewu', NULL, 'Jln. Pucang Anom Timur No. 72', 'drg. Prasukma Yogawarti', NULL, '(031) 5018527');
INSERT INTO "public"."m_puskesmas" VALUES (44, 'Putat Jaya', NULL, 'Jln. Kupang Gunung V Raya no.16 Surabaya', 'drg. Teguh Rahayu', NULL, '(031) 5687637');
INSERT INTO "public"."m_puskesmas" VALUES (45, 'Rangkah', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."m_puskesmas" VALUES (46, 'Sawah Pulo', NULL, 'Jln. Sawah Pulo Lapangan No. 2', 'dr. Gerryd Dina Soepardi', NULL, '(031) 3296128');
INSERT INTO "public"."m_puskesmas" VALUES (47, 'Sawahan', NULL, 'Jln. Raya Arjuna 119', 'dr. Grace Augustien W', NULL, '(031) 5342375');
INSERT INTO "public"."m_puskesmas" VALUES (48, 'Sememi', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."m_puskesmas" VALUES (49, 'Sidosermo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."m_puskesmas" VALUES (50, 'Sidotopo', NULL, 'Jln. Pegirian No.236 Surabaya', 'dr. Galih Satryo Utomo', NULL, '(031) 3767735');
INSERT INTO "public"."m_puskesmas" VALUES (51, 'Sidotopo Wetan', NULL, 'Jln. Randu 38', 'dr. Evi Susanti', NULL, '(031) 3767737');
INSERT INTO "public"."m_puskesmas" VALUES (52, 'Simolawang', NULL, 'Jln. Simolawang II Barat 45 A', 'dr. Dwi Sapta Edy Purnama', NULL, '(031) 3717433 / 085954480937');
INSERT INTO "public"."m_puskesmas" VALUES (53, 'Simomulyo', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."m_puskesmas" VALUES (54, 'Siwalankerto', NULL, 'Jln. Siwalankerto No.134', 'dr. Sri Hawati', NULL, '(031) 8482487');
INSERT INTO "public"."m_puskesmas" VALUES (55, 'Tambak Rejo', NULL, 'Jln. Ngaglik 87', 'drg. Yekti Hapsari', NULL, '(031) 3715539');
INSERT INTO "public"."m_puskesmas" VALUES (56, 'Tambak Wedi', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."m_puskesmas" VALUES (57, 'Tanah Kali Kedinding', NULL, 'Jln. H. M. Noer 226', 'dr. Era Kartikawati', NULL, '(031) 51501347');
INSERT INTO "public"."m_puskesmas" VALUES (58, 'Tanjungsari', NULL, 'Jln. Raya Tanjungsari No.116', 'dr. Yunita Andriani', NULL, '(031) 7497858');
INSERT INTO "public"."m_puskesmas" VALUES (59, 'Tembok Dukuh', NULL, 'Jln. Kalibutuh No 26 Surabaya', 'drg. Tiyas Pranadani', NULL, '(031) 5343410');
INSERT INTO "public"."m_puskesmas" VALUES (60, 'Tenggilis', NULL, 'Jln. Rungkut Mejoyo Selatan IV/P-48', 'dr. Riana Restuti', NULL, '(031) 8490234');
INSERT INTO "public"."m_puskesmas" VALUES (61, 'Wiyung', NULL, 'Jln. Menganti Wiyung Pasar No. 1', 'dr. Tatien Tjahjandari', NULL, '(031) 7532885 / 082143561187');
INSERT INTO "public"."m_puskesmas" VALUES (62, 'Wonokromo', NULL, 'Jln. Karangrejo VI/4', 'drg. Dwiana Yuniarti', NULL, '(031) 8281647 / 082143561190');
INSERT INTO "public"."m_puskesmas" VALUES (63, 'Wonokusumo', NULL, 'Jln. Wonokusumo Tengah No.55', 'dr. Heri Siswanto', NULL, '(031) 3717597');

-- ----------------------------
-- Table structure for m_ruang
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_ruang";
CREATE TABLE "public"."m_ruang" (
  "ruang_id" int4 NOT NULL DEFAULT nextval('m_ruangg_ruang_idd_seq'::regclass),
  "ruang_nama" varchar(60) COLLATE "pg_catalog"."default",
  "ruang_kode" varchar(15) COLLATE "pg_catalog"."default",
  "ruang_kelas" varchar(5) COLLATE "pg_catalog"."default",
  "ruang_created_date" date,
  "ruang_created_by" varchar(60) COLLATE "pg_catalog"."default",
  "ruang_update_date" date,
  "ruang_update_by" varchar(60) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."m_ruang"."ruang_id" IS ' ';

-- ----------------------------
-- Records of m_ruang
-- ----------------------------
INSERT INTO "public"."m_ruang" VALUES (1, 'RUANG A', 'A 1', 'I', '2022-12-13', 'ADMIN', NULL, NULL);
INSERT INTO "public"."m_ruang" VALUES (2, 'RUANG B', 'B II', 'II', '2022-12-13', 'ADMIN', NULL, NULL);
INSERT INTO "public"."m_ruang" VALUES (3, 'RUANG C', 'C III', 'III', '2022-12-13', 'ADMIN', NULL, NULL);
INSERT INTO "public"."m_ruang" VALUES (4, 'RUANG D', 'D VIP', 'VIP', '2022-12-13', 'ADMIN', NULL, NULL);

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_user";
CREATE TABLE "public"."m_user" (
  "user_id" int2 NOT NULL DEFAULT nextval('m_user_user_id_seq'::regclass),
  "user_nama" varchar(60) COLLATE "pg_catalog"."default",
  "user_passwd" varchar(255) COLLATE "pg_catalog"."default",
  "user_pegawai" varchar(60) COLLATE "pg_catalog"."default",
  "user_email" varchar(50) COLLATE "pg_catalog"."default",
  "user_created_date" timestamp(0),
  "user_pkm_nama" varchar(60) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO "public"."m_user" VALUES (1, 'erma', 'erma', 'Syarifah Fatima', 'syarifa56@gmail.com', '2022-11-10 17:31:17', NULL);

-- ----------------------------
-- Table structure for now_bed
-- ----------------------------
DROP TABLE IF EXISTS "public"."now_bed";
CREATE TABLE "public"."now_bed" (
  "bed_id" int4 NOT NULL DEFAULT nextval('t_bed_bed_id_seq'::regclass),
  "bed_kapasitas" int2,
  "bed_kosong_pria" int2,
  "bed_kosong_wanita" int2,
  "bed_kosong_campur" int2,
  "bed_kosong_anak" int2,
  "bed_terisi" int2,
  "bed_kelas" int2,
  "bed_created_date" timestamp(6),
  "bed_created_by" varchar(60) COLLATE "pg_catalog"."default",
  "bed_updated_date" date,
  "bed_updated_by" varchar(60) COLLATE "pg_catalog"."default",
  "m_ruang_id" int4,
  "bed_kosong" int2
)
;

-- ----------------------------
-- Records of now_bed
-- ----------------------------
INSERT INTO "public"."now_bed" VALUES (1, 10, 3, 3, 1, 2, 1, NULL, '2022-12-14 22:13:21', 'admin', NULL, NULL, 3, NULL);
INSERT INTO "public"."now_bed" VALUES (2, 6, 2, 1, 1, 0, 2, NULL, '2022-12-14 22:14:34', 'admin', NULL, NULL, 2, NULL);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."log_log_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_bed_m_bed_id_seq"
OWNED BY "public"."m_bed"."m_bed_id";
SELECT setval('"public"."m_bed_m_bed_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_puskesmas_pkm_id_seq"
OWNED BY "public"."m_puskesmas"."pkm_id";
SELECT setval('"public"."m_puskesmas_pkm_id_seq"', 63, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_ruangg_ruang_idd_seq"
OWNED BY "public"."m_ruang"."ruang_id";
SELECT setval('"public"."m_ruangg_ruang_idd_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."m_user_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."t_bed_bed_id_seq"
OWNED BY "public"."log_bed"."bed_id";
SELECT setval('"public"."t_bed_bed_id_seq"', 2, true);

-- ----------------------------
-- Indexes structure for table log_bed
-- ----------------------------
CREATE INDEX "t_bed_m_bed_id_m_ruang_id_idx" ON "public"."log_bed" USING btree (
  "m_bed_id" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "m_ruang_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table log_bed
-- ----------------------------
ALTER TABLE "public"."log_bed" ADD CONSTRAINT "t_bed_pkey" PRIMARY KEY ("bed_id");

-- ----------------------------
-- Primary Key structure for table m_bed
-- ----------------------------
ALTER TABLE "public"."m_bed" ADD CONSTRAINT "m_bed_pkey" PRIMARY KEY ("m_bed_id");

-- ----------------------------
-- Primary Key structure for table m_puskesmas
-- ----------------------------
ALTER TABLE "public"."m_puskesmas" ADD CONSTRAINT "m_puskesmas_pkey" PRIMARY KEY ("pkm_id");

-- ----------------------------
-- Primary Key structure for table m_ruang
-- ----------------------------
ALTER TABLE "public"."m_ruang" ADD CONSTRAINT "m_ruangg_pkey" PRIMARY KEY ("ruang_id");

-- ----------------------------
-- Primary Key structure for table now_bed
-- ----------------------------
ALTER TABLE "public"."now_bed" ADD CONSTRAINT "log_bed_copy1_pkey" PRIMARY KEY ("bed_id");

-- ----------------------------
-- Foreign Keys structure for table log_bed
-- ----------------------------
ALTER TABLE "public"."log_bed" ADD CONSTRAINT "bed_id" FOREIGN KEY ("m_bed_id") REFERENCES "public"."m_bed" ("m_bed_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."log_bed" ADD CONSTRAINT "ruang_id" FOREIGN KEY ("m_ruang_id") REFERENCES "public"."m_ruang" ("ruang_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table now_bed
-- ----------------------------
ALTER TABLE "public"."now_bed" ADD CONSTRAINT "log_bed_copy1_m_ruang_id_fkey" FOREIGN KEY ("m_ruang_id") REFERENCES "public"."m_ruang" ("ruang_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
