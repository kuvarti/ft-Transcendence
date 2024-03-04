--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: achievementRules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."achievementRules" (
    id integer NOT NULL,
    "updateTime" date,
    "achievementId" integer NOT NULL,
    name text NOT NULL,
    condition text NOT NULL,
    reward text NOT NULL,
    status boolean
);


ALTER TABLE public."achievementRules" OWNER TO postgres;

--
-- Name: achievementRules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."achievementRules_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."achievementRules_id_seq" OWNER TO postgres;

--
-- Name: achievementRules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."achievementRules_id_seq" OWNED BY public."achievementRules".id;


--
-- Name: achievements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.achievements (
    id integer NOT NULL,
    "updateTime" date,
    status boolean,
    name text,
    "imagePath" text
);


ALTER TABLE public.achievements OWNER TO postgres;

--
-- Name: achievements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.achievements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.achievements_id_seq OWNER TO postgres;

--
-- Name: achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;


--
-- Name: chatRoomProperties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."chatRoomProperties" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public."chatRoomProperties" OWNER TO postgres;

--
-- Name: chatRoomProperties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."chatRoomProperties_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."chatRoomProperties_id_seq" OWNER TO postgres;

--
-- Name: chatRoomProperties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."chatRoomProperties_id_seq" OWNED BY public."chatRoomProperties".id;


--
-- Name: chatRoomTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."chatRoomTypes" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public."chatRoomTypes" OWNER TO postgres;

--
-- Name: chatRoomTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."chatRoomTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."chatRoomTypes_id_seq" OWNER TO postgres;

--
-- Name: chatRoomTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."chatRoomTypes_id_seq" OWNED BY public."chatRoomTypes".id;


--
-- Name: chatRoomUserProperties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."chatRoomUserProperties" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    "chatRoomUserId" integer NOT NULL,
    "chatRoomPropertyId" integer NOT NULL
);


ALTER TABLE public."chatRoomUserProperties" OWNER TO postgres;

--
-- Name: chatRoomUserProperties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."chatRoomUserProperties_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."chatRoomUserProperties_id_seq" OWNER TO postgres;

--
-- Name: chatRoomUserProperties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."chatRoomUserProperties_id_seq" OWNED BY public."chatRoomUserProperties".id;


--
-- Name: chatRoomUsers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."chatRoomUsers" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    "chatRoomId" integer NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public."chatRoomUsers" OWNER TO postgres;

--
-- Name: chatRoomUsers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."chatRoomUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."chatRoomUsers_id_seq" OWNER TO postgres;

--
-- Name: chatRoomUsers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."chatRoomUsers_id_seq" OWNED BY public."chatRoomUsers".id;


--
-- Name: chatRooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."chatRooms" (
    "hasPassword" boolean NOT NULL,
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    "roomTypeId" integer NOT NULL,
    "roomUserId" integer NOT NULL,
    "userCount" integer NOT NULL,
    "accessId" character varying NOT NULL,
    passwordhash bytea,
    passwordsalt bytea
);


ALTER TABLE public."chatRooms" OWNER TO postgres;

--
-- Name: chatRooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."chatRooms_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."chatRooms_id_seq" OWNER TO postgres;

--
-- Name: chatRooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."chatRooms_id_seq" OWNED BY public."chatRooms".id;


--
-- Name: directMessageMatches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."directMessageMatches" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    "hostId" integer NOT NULL,
    "guestId" integer NOT NULL,
    "accessId" character varying NOT NULL
);


ALTER TABLE public."directMessageMatches" OWNER TO postgres;

--
-- Name: directMessageMatches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."directMessageMatches_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."directMessageMatches_id_seq" OWNER TO postgres;

--
-- Name: directMessageMatches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."directMessageMatches_id_seq" OWNED BY public."directMessageMatches".id;


