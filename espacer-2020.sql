--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE espacer_production;
--
-- Name: espacer_production; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE espacer_production WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


\connect espacer_production

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE places (
    id bigint NOT NULL,
    name character varying,
    status boolean,
    "desc" text,
    image character varying,
    latitude double precision,
    longitude double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    thumb character varying,
    visits integer
);


--
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE places_id_seq OWNED BY places.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY places ALTER COLUMN id SET DEFAULT nextval('places_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO ar_internal_metadata VALUES ('environment', 'production', '2018-08-04 10:32:33.882624', '2018-08-04 10:32:33.882624');


--
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO places VALUES (20, 'Ulica Szkolna', true, 'Ulica Szkolna, widok na kościół, szkołę i jezioro.', 'image/upload/v1533663502/y55vrvnxorli5hfhf2wm.jpg', 54.1137106837489839, 17.8715923492432012, '2018-08-06 20:15:30.055985', '2020-07-09 16:29:26.19815', 'image/upload/v1533586533/epc3vvrbslbtqlk8ggjw.jpg', 90);
INSERT INTO places VALUES (29, 'Skrzyżowanie Akacjowej i Polnej', true, 'Skrzyżowanie ulic Akacjowej i Polnej', 'image/upload/v1533663889/o7qqacgei1wo2390kkek.jpg', 54.1139748214545335, 17.8596833412170781, '2018-08-07 17:44:48.100264', '2020-07-09 16:33:40.178914', 'image/upload/v1533663891/nwadadkf09yrkkwhhzfu.jpg', 35);
INSERT INTO places VALUES (26, 'Skrzyżowanie Długiej i Sadowej', true, 'Skrzyżowanie ulic Długiej i Sadowej.', 'image/upload/v1533588604/xckh2f6i2qzq7frjlpix.jpg', 54.1091508985510146, 17.8669253055572881, '2018-08-06 20:50:02.354352', '2020-08-07 19:01:49.770489', 'image/upload/v1533588605/nkxyiuzzop01mh4hhpgd.jpg', 42);
INSERT INTO places VALUES (33, 'Korne - Centrum', true, 'Centrum wioski - sklep, rondo, przystanek autobusowy.', 'image/upload/v1564835321/gv0algiuci9gvbtxotlc.jpg', 54.1340129332491742, 17.8581276599884404, '2019-08-03 12:28:40.052147', '2020-07-23 18:26:12.430348', 'image/upload/v1564835322/bof9ngxaxtcrcjcqvl0p.jpg', 98);
INSERT INTO places VALUES (40, 'Korne - most nad Pilicą', true, 'Most drogowy nad rzeką Pilicą.', 'image/upload/v1564841102/cqtonj26p6qk8x4swhfl.jpg', 54.130096612129563, 17.8669574920654668, '2019-08-03 14:05:00.62845', '2020-10-11 16:35:11.98459', 'image/upload/v1564841103/tto2mlx6vtieba681dwk.jpg', 45);
INSERT INTO places VALUES (27, 'Most nad rzeką Pilicą', true, 'Most nad rzeką Pilicą w stronę leśnego przejazdu do Lipusza i Grzybowa.', 'image/upload/v1533588963/ovfp9fopcj7mt9syuwa8.jpg', 54.1070689540034095, 17.8656593029021451, '2018-08-06 20:56:01.095114', '2020-04-29 22:42:00.143486', 'image/upload/v1533588965/adxjkcdsgewalmhlxc4g.jpg', 31);
INSERT INTO places VALUES (35, 'Korne - Skrzyżowanie', true, 'Skrzyżowanie i wjazd do Kornego.', 'image/upload/v1564837233/ctsfxpvonhuib1ik1rt0.jpg', 54.1305115208253511, 17.8621295158386602, '2019-08-03 13:00:32.139082', '2020-07-24 05:07:04.744886', 'image/upload/v1564837234/pzhxzxvyyrcwarrvvavy.jpg', 44);
INSERT INTO places VALUES (14, 'Skrzyżowanie Kaszubskiej i Leśnej', true, 'Skrzyżowanie ulic Kaszubskiej i Leśnej', 'image/upload/v1533585657/fcpbxd1keh1tysoafhz3.jpg', 54.1118003520274939, 17.877439564895667, '2018-08-06 20:00:55.279595', '2020-11-06 17:14:05.153188', 'image/upload/v1533585659/vtz4equqyrrgfokxt9v2.jpg', 92);
INSERT INTO places VALUES (34, 'Korne - Stadion', true, 'Stadion w Kornem', 'image/upload/v1564836402/vvjeydv2jhxkzcg5cynf.jpg', 54.132039103391655, 17.8573605482101812, '2019-08-03 12:46:40.951375', '2020-07-23 18:28:44.344516', 'image/upload/v1564836404/kwui4ymlrury2qx94dl9.jpg', 60);
INSERT INTO places VALUES (41, 'Korne - wjazd od Gostomka', true, 'Wjazd do Kornego od strony Gostomka', 'image/upload/v1564841606/dwkkml1zeaxeson2yhqu.jpg', 54.1357289573001381, 17.8549841110229863, '2019-08-03 14:13:24.635415', '2020-07-20 07:36:19.110976', 'image/upload/v1564841607/dp4iogmnti5j9iikihad.jpg', 47);
INSERT INTO places VALUES (17, 'Działki między ul. Akacjową i Ogrodową', true, 'Działki między ulicami Akacjową i Ogrodową', 'image/upload/v1533586274/zgbxjlzyoo7wjipkfoi4.jpg', 54.111081792951147, 17.8660884563446416, '2018-08-06 20:11:12.664229', '2020-03-19 10:17:29.39854', 'image/upload/v1533586275/ayepoqnb9ql6lw1dkbbv.jpg', 93);
INSERT INTO places VALUES (39, 'Korne - młyn', true, 'Zabytkowy młyn w Kornem', 'image/upload/v1564840683/xl9iizleg79wourfrtg0.jpg', 54.1380577333757742, 17.8607884113312139, '2019-08-03 13:58:02.147197', '2020-11-07 17:05:53.497389', 'image/upload/v1564840685/fgnb5toybi9utqppikyq.jpg', 37);
INSERT INTO places VALUES (19, 'Skrzyżowanie Ogrodowej i Rolniczej', true, 'Skrzyżowanie ulic Ogrodowej i Rolniczej.', 'image/upload/v1533586406/fhmegug5avxnhj5afy5b.jpg', 54.1125000310637461, 17.8553327981949224, '2018-08-06 20:13:24.836182', '2020-01-18 09:32:43.938281', 'image/upload/v1533586407/funj05aqncbn9ltkbiaq.jpg', 49);
INSERT INTO places VALUES (22, 'Wjazd z DK 20 na Schetynówkę.', true, 'Wjazd z Drogi Krajowej numer 20 na Schetynówkę.', 'image/upload/v1533586856/ufspseksj3uazyt66jcw.jpg', 54.1147294913394603, 17.9012468521118535, '2018-08-06 20:17:13.747492', '2020-11-07 17:13:05.198327', 'image/upload/v1533586857/jafra8v4jcwsitgtifnd.jpg', 42);
INSERT INTO places VALUES (37, 'Korne - Remiza OSP', true, 'Remiza Ochotniczej Straży Pożarnej w Kornem', 'image/upload/v1564838592/r0ewzihjwl6h98co9htk.jpg', 54.1373631998271989, 17.8597906295776738, '2019-08-03 13:23:11.227169', '2020-09-30 15:57:44.572788', 'image/upload/v1564838593/mxzv1dw0trwg5zmvsg2p.jpg', 48);
INSERT INTO places VALUES (30, 'Skrzyżowanie Ogrodowej i Wiosennej', true, 'Skrzyżowanie ulic Ogrodowej i Wiosennej', 'image/upload/v1533664212/jq01wxl8jtchz1jevlpo.jpg', 54.1119434334201017, 17.8586962882995977, '2018-08-07 17:50:10.606678', '2020-09-28 11:00:13.504677', 'image/upload/v1533664213/udskjpicgnepfugqkwcq.jpg', 68);
INSERT INTO places VALUES (38, 'Korne - mostek nad Pilicą', true, 'Mostek nad Pilicą - wjazd z Kornego od strony Nowej Karczmy.', 'image/upload/v1564839038/tqx8nfbxbwxcv6kz8l54.jpg', 54.1345330909049309, 17.8627517883301152, '2019-08-03 13:30:36.98622', '2020-11-07 17:05:39.853817', 'image/upload/v1564839039/pifxivbrcuoctn16sc78.jpg', 41);
INSERT INTO places VALUES (28, 'Zachód słońca', true, 'Zachód słońca', 'image/upload/v1533627579/pqtwyqdymcvvabmbtlcd.jpg', 54.1145942806620042, 17.864430851173438, '2018-08-07 07:39:38.32312', '2020-09-09 19:07:32.269295', 'image/upload/v1533627581/nw3u4qb1vjyt0jshywem.jpg', 80);
INSERT INTO places VALUES (18, 'Skrzyżowanie Rolniczej i Jesiennej', true, 'Skrzyżowanie ulic Rolniczej i Jesiennej.', 'image/upload/v1533586344/cxvpdsdzvpqyttrzuo0r.jpg', 54.1104780050172423, 17.8589108650207891, '2018-08-06 20:12:22.910412', '2020-02-20 14:04:18.709714', 'image/upload/v1533586348/zfcofghovjcoje6p6ybj.jpg', 89);
INSERT INTO places VALUES (31, 'Skrzyżowanie Pogodnej i Źródlanej', true, 'Skrzyżowanie ulic Pogodnej i Źródlanej.', 'image/upload/v1533664451/mgruvrdxndkhynkx1mz2.jpg', 54.1124843080690283, 17.8622850839615239, '2018-08-07 17:54:09.576687', '2020-08-10 12:53:16.735044', 'image/upload/v1533664453/wgcsdlf9hsfxnqevdbah.jpg', 57);
INSERT INTO places VALUES (36, 'Korne - Szkoła', true, 'Szkoła Podstawowa im. rtm. Witolda Pileckiego', 'image/upload/v1564838128/mmzwtumfcjknlg2l6cvo.jpg', 54.1359175270363622, 17.8594794933319463, '2019-08-03 13:15:26.803526', '2020-11-07 17:05:50.682556', 'image/upload/v1564838129/udnshhnt2f7rznuah4rz.jpg', 67);
INSERT INTO places VALUES (32, 'Skrzyżowanie Kasztanowej i Jodłowej', true, 'Skrzyżowanie ulic Kasztanowej i Jodłowej.', 'image/upload/v1533664912/qztuovxzy0rpjlu2jpwf.jpg', 54.1139213651499702, 17.8648921911239995, '2018-08-07 18:01:51.382488', '2020-09-10 07:42:53.556205', 'image/upload/v1533664914/itxrhlpbswjtfsez7022.jpg', 93);
INSERT INTO places VALUES (15, 'Skrzyżowanie Długiej i Kaszubskiej', true, 'Skrzyżowanie ulic Długiej i Kaszubskiej', 'image/upload/v1533585742/arvtclc8tpn2cngvp0of.jpg', 54.1114277091595852, 17.8694358531952275, '2018-08-06 20:02:20.638472', '2020-10-04 20:23:12.568271', 'image/upload/v1533585744/mzudalcfatmaxm3vxe4t.jpg', 84);
INSERT INTO places VALUES (23, 'Główny wjazd do Łubiany', true, 'Główny wjazd do Łubiany z Drogi Krajowej numer 20.', 'image/upload/v1533587614/kixfklxxw6y5xpnqr0jg.jpg', 54.1206028689985885, 17.8856471244812383, '2018-08-06 20:33:32.252289', '2020-08-15 09:31:15.877913', 'image/upload/v1533587616/vohdsztlloeqp4njpcmi.jpg', 44);
INSERT INTO places VALUES (16, 'Altany nad jeziorem', true, 'Altany nad jeziorem', 'image/upload/v1533585816/lzotcyqar6wne9c4ogjj.jpg', 54.1124277052386873, 17.8735235397339238, '2018-08-06 20:03:33.68985', '2020-09-09 19:08:30.639356', 'image/upload/v1533585818/iyrovun4mqsrfuqsjc0f.jpg', 76);
INSERT INTO places VALUES (25, 'Ulica Zakładowa', true, 'Ulica Zakładowa', 'image/upload/v1533588270/hacneyf37ww0bo4dwxcj.jpg', 54.119118882131211, 17.8704121772766484, '2018-08-06 20:44:29.010133', '2020-07-09 16:30:56.013578', 'image/upload/v1533588272/cvvg7viovrwyqqpjc9sb.jpg', 53);
INSERT INTO places VALUES (13, 'Most na ul. Kaszubskiej', true, 'Most na ulicy Kaszubskiej nad rzeką Graniczną.', 'image/upload/v1533585536/n5cdcgfmuq3wy6jtr11z.jpg', 54.1110401255767286, 17.8734417323589696, '2018-08-06 19:58:53.67661', '2020-06-11 08:43:17.871761', 'image/upload/v1533585538/pktytgthegawkyxfe22q.jpg', 65);
INSERT INTO places VALUES (21, 'Ulica Kolejowa', true, 'Ulica Kolejowa', 'image/upload/v1533586570/d0duympv80ef2r8wfhhx.jpg', 54.1149244454933012, 17.8696182434082402, '2018-08-06 20:16:09.194895', '2020-09-09 19:08:12.947718', 'image/upload/v1533586571/jfdlznywbrsuaqax3kly.jpg', 112);
INSERT INTO places VALUES (24, 'Osiedle Bloków', true, 'Osiedle Bloków - ulice Osiedlowa, Krótka i Kościerska.', 'image/upload/v1533587966/nnewcz9dfrjn23qm7koc.jpg', 54.1169305333634654, 17.872944182586707, '2018-08-06 20:39:24.999258', '2020-11-07 17:13:19.42299', 'image/upload/v1533587968/a3eboxc4ifp29ioaa14y.jpg', 127);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO schema_migrations VALUES ('20180803175224');
INSERT INTO schema_migrations VALUES ('20180803204541');
INSERT INTO schema_migrations VALUES ('20180804075030');
INSERT INTO schema_migrations VALUES ('20180807060907');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO users VALUES (1, 'kamil', '$2a$11$dJSJwNvkr9vVbg0o28mvUueNWTu6XRdqhwrNyGEepAgyS7v/j0zcK', NULL, NULL, NULL, 7, '2019-08-03 12:25:12.566627', '2018-08-07 17:37:54.124641', '188.147.39.136', '188.146.107.105', '2018-08-04 10:33:38.315595', '2019-08-03 12:25:12.56801');


--
-- Name: places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('places_id_seq', 41, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: places places_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: public; Type: ACL; Schema: -; Owner: -
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