--
-- Name: directMessages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."directMessages" (
    id integer NOT NULL,
    "senderId" integer NOT NULL,
    "receiverId" integer NOT NULL,
    "messageText" text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updateTime" date NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public."directMessages" OWNER TO postgres;

--
-- Name: directMessages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."directMessages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."directMessages_id_seq" OWNER TO postgres;

--
-- Name: directMessages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."directMessages_id_seq" OWNED BY public."directMessages".id;


--
-- Name: gameHistories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."gameHistories" (
    id integer NOT NULL,
    "userHostId" integer NOT NULL,
    "userGuestId" integer NOT NULL,
    "finishDate" date NOT NULL,
    "updateTime" date NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public."gameHistories" OWNER TO postgres;

--
-- Name: gameHistories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."gameHistories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."gameHistories_id_seq" OWNER TO postgres;

--
-- Name: gameHistories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."gameHistories_id_seq" OWNED BY public."gameHistories".id;


--
-- Name: gameResultNames; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."gameResultNames" (
    id integer NOT NULL,
    name text NOT NULL,
    "updateTime" date,
    status boolean
);


ALTER TABLE public."gameResultNames" OWNER TO postgres;

--
-- Name: gameResultNames_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."gameResultNames_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."gameResultNames_id_seq" OWNER TO postgres;

--
-- Name: gameResultNames_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."gameResultNames_id_seq" OWNED BY public."gameResultNames".id;


--
-- Name: gameScories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."gameScories" (
    id integer NOT NULL,
    "userHostScore" integer NOT NULL,
    "userGuestScore" integer NOT NULL,
    "resultNameId" integer NOT NULL,
    "updateTime" date,
    status boolean
);


ALTER TABLE public."gameScories" OWNER TO postgres;

--
-- Name: gameScories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."gameScories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."gameScories_id_seq" OWNER TO postgres;

--
-- Name: gameScories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."gameScories_id_seq" OWNED BY public."gameScories".id;


--
-- Name: gameTotalScories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."gameTotalScories" (
    id integer NOT NULL,
    "updateTime" date,
    status boolean,
    "userId" integer NOT NULL,
    "totalScore" bigint NOT NULL,
    "totalWin" bigint NOT NULL,
    "totalLose" bigint NOT NULL
);


ALTER TABLE public."gameTotalScories" OWNER TO postgres;

--
-- Name: gameTotalScories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."gameTotalScories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."gameTotalScories_id_seq" OWNER TO postgres;

--
-- Name: gameTotalScories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."gameTotalScories_id_seq" OWNED BY public."gameTotalScories".id;


--
-- Name: logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logs (
    detail text,
    date timestamp without time zone,
    audit character varying(50)
);


ALTER TABLE public.logs OWNER TO postgres;

--
-- Name: operationClaims; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."operationClaims" (
    id integer NOT NULL,
    explanation integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    "userOperationClaimsId" integer
);


ALTER TABLE public."operationClaims" OWNER TO postgres;

--
-- Name: operationClaims_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."operationClaims_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."operationClaims_id_seq" OWNER TO postgres;

--
-- Name: operationClaims_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."operationClaims_id_seq" OWNED BY public."operationClaims".id;


--
-- Name: operationclaims_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operationclaims_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operationclaims_id_seq OWNER TO postgres;

--
-- Name: operationclaims_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operationclaims_id_seq OWNED BY public."operationClaims".id;


--
-- Name: twoFATypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."twoFATypes" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    "updateTime" date NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public."twoFATypes" OWNER TO postgres;

--
-- Name: twoFATypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."twoFATypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."twoFATypes_id_seq" OWNER TO postgres;

--
-- Name: twoFATypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."twoFATypes_id_seq" OWNED BY public."twoFATypes".id;


--
-- Name: userAchievements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."userAchievements" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "achievementId" integer NOT NULL,
    "updateTime" date,
    status boolean
);


ALTER TABLE public."userAchievements" OWNER TO postgres;

--
-- Name: userAchievements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."userAchievements_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."userAchievements_id_seq" OWNER TO postgres;

--
-- Name: userAchievements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."userAchievements_id_seq" OWNED BY public."userAchievements".id;


--
-- Name: userBlocks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."userBlocks" (
    id integer NOT NULL,
    "updateTime" date,
    status boolean,
    "blockerId" integer NOT NULL,
    "blockedId" integer NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public."userBlocks" OWNER TO postgres;

--
-- Name: userBlocks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."userBlocks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."userBlocks_id_seq" OWNER TO postgres;

--
-- Name: userBlocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."userBlocks_id_seq" OWNED BY public."userBlocks".id;


--
-- Name: userInfos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."userInfos" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "profileCheck" boolean NOT NULL,
    gender boolean NOT NULL,
    "birthdayDate" timestamp without time zone,
    "loginDate" timestamp without time zone,
    "profileImagePath" character varying,
    "profileText" character varying
);


ALTER TABLE public."userInfos" OWNER TO postgres;

--
-- Name: userInfos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."userInfos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."userInfos_id_seq" OWNER TO postgres;

--
-- Name: userInfos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."userInfos_id_seq" OWNED BY public."userInfos".id;


--
-- Name: userOperationClaims; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."userOperationClaims" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "operationClaimId" integer NOT NULL
);


ALTER TABLE public."userOperationClaims" OWNER TO postgres;

--
-- Name: userOperationClaims_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."userOperationClaims_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."userOperationClaims_id_seq" OWNER TO postgres;

--
-- Name: userOperationClaims_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."userOperationClaims_id_seq" OWNED BY public."userOperationClaims".id;


--
-- Name: userTwoFAs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."userTwoFAs" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "twoFAType" integer NOT NULL,
    "isTwoFA" boolean NOT NULL,
    "updateTime" date,
    status boolean,
    settings character varying,
    "isVerify" boolean NOT NULL
);


ALTER TABLE public."userTwoFAs" OWNER TO postgres;

--
-- Name: userTwoFAs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."userTwoFAs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."userTwoFAs_id_seq" OWNER TO postgres;

--
-- Name: userTwoFAs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."userTwoFAs_id_seq" OWNED BY public."userTwoFAs".id;


--
-- Name: userinfos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.userinfos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.userinfos_id_seq OWNER TO postgres;

--
-- Name: userinfos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.userinfos_id_seq OWNED BY public."userInfos".id;


--
-- Name: useroperationclaims_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.useroperationclaims_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.useroperationclaims_id_seq OWNER TO postgres;

--
-- Name: useroperationclaims_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.useroperationclaims_id_seq OWNED BY public."userOperationClaims".id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    passwordhash bytea,
    passwordsalt bytea,
    address character varying(50),
    phone character varying(10),
    updatetime timestamp without time zone,
    explanation character varying(50),
    status boolean,
    "firstName" character varying(50),
    "lastName" character varying(50),
    "nickName" character varying(50) NOT NULL,
    "verificationCode" character varying(50) NOT NULL,
    "isVerified" boolean DEFAULT false NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: achievementRules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."achievementRules" ALTER COLUMN id SET DEFAULT nextval('public."achievementRules_id_seq"'::regclass);


--
-- Name: achievements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);


--
-- Name: chatRoomProperties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRoomProperties" ALTER COLUMN id SET DEFAULT nextval('public."chatRoomProperties_id_seq"'::regclass);


--
-- Name: chatRoomTypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRoomTypes" ALTER COLUMN id SET DEFAULT nextval('public."chatRoomTypes_id_seq"'::regclass);


--
-- Name: chatRoomUserProperties id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRoomUserProperties" ALTER COLUMN id SET DEFAULT nextval('public."chatRoomUserProperties_id_seq"'::regclass);


--
-- Name: chatRoomUsers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRoomUsers" ALTER COLUMN id SET DEFAULT nextval('public."chatRoomUsers_id_seq"'::regclass);


--
-- Name: chatRooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRooms" ALTER COLUMN id SET DEFAULT nextval('public."chatRooms_id_seq"'::regclass);


--
-- Name: directMessageMatches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."directMessageMatches" ALTER COLUMN id SET DEFAULT nextval('public."directMessageMatches_id_seq"'::regclass);


--
-- Name: directMessages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."directMessages" ALTER COLUMN id SET DEFAULT nextval('public."directMessages_id_seq"'::regclass);


--
-- Name: gameHistories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gameHistories" ALTER COLUMN id SET DEFAULT nextval('public."gameHistories_id_seq"'::regclass);


--
-- Name: gameResultNames id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gameResultNames" ALTER COLUMN id SET DEFAULT nextval('public."gameResultNames_id_seq"'::regclass);


--
-- Name: gameScories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gameScories" ALTER COLUMN id SET DEFAULT nextval('public."gameScories_id_seq"'::regclass);


--
-- Name: gameTotalScories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gameTotalScories" ALTER COLUMN id SET DEFAULT nextval('public."gameTotalScories_id_seq"'::regclass);


--
-- Name: operationClaims id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."operationClaims" ALTER COLUMN id SET DEFAULT nextval('public."operationClaims_id_seq"'::regclass);


--
-- Name: twoFATypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."twoFATypes" ALTER COLUMN id SET DEFAULT nextval('public."twoFATypes_id_seq"'::regclass);


--
-- Name: userAchievements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userAchievements" ALTER COLUMN id SET DEFAULT nextval('public."userAchievements_id_seq"'::regclass);


--
-- Name: userBlocks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userBlocks" ALTER COLUMN id SET DEFAULT nextval('public."userBlocks_id_seq"'::regclass);


--
-- Name: userInfos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userInfos" ALTER COLUMN id SET DEFAULT nextval('public."userInfos_id_seq"'::regclass);


--
-- Name: userOperationClaims id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userOperationClaims" ALTER COLUMN id SET DEFAULT nextval('public."userOperationClaims_id_seq"'::regclass);


--
-- Name: userTwoFAs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userTwoFAs" ALTER COLUMN id SET DEFAULT nextval('public."userTwoFAs_id_seq"'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: achievementRules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."achievementRules" (id, "updateTime", "achievementId", name, condition, reward, status) FROM stdin;
1	2024-12-20	1	sign	signRule	Kayıt başarımı	t
2	2024-12-20	2	firstPong	firstPongVinnerRule	İlk oyun galibiyeti	t
\.


--
-- Data for Name: achievements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.achievements (id, "updateTime", status, name, "imagePath") FROM stdin;
1	2024-12-20	t	Kayıt	https://cdn.intra.42.fr/achievement/image/38/SOC004.svg
2	2024-12-20	t	İlk oyun galibiyeti	https://cdn.intra.42.fr/achievement/image/82/PED011.svg
\.


--
-- Data for Name: chatRoomProperties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chatRoomProperties" ("updateTime", status, id, name) FROM stdin;
2023-08-27	t	2	mute
2023-08-27	t	5	admin
\.


--
-- Data for Name: chatRoomTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chatRoomTypes" ("updateTime", status, id, name, description) FROM stdin;
2023-01-01	t	1	public	Genel
2023-01-21	t	2	private	Özel
\.


--
-- Data for Name: chatRoomUserProperties; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chatRoomUserProperties" ("updateTime", status, id, "chatRoomUserId", "chatRoomPropertyId") FROM stdin;
\.


--
-- Data for Name: chatRoomUsers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chatRoomUsers" ("updateTime", status, id, "chatRoomId", "userId") FROM stdin;
\.


--
-- Data for Name: chatRooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chatRooms" ("hasPassword", "updateTime", status, id, name, "roomTypeId", "roomUserId", "userCount", "accessId", passwordhash, passwordsalt) FROM stdin;
\.


--
-- Data for Name: directMessageMatches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."directMessageMatches" ("updateTime", status, id, "hostId", "guestId", "accessId") FROM stdin;
\.


--
-- Data for Name: directMessages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."directMessages" (id, "senderId", "receiverId", "messageText", "createdAt", "updateTime", status) FROM stdin;
\.


--
-- Data for Name: gameHistories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."gameHistories" (id, "userHostId", "userGuestId", "finishDate", "updateTime", status) FROM stdin;
\.


--
-- Data for Name: gameResultNames; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."gameResultNames" (id, name, "updateTime", status) FROM stdin;
1	Tie	2023-09-10	t
2	Winner Host	2023-09-10	t
3	Winner Guest	2023-09-10	t
\.


--
-- Data for Name: gameScories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."gameScories" (id, "userHostScore", "userGuestScore", "resultNameId", "updateTime", status) FROM stdin;
\.


--
-- Data for Name: gameTotalScories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."gameTotalScories" (id, "updateTime", status, "userId", "totalScore", "totalWin", "totalLose") FROM stdin;
\.


--
-- Data for Name: logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logs (detail, date, audit) FROM stdin;
\.


--
-- Data for Name: operationClaims; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."operationClaims" (id, explanation, name, description, "userOperationClaimsId") FROM stdin;
2	1	User	Kullanıcı	\N
3	2	Admin	Yönetici	\N
4	4	ChatManager	Mesajlaşma Yöneticisi	\N
\.


--
-- Data for Name: twoFATypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."twoFATypes" (id, name, "updateTime", status) FROM stdin;
\.


--
-- Data for Name: userAchievements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."userAchievements" (id, "userId", "achievementId", "updateTime", status) FROM stdin;
\.


--
-- Data for Name: userBlocks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."userBlocks" (id, "updateTime", status, "blockerId", "blockedId", "createdAt") FROM stdin;
\.


--
-- Data for Name: userInfos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."userInfos" (id, "userId", "profileCheck", gender, "birthdayDate", "loginDate", "profileImagePath", "profileText") FROM stdin;
\.


--
-- Data for Name: userOperationClaims; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."userOperationClaims" (id, "userId", "operationClaimId") FROM stdin;
\.


--
-- Data for Name: userTwoFAs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."userTwoFAs" (id, "userId", "twoFAType", "isTwoFA", "updateTime", status, settings, "isVerify") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, passwordhash, passwordsalt, address, phone, updatetime, explanation, status, "firstName", "lastName", "nickName", "verificationCode", "isVerified", email) FROM stdin;
\.


--
-- Name: achievementRules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."achievementRules_id_seq"', 2, true);


--
-- Name: achievements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.achievements_id_seq', 2, true);


--
-- Name: chatRoomProperties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."chatRoomProperties_id_seq"', 5, true);


--
-- Name: chatRoomTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."chatRoomTypes_id_seq"', 2, true);


--
-- Name: chatRoomUserProperties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."chatRoomUserProperties_id_seq"', 1, false);


--
-- Name: chatRoomUsers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."chatRoomUsers_id_seq"', 577, true);


--
-- Name: chatRooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."chatRooms_id_seq"', 69, true);


--
-- Name: directMessageMatches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."directMessageMatches_id_seq"', 1, false);


--
-- Name: directMessages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."directMessages_id_seq"', 1, false);


--
-- Name: gameHistories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."gameHistories_id_seq"', 4723, true);


--
-- Name: gameResultNames_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."gameResultNames_id_seq"', 3, true);


--
-- Name: gameScories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."gameScories_id_seq"', 4724, true);


--
-- Name: gameTotalScories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."gameTotalScories_id_seq"', 16, true);


--
-- Name: operationClaims_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."operationClaims_id_seq"', 1, false);


--
-- Name: operationclaims_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operationclaims_id_seq', 5, true);


--
-- Name: twoFATypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."twoFATypes_id_seq"', 1, false);


--
-- Name: userAchievements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."userAchievements_id_seq"', 7, true);


--
-- Name: userBlocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."userBlocks_id_seq"', 56, true);


--
-- Name: userInfos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."userInfos_id_seq"', 82, true);


--
-- Name: userOperationClaims_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."userOperationClaims_id_seq"', 1, false);


--
-- Name: userTwoFAs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."userTwoFAs_id_seq"', 24, true);


--
-- Name: userinfos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.userinfos_id_seq', 15, true);


--
-- Name: useroperationclaims_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.useroperationclaims_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 38, true);


--
-- Name: directMessageMatches PK_1a66c5eea5f18f1f2dbfaaefe52; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."directMessageMatches"
    ADD CONSTRAINT "PK_1a66c5eea5f18f1f2dbfaaefe52" PRIMARY KEY (id);


--
-- Name: gameResultNames PK_32778c617a827928a122e8391bb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gameResultNames"
    ADD CONSTRAINT "PK_32778c617a827928a122e8391bb" PRIMARY KEY (id);


--
-- Name: chatRoomUsers PK_38a16493e17b6550a22f93c53f5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRoomUsers"
    ADD CONSTRAINT "PK_38a16493e17b6550a22f93c53f5" PRIMARY KEY (id);


--
-- Name: userBlocks PK_52e8dd5bce8498aa217cd00d231; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userBlocks"
    ADD CONSTRAINT "PK_52e8dd5bce8498aa217cd00d231" PRIMARY KEY (id);


--
-- Name: chatRooms PK_5838720ac8d16811838967755b4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRooms"
    ADD CONSTRAINT "PK_5838720ac8d16811838967755b4" PRIMARY KEY (id);


--
-- Name: chatRoomTypes PK_b4beff78cfda00e641eb0b2cd7a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRoomTypes"
    ADD CONSTRAINT "PK_b4beff78cfda00e641eb0b2cd7a" PRIMARY KEY (id);


--
-- Name: chatRoomUserProperties PK_b95a6550d4e1c14aff16b831f23; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRoomUserProperties"
    ADD CONSTRAINT "PK_b95a6550d4e1c14aff16b831f23" PRIMARY KEY (id);


--
-- Name: chatRoomProperties PK_dddfa76860b3844c0ef363320b2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chatRoomProperties"
    ADD CONSTRAINT "PK_dddfa76860b3844c0ef363320b2" PRIMARY KEY (id);


--
-- Name: directMessages PK_e5e46b8b48fad382a7589ad68b6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."directMessages"
    ADD CONSTRAINT "PK_e5e46b8b48fad382a7589ad68b6" PRIMARY KEY (id);


--
-- Name: achievementRules achievementRules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."achievementRules"
    ADD CONSTRAINT "achievementRules_pkey" PRIMARY KEY (id);


--
-- Name: achievements achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);


--
-- Name: gameHistories gameHistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gameHistories"
    ADD CONSTRAINT "gameHistory_pkey" PRIMARY KEY (id);


--
-- Name: gameScories gameScories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gameScories"
    ADD CONSTRAINT "gameScories_pkey" PRIMARY KEY (id);


--
-- Name: gameTotalScories gameTotalScories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."gameTotalScories"
    ADD CONSTRAINT "gameTotalScories_pkey" PRIMARY KEY (id);


--
-- Name: operationClaims operationclaims_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."operationClaims"
    ADD CONSTRAINT operationclaims_pkey PRIMARY KEY (id);


--
-- Name: twoFATypes twoFATypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."twoFATypes"
    ADD CONSTRAINT "twoFATypes_pkey" PRIMARY KEY (id);


--
-- Name: userAchievements userAchievements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userAchievements"
    ADD CONSTRAINT "userAchievements_pkey" PRIMARY KEY (id);


--
-- Name: userTwoFAs userTwoFAs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userTwoFAs"
    ADD CONSTRAINT "userTwoFAs_pkey" PRIMARY KEY (id);


--
-- Name: userInfos userinfos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userInfos"
    ADD CONSTRAINT userinfos_pkey PRIMARY KEY (id);


--
-- Name: userOperationClaims useroperationclaims_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userOperationClaims"
    ADD CONSTRAINT useroperationclaims_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: userOperationClaims FK_92cca46c6c6d1df2d3e6a77d128; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userOperationClaims"
    ADD CONSTRAINT "FK_92cca46c6c6d1df2d3e6a77d128" FOREIGN KEY ("operationClaimId") REFERENCES public."operationClaims"(id);


--
-- Name: userOperationClaims FK_acd48e6ba52a4b1ac7164efd8a3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."userOperationClaims"
    ADD CONSTRAINT "FK_acd48e6ba52a4b1ac7164efd8a3" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: operationClaims FK_bf738aced982fbd7684c47c7fef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."operationClaims"
    ADD CONSTRAINT "FK_bf738aced982fbd7684c47c7fef" FOREIGN KEY ("userOperationClaimsId") REFERENCES public."userOperationClaims"(id);


--
-- PostgreSQL database dump complete
--

