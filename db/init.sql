PGDMP  %                     |            FtTranscendence    16.1 (Debian 16.1-1.pgdg120+1)    16.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16388    FtTranscendence    DATABASE     |   CREATE DATABASE "FtTranscendence" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
 !   DROP DATABASE "FtTranscendence";
                postgres    false            �           0    0    DATABASE "FtTranscendence"    ACL     5   GRANT ALL ON DATABASE "FtTranscendence" TO psqluser;
                   postgres    false    3551            �            1259    16396    achievementRules    TABLE     �   CREATE TABLE public."achievementRules" (
    id integer NOT NULL,
    "updateTime" date,
    "achievementId" integer NOT NULL,
    name text NOT NULL,
    condition text NOT NULL,
    reward text NOT NULL,
    status boolean
);
 &   DROP TABLE public."achievementRules";
       public         heap    postgres    false            �            1259    16573    achievementRules_id_seq    SEQUENCE     �   CREATE SEQUENCE public."achievementRules_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."achievementRules_id_seq";
       public          postgres    false    215            �           0    0    achievementRules_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."achievementRules_id_seq" OWNED BY public."achievementRules".id;
          public          postgres    false    251            �            1259    16401    achievements    TABLE     �   CREATE TABLE public.achievements (
    id integer NOT NULL,
    "updateTime" date,
    status boolean,
    name text,
    "imagePath" text
);
     DROP TABLE public.achievements;
       public         heap    postgres    false            �            1259    16406    achievements_id_seq    SEQUENCE     |   CREATE SEQUENCE public.achievements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.achievements_id_seq;
       public          postgres    false    216            �           0    0    achievements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;
          public          postgres    false    217            �            1259    16407    chatRoomProperties    TABLE     �   CREATE TABLE public."chatRoomProperties" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL
);
 (   DROP TABLE public."chatRoomProperties";
       public         heap    postgres    false            �            1259    16412    chatRoomProperties_id_seq    SEQUENCE     �   CREATE SEQUENCE public."chatRoomProperties_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."chatRoomProperties_id_seq";
       public          postgres    false    218            �           0    0    chatRoomProperties_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."chatRoomProperties_id_seq" OWNED BY public."chatRoomProperties".id;
          public          postgres    false    219            �            1259    16413    chatRoomTypes    TABLE     �   CREATE TABLE public."chatRoomTypes" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);
 #   DROP TABLE public."chatRoomTypes";
       public         heap    postgres    false            �            1259    16418    chatRoomTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."chatRoomTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."chatRoomTypes_id_seq";
       public          postgres    false    220            �           0    0    chatRoomTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."chatRoomTypes_id_seq" OWNED BY public."chatRoomTypes".id;
          public          postgres    false    221            �            1259    16419    chatRoomUserProperties    TABLE     �   CREATE TABLE public."chatRoomUserProperties" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    "chatRoomUserId" integer NOT NULL,
    "chatRoomPropertyId" integer NOT NULL
);
 ,   DROP TABLE public."chatRoomUserProperties";
       public         heap    postgres    false            �            1259    16422    chatRoomUserProperties_id_seq    SEQUENCE     �   CREATE SEQUENCE public."chatRoomUserProperties_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."chatRoomUserProperties_id_seq";
       public          postgres    false    222            �           0    0    chatRoomUserProperties_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."chatRoomUserProperties_id_seq" OWNED BY public."chatRoomUserProperties".id;
          public          postgres    false    223            �            1259    16423    chatRoomUsers    TABLE     �   CREATE TABLE public."chatRoomUsers" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    "chatRoomId" integer NOT NULL,
    "userId" integer NOT NULL
);
 #   DROP TABLE public."chatRoomUsers";
       public         heap    postgres    false            �            1259    16426    chatRoomUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."chatRoomUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."chatRoomUsers_id_seq";
       public          postgres    false    224            �           0    0    chatRoomUsers_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."chatRoomUsers_id_seq" OWNED BY public."chatRoomUsers".id;
          public          postgres    false    225            �            1259    16427 	   chatRooms    TABLE     �  CREATE TABLE public."chatRooms" (
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
    DROP TABLE public."chatRooms";
       public         heap    postgres    false            �            1259    16432    chatRooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public."chatRooms_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."chatRooms_id_seq";
       public          postgres    false    226            �           0    0    chatRooms_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."chatRooms_id_seq" OWNED BY public."chatRooms".id;
          public          postgres    false    227            �            1259    16433    directMessageMatches    TABLE     �   CREATE TABLE public."directMessageMatches" (
    "updateTime" date NOT NULL,
    status boolean NOT NULL,
    id integer NOT NULL,
    "hostId" integer NOT NULL,
    "guestId" integer NOT NULL,
    "accessId" character varying NOT NULL
);
 *   DROP TABLE public."directMessageMatches";
       public         heap    postgres    false            �            1259    16438    directMessageMatches_id_seq    SEQUENCE     �   CREATE SEQUENCE public."directMessageMatches_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."directMessageMatches_id_seq";
       public          postgres    false    228            �           0    0    directMessageMatches_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."directMessageMatches_id_seq" OWNED BY public."directMessageMatches".id;
          public          postgres    false    229            �            1259    16439    gameHistories    TABLE     �   CREATE TABLE public."gameHistories" (
    id integer NOT NULL,
    "userHostId" integer NOT NULL,
    "userGuestId" integer NOT NULL,
    "finishDate" date NOT NULL,
    "updateTime" date NOT NULL,
    status boolean NOT NULL
);
 #   DROP TABLE public."gameHistories";
       public         heap    postgres    false            �            1259    16442    gameHistories_id_seq    SEQUENCE        CREATE SEQUENCE public."gameHistories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."gameHistories_id_seq";
       public          postgres    false    230            �           0    0    gameHistories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."gameHistories_id_seq" OWNED BY public."gameHistories".id;
          public          postgres    false    231            �            1259    16443    gameResultNames    TABLE     �   CREATE TABLE public."gameResultNames" (
    id integer NOT NULL,
    name text NOT NULL,
    "updateTime" date,
    status boolean
);
 %   DROP TABLE public."gameResultNames";
       public         heap    postgres    false            �            1259    16448    gameResultNames_id_seq    SEQUENCE     �   CREATE SEQUENCE public."gameResultNames_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."gameResultNames_id_seq";
       public          postgres    false    232            �           0    0    gameResultNames_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."gameResultNames_id_seq" OWNED BY public."gameResultNames".id;
          public          postgres    false    233            �            1259    16449    gameScories    TABLE     �   CREATE TABLE public."gameScories" (
    id integer NOT NULL,
    "userHostScore" integer NOT NULL,
    "userGuestScore" integer NOT NULL,
    "resultNameId" integer NOT NULL,
    "updateTime" date,
    status boolean
);
 !   DROP TABLE public."gameScories";
       public         heap    postgres    false            �            1259    16452    gameScories_id_seq    SEQUENCE     }   CREATE SEQUENCE public."gameScories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."gameScories_id_seq";
       public          postgres    false    234            �           0    0    gameScories_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."gameScories_id_seq" OWNED BY public."gameScories".id;
          public          postgres    false    235            �            1259    16453    gameTotalScories    TABLE     �   CREATE TABLE public."gameTotalScories" (
    id integer NOT NULL,
    "updateTime" date,
    status boolean,
    "userId" integer NOT NULL,
    "totalScore" bigint NOT NULL,
    "totalWin" bigint NOT NULL,
    "totalLose" bigint NOT NULL
);
 &   DROP TABLE public."gameTotalScories";
       public         heap    postgres    false            �            1259    16456    gameTotalScories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."gameTotalScories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."gameTotalScories_id_seq";
       public          postgres    false    236            �           0    0    gameTotalScories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."gameTotalScories_id_seq" OWNED BY public."gameTotalScories".id;
          public          postgres    false    237            �            1259    16457    logs    TABLE     u   CREATE TABLE public.logs (
    detail text,
    date timestamp without time zone,
    audit character varying(50)
);
    DROP TABLE public.logs;
       public         heap    postgres    false            �            1259    16462    operationClaims    TABLE     �   CREATE TABLE public."operationClaims" (
    id integer NOT NULL,
    explanation integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    "userOperationClaimsId" integer
);
 %   DROP TABLE public."operationClaims";
       public         heap    postgres    false                        1259    16604    operationClaims_id_seq    SEQUENCE     �   CREATE SEQUENCE public."operationClaims_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."operationClaims_id_seq";
       public          postgres    false    239            �           0    0    operationClaims_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."operationClaims_id_seq" OWNED BY public."operationClaims".id;
          public          postgres    false    256            �            1259    16578    operationclaims    TABLE     �   CREATE TABLE public.operationclaims (
    id integer NOT NULL,
    name character varying NOT NULL,
    explanation integer NOT NULL,
    description character varying NOT NULL,
    "userOperationClaimsId" integer
);
 #   DROP TABLE public.operationclaims;
       public         heap    postgres    false            �            1259    16467    operationclaims_id_seq    SEQUENCE     �   CREATE SEQUENCE public.operationclaims_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.operationclaims_id_seq;
       public          postgres    false    239            �           0    0    operationclaims_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.operationclaims_id_seq OWNED BY public."operationClaims".id;
          public          postgres    false    240            �            1259    16577    operationclaims_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.operationclaims_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.operationclaims_id_seq1;
       public          postgres    false    254            �           0    0    operationclaims_id_seq1    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.operationclaims_id_seq1 OWNED BY public.operationclaims.id;
          public          postgres    false    253            �            1259    16468 
   twoFATypes    TABLE     �   CREATE TABLE public."twoFATypes" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    "updateTime" date NOT NULL,
    status boolean NOT NULL
);
     DROP TABLE public."twoFATypes";
       public         heap    postgres    false            �            1259    16471    twoFATypes_id_seq    SEQUENCE     |   CREATE SEQUENCE public."twoFATypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."twoFATypes_id_seq";
       public          postgres    false    241            �           0    0    twoFATypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."twoFATypes_id_seq" OWNED BY public."twoFATypes".id;
          public          postgres    false    242            �            1259    16472    userAchievements    TABLE     �   CREATE TABLE public."userAchievements" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "achievementId" integer NOT NULL,
    "updateTime" date,
    status boolean
);
 &   DROP TABLE public."userAchievements";
       public         heap    postgres    false            �            1259    16575    userAchievements_id_seq    SEQUENCE     �   CREATE SEQUENCE public."userAchievements_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."userAchievements_id_seq";
       public          postgres    false    243            �           0    0    userAchievements_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."userAchievements_id_seq" OWNED BY public."userAchievements".id;
          public          postgres    false    252            �            1259    16475 	   userInfos    TABLE     J  CREATE TABLE public."userInfos" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "profileCheck" boolean NOT NULL,
    gender boolean NOT NULL,
    "birthdayDate" timestamp without time zone,
    "loginDate" timestamp without time zone,
    "profileImagePath" character varying,
    "profileText" character varying
);
    DROP TABLE public."userInfos";
       public         heap    postgres    false            �            1259    16480    userInfos_id_seq    SEQUENCE     {   CREATE SEQUENCE public."userInfos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."userInfos_id_seq";
       public          postgres    false    244            �           0    0    userInfos_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."userInfos_id_seq" OWNED BY public."userInfos".id;
          public          postgres    false    245            �            1259    16488    userOperationClaims    TABLE     �   CREATE TABLE public."userOperationClaims" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "operationClaimId" integer NOT NULL
);
 )   DROP TABLE public."userOperationClaims";
       public         heap    postgres    false            �            1259    16586    userOperationClaims_id_seq    SEQUENCE     �   CREATE SEQUENCE public."userOperationClaims_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."userOperationClaims_id_seq";
       public          postgres    false    247            �           0    0    userOperationClaims_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."userOperationClaims_id_seq" OWNED BY public."userOperationClaims".id;
          public          postgres    false    255            �            1259    16486    userinfos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userinfos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.userinfos_id_seq;
       public          postgres    false    244            �           0    0    userinfos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.userinfos_id_seq OWNED BY public."userInfos".id;
          public          postgres    false    246            �            1259    16491    useroperationclaims_id_seq    SEQUENCE     �   CREATE SEQUENCE public.useroperationclaims_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.useroperationclaims_id_seq;
       public          postgres    false    247            �           0    0    useroperationclaims_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.useroperationclaims_id_seq OWNED BY public."userOperationClaims".id;
          public          postgres    false    248            �            1259    16492    users    TABLE     L  CREATE TABLE public.users (
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
    email character varying NOT NULL,
    "twoFAType" integer,
    "isTwoFA" boolean
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16498    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    249            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    250            �           2604    16574    achievementRules id    DEFAULT     ~   ALTER TABLE ONLY public."achievementRules" ALTER COLUMN id SET DEFAULT nextval('public."achievementRules_id_seq"'::regclass);
 D   ALTER TABLE public."achievementRules" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    215            �           2604    16500    achievements id    DEFAULT     r   ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);
 >   ALTER TABLE public.achievements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16501    chatRoomProperties id    DEFAULT     �   ALTER TABLE ONLY public."chatRoomProperties" ALTER COLUMN id SET DEFAULT nextval('public."chatRoomProperties_id_seq"'::regclass);
 F   ALTER TABLE public."chatRoomProperties" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16502    chatRoomTypes id    DEFAULT     x   ALTER TABLE ONLY public."chatRoomTypes" ALTER COLUMN id SET DEFAULT nextval('public."chatRoomTypes_id_seq"'::regclass);
 A   ALTER TABLE public."chatRoomTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16503    chatRoomUserProperties id    DEFAULT     �   ALTER TABLE ONLY public."chatRoomUserProperties" ALTER COLUMN id SET DEFAULT nextval('public."chatRoomUserProperties_id_seq"'::regclass);
 J   ALTER TABLE public."chatRoomUserProperties" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16504    chatRoomUsers id    DEFAULT     x   ALTER TABLE ONLY public."chatRoomUsers" ALTER COLUMN id SET DEFAULT nextval('public."chatRoomUsers_id_seq"'::regclass);
 A   ALTER TABLE public."chatRoomUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16505    chatRooms id    DEFAULT     p   ALTER TABLE ONLY public."chatRooms" ALTER COLUMN id SET DEFAULT nextval('public."chatRooms_id_seq"'::regclass);
 =   ALTER TABLE public."chatRooms" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16506    directMessageMatches id    DEFAULT     �   ALTER TABLE ONLY public."directMessageMatches" ALTER COLUMN id SET DEFAULT nextval('public."directMessageMatches_id_seq"'::regclass);
 H   ALTER TABLE public."directMessageMatches" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    16507    gameHistories id    DEFAULT     x   ALTER TABLE ONLY public."gameHistories" ALTER COLUMN id SET DEFAULT nextval('public."gameHistories_id_seq"'::regclass);
 A   ALTER TABLE public."gameHistories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    16508    gameResultNames id    DEFAULT     |   ALTER TABLE ONLY public."gameResultNames" ALTER COLUMN id SET DEFAULT nextval('public."gameResultNames_id_seq"'::regclass);
 C   ALTER TABLE public."gameResultNames" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    16509    gameScories id    DEFAULT     t   ALTER TABLE ONLY public."gameScories" ALTER COLUMN id SET DEFAULT nextval('public."gameScories_id_seq"'::regclass);
 ?   ALTER TABLE public."gameScories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    16510    gameTotalScories id    DEFAULT     ~   ALTER TABLE ONLY public."gameTotalScories" ALTER COLUMN id SET DEFAULT nextval('public."gameTotalScories_id_seq"'::regclass);
 D   ALTER TABLE public."gameTotalScories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    16581    operationclaims id    DEFAULT     y   ALTER TABLE ONLY public.operationclaims ALTER COLUMN id SET DEFAULT nextval('public.operationclaims_id_seq1'::regclass);
 A   ALTER TABLE public.operationclaims ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            �           2604    16512    twoFATypes id    DEFAULT     r   ALTER TABLE ONLY public."twoFATypes" ALTER COLUMN id SET DEFAULT nextval('public."twoFATypes_id_seq"'::regclass);
 >   ALTER TABLE public."twoFATypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    16576    userAchievements id    DEFAULT     ~   ALTER TABLE ONLY public."userAchievements" ALTER COLUMN id SET DEFAULT nextval('public."userAchievements_id_seq"'::regclass);
 D   ALTER TABLE public."userAchievements" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    243            �           2604    16513    userInfos id    DEFAULT     p   ALTER TABLE ONLY public."userInfos" ALTER COLUMN id SET DEFAULT nextval('public."userInfos_id_seq"'::regclass);
 =   ALTER TABLE public."userInfos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    16603    userOperationClaims id    DEFAULT     �   ALTER TABLE ONLY public."userOperationClaims" ALTER COLUMN id SET DEFAULT nextval('public."userOperationClaims_id_seq"'::regclass);
 G   ALTER TABLE public."userOperationClaims" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    247            �           2604    16516    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �          0    16396    achievementRules 
   TABLE DATA           p   COPY public."achievementRules" (id, "updateTime", "achievementId", name, condition, reward, status) FROM stdin;
    public          postgres    false    215   ��       �          0    16401    achievements 
   TABLE DATA           S   COPY public.achievements (id, "updateTime", status, name, "imagePath") FROM stdin;
    public          postgres    false    216   6�       �          0    16407    chatRoomProperties 
   TABLE DATA           N   COPY public."chatRoomProperties" ("updateTime", status, id, name) FROM stdin;
    public          postgres    false    218   ƶ       �          0    16413    chatRoomTypes 
   TABLE DATA           V   COPY public."chatRoomTypes" ("updateTime", status, id, name, description) FROM stdin;
    public          postgres    false    220   �       �          0    16419    chatRoomUserProperties 
   TABLE DATA           t   COPY public."chatRoomUserProperties" ("updateTime", status, id, "chatRoomUserId", "chatRoomPropertyId") FROM stdin;
    public          postgres    false    222   N�       �          0    16423    chatRoomUsers 
   TABLE DATA           [   COPY public."chatRoomUsers" ("updateTime", status, id, "chatRoomId", "userId") FROM stdin;
    public          postgres    false    224   k�       �          0    16427 	   chatRooms 
   TABLE DATA           �   COPY public."chatRooms" ("hasPassword", "updateTime", status, id, name, "roomTypeId", "roomUserId", "userCount", "accessId", passwordhash, passwordsalt) FROM stdin;
    public          postgres    false    226   շ       �          0    16433    directMessageMatches 
   TABLE DATA           k   COPY public."directMessageMatches" ("updateTime", status, id, "hostId", "guestId", "accessId") FROM stdin;
    public          postgres    false    228   ?�       �          0    16439    gameHistories 
   TABLE DATA           n   COPY public."gameHistories" (id, "userHostId", "userGuestId", "finishDate", "updateTime", status) FROM stdin;
    public          postgres    false    230   \�       �          0    16443    gameResultNames 
   TABLE DATA           K   COPY public."gameResultNames" (id, name, "updateTime", status) FROM stdin;
    public          postgres    false    232   ��       �          0    16449    gameScories 
   TABLE DATA           t   COPY public."gameScories" (id, "userHostScore", "userGuestScore", "resultNameId", "updateTime", status) FROM stdin;
    public          postgres    false    234   �       �          0    16453    gameTotalScories 
   TABLE DATA           w   COPY public."gameTotalScories" (id, "updateTime", status, "userId", "totalScore", "totalWin", "totalLose") FROM stdin;
    public          postgres    false    236   ��       �          0    16457    logs 
   TABLE DATA           3   COPY public.logs (detail, date, audit) FROM stdin;
    public          postgres    false    238   �       �          0    16462    operationClaims 
   TABLE DATA           h   COPY public."operationClaims" (id, explanation, name, description, "userOperationClaimsId") FROM stdin;
    public          postgres    false    239    �       �          0    16578    operationclaims 
   TABLE DATA           f   COPY public.operationclaims (id, name, explanation, description, "userOperationClaimsId") FROM stdin;
    public          postgres    false    254   k�       �          0    16468 
   twoFATypes 
   TABLE DATA           F   COPY public."twoFATypes" (id, name, "updateTime", status) FROM stdin;
    public          postgres    false    241   ��       �          0    16472    userAchievements 
   TABLE DATA           a   COPY public."userAchievements" (id, "userId", "achievementId", "updateTime", status) FROM stdin;
    public          postgres    false    243   ��       �          0    16475 	   userInfos 
   TABLE DATA           �   COPY public."userInfos" (id, "userId", "profileCheck", gender, "birthdayDate", "loginDate", "profileImagePath", "profileText") FROM stdin;
    public          postgres    false    244   ��       �          0    16488    userOperationClaims 
   TABLE DATA           Q   COPY public."userOperationClaims" (id, "userId", "operationClaimId") FROM stdin;
    public          postgres    false    247   ��       �          0    16492    users 
   TABLE DATA           �   COPY public.users (id, passwordhash, passwordsalt, address, phone, updatetime, explanation, status, "firstName", "lastName", "nickName", "verificationCode", "isVerified", email, "twoFAType", "isTwoFA") FROM stdin;
    public          postgres    false    249   �       �           0    0    achievementRules_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."achievementRules_id_seq"', 2, true);
          public          postgres    false    251            �           0    0    achievements_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.achievements_id_seq', 2, true);
          public          postgres    false    217            �           0    0    chatRoomProperties_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."chatRoomProperties_id_seq"', 5, true);
          public          postgres    false    219            �           0    0    chatRoomTypes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."chatRoomTypes_id_seq"', 2, true);
          public          postgres    false    221            �           0    0    chatRoomUserProperties_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."chatRoomUserProperties_id_seq"', 1, false);
          public          postgres    false    223            �           0    0    chatRoomUsers_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."chatRoomUsers_id_seq"', 572, true);
          public          postgres    false    225            �           0    0    chatRooms_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."chatRooms_id_seq"', 68, true);
          public          postgres    false    227            �           0    0    directMessageMatches_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."directMessageMatches_id_seq"', 1, false);
          public          postgres    false    229            �           0    0    gameHistories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."gameHistories_id_seq"', 394, true);
          public          postgres    false    231                        0    0    gameResultNames_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."gameResultNames_id_seq"', 3, true);
          public          postgres    false    233                       0    0    gameScories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."gameScories_id_seq"', 393, true);
          public          postgres    false    235                       0    0    gameTotalScories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."gameTotalScories_id_seq"', 4, true);
          public          postgres    false    237                       0    0    operationClaims_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."operationClaims_id_seq"', 1, false);
          public          postgres    false    256                       0    0    operationclaims_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.operationclaims_id_seq', 5, true);
          public          postgres    false    240                       0    0    operationclaims_id_seq1    SEQUENCE SET     F   SELECT pg_catalog.setval('public.operationclaims_id_seq1', 1, false);
          public          postgres    false    253                       0    0    twoFATypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."twoFATypes_id_seq"', 1, false);
          public          postgres    false    242                       0    0    userAchievements_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."userAchievements_id_seq"', 2, true);
          public          postgres    false    252                       0    0    userInfos_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."userInfos_id_seq"', 11, true);
          public          postgres    false    245            	           0    0    userOperationClaims_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."userOperationClaims_id_seq"', 1, false);
          public          postgres    false    255            
           0    0    userinfos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.userinfos_id_seq', 15, true);
          public          postgres    false    246                       0    0    useroperationclaims_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.useroperationclaims_id_seq', 1, false);
          public          postgres    false    248                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 22, true);
          public          postgres    false    250                       2606    16518 3   directMessageMatches PK_1a66c5eea5f18f1f2dbfaaefe52 
   CONSTRAINT     u   ALTER TABLE ONLY public."directMessageMatches"
    ADD CONSTRAINT "PK_1a66c5eea5f18f1f2dbfaaefe52" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public."directMessageMatches" DROP CONSTRAINT "PK_1a66c5eea5f18f1f2dbfaaefe52";
       public            postgres    false    228            
           2606    16520 .   gameResultNames PK_32778c617a827928a122e8391bb 
   CONSTRAINT     p   ALTER TABLE ONLY public."gameResultNames"
    ADD CONSTRAINT "PK_32778c617a827928a122e8391bb" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."gameResultNames" DROP CONSTRAINT "PK_32778c617a827928a122e8391bb";
       public            postgres    false    232                       2606    16522 ,   chatRoomUsers PK_38a16493e17b6550a22f93c53f5 
   CONSTRAINT     n   ALTER TABLE ONLY public."chatRoomUsers"
    ADD CONSTRAINT "PK_38a16493e17b6550a22f93c53f5" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."chatRoomUsers" DROP CONSTRAINT "PK_38a16493e17b6550a22f93c53f5";
       public            postgres    false    224                       2606    16526 (   chatRooms PK_5838720ac8d16811838967755b4 
   CONSTRAINT     j   ALTER TABLE ONLY public."chatRooms"
    ADD CONSTRAINT "PK_5838720ac8d16811838967755b4" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."chatRooms" DROP CONSTRAINT "PK_5838720ac8d16811838967755b4";
       public            postgres    false    226                       2606    16585 .   operationclaims PK_a07bcf07a3324ca642369eb4f17 
   CONSTRAINT     n   ALTER TABLE ONLY public.operationclaims
    ADD CONSTRAINT "PK_a07bcf07a3324ca642369eb4f17" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.operationclaims DROP CONSTRAINT "PK_a07bcf07a3324ca642369eb4f17";
       public            postgres    false    254            �           2606    16530 ,   chatRoomTypes PK_b4beff78cfda00e641eb0b2cd7a 
   CONSTRAINT     n   ALTER TABLE ONLY public."chatRoomTypes"
    ADD CONSTRAINT "PK_b4beff78cfda00e641eb0b2cd7a" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."chatRoomTypes" DROP CONSTRAINT "PK_b4beff78cfda00e641eb0b2cd7a";
       public            postgres    false    220                        2606    16532 5   chatRoomUserProperties PK_b95a6550d4e1c14aff16b831f23 
   CONSTRAINT     w   ALTER TABLE ONLY public."chatRoomUserProperties"
    ADD CONSTRAINT "PK_b95a6550d4e1c14aff16b831f23" PRIMARY KEY (id);
 c   ALTER TABLE ONLY public."chatRoomUserProperties" DROP CONSTRAINT "PK_b95a6550d4e1c14aff16b831f23";
       public            postgres    false    222            �           2606    16534 1   chatRoomProperties PK_dddfa76860b3844c0ef363320b2 
   CONSTRAINT     s   ALTER TABLE ONLY public."chatRoomProperties"
    ADD CONSTRAINT "PK_dddfa76860b3844c0ef363320b2" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public."chatRoomProperties" DROP CONSTRAINT "PK_dddfa76860b3844c0ef363320b2";
       public            postgres    false    218            �           2606    16536 &   achievementRules achievementRules_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."achievementRules"
    ADD CONSTRAINT "achievementRules_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."achievementRules" DROP CONSTRAINT "achievementRules_pkey";
       public            postgres    false    215            �           2606    16538    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public            postgres    false    216                       2606    16540    gameHistories gameHistory_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."gameHistories"
    ADD CONSTRAINT "gameHistory_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."gameHistories" DROP CONSTRAINT "gameHistory_pkey";
       public            postgres    false    230                       2606    16542    gameScories gameScories_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."gameScories"
    ADD CONSTRAINT "gameScories_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."gameScories" DROP CONSTRAINT "gameScories_pkey";
       public            postgres    false    234                       2606    16544 &   gameTotalScories gameTotalScories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."gameTotalScories"
    ADD CONSTRAINT "gameTotalScories_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."gameTotalScories" DROP CONSTRAINT "gameTotalScories_pkey";
       public            postgres    false    236                       2606    16546 $   operationClaims operationclaims_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."operationClaims"
    ADD CONSTRAINT operationclaims_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."operationClaims" DROP CONSTRAINT operationclaims_pkey;
       public            postgres    false    239                       2606    16548    twoFATypes twoFATypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."twoFATypes"
    ADD CONSTRAINT "twoFATypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."twoFATypes" DROP CONSTRAINT "twoFATypes_pkey";
       public            postgres    false    241                       2606    16550 &   userAchievements userAchievements_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."userAchievements"
    ADD CONSTRAINT "userAchievements_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."userAchievements" DROP CONSTRAINT "userAchievements_pkey";
       public            postgres    false    243                       2606    16552    userInfos userinfos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."userInfos"
    ADD CONSTRAINT userinfos_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."userInfos" DROP CONSTRAINT userinfos_pkey;
       public            postgres    false    244                       2606    16554 ,   userOperationClaims useroperationclaims_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."userOperationClaims"
    ADD CONSTRAINT useroperationclaims_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."userOperationClaims" DROP CONSTRAINT useroperationclaims_pkey;
       public            postgres    false    247                       2606    16556    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    249                        2606    16598 .   operationclaims FK_1a50a2ea41f653350a57375211c    FK CONSTRAINT     �   ALTER TABLE ONLY public.operationclaims
    ADD CONSTRAINT "FK_1a50a2ea41f653350a57375211c" FOREIGN KEY ("userOperationClaimsId") REFERENCES public."userOperationClaims"(id);
 Z   ALTER TABLE ONLY public.operationclaims DROP CONSTRAINT "FK_1a50a2ea41f653350a57375211c";
       public          postgres    false    247    254    3352                       2606    16606 2   userOperationClaims FK_92cca46c6c6d1df2d3e6a77d128    FK CONSTRAINT     �   ALTER TABLE ONLY public."userOperationClaims"
    ADD CONSTRAINT "FK_92cca46c6c6d1df2d3e6a77d128" FOREIGN KEY ("operationClaimId") REFERENCES public."operationClaims"(id);
 `   ALTER TABLE ONLY public."userOperationClaims" DROP CONSTRAINT "FK_92cca46c6c6d1df2d3e6a77d128";
       public          postgres    false    247    3344    239                       2606    16593 2   userOperationClaims FK_acd48e6ba52a4b1ac7164efd8a3    FK CONSTRAINT     �   ALTER TABLE ONLY public."userOperationClaims"
    ADD CONSTRAINT "FK_acd48e6ba52a4b1ac7164efd8a3" FOREIGN KEY ("userId") REFERENCES public.users(id);
 `   ALTER TABLE ONLY public."userOperationClaims" DROP CONSTRAINT "FK_acd48e6ba52a4b1ac7164efd8a3";
       public          postgres    false    249    247    3354                       2606    16611 .   operationClaims FK_bf738aced982fbd7684c47c7fef    FK CONSTRAINT     �   ALTER TABLE ONLY public."operationClaims"
    ADD CONSTRAINT "FK_bf738aced982fbd7684c47c7fef" FOREIGN KEY ("userOperationClaimsId") REFERENCES public."userOperationClaims"(id);
 \   ALTER TABLE ONLY public."operationClaims" DROP CONSTRAINT "FK_bf738aced982fbd7684c47c7fef";
       public          postgres    false    247    239    3352            �   k   x�3�4202�54�52�4�,�L�A�9��މ�G6�($%��Xtdc�%\F�:�8�2��K�����̼��"�	G6�d+�W��)�'�d&eV��d͈���� �y)      �   �   x�3�4202�54�52�,��N�<���3�����J_?9%O/3��(Q��H/�H?19#3�,575�D?371=U��B?�����D��,��մ#r��+K��s2�2+SK2I0��H?�����lv� �96�      �   ,   x�3202�5��52�,�4��--I�2B3�LL�������� �	�      �   <   x�3202�50"�NC΂Ҥ��dN�Լ�.#��HΈ��(�,�$���*�d� ��!      �      x������ � �      �   Z   x�e�A
�0D���.�tbl������)J���0TZ�Zx�[;\�W���h�j0]��}hj���@L'm���1�ٝ�Z�ѳr�˵��/R&�      �   Z  x�eҹ��:�X�/c���>����pmjkj�������~��S�+F|R��d�TLU�Z�JU����d�8,��{�(�x�oV;1���j��C�<V_�����U�Iح�[e��+R����)�:�tL\C{��=7֧�[�a�ԪB&q���h���rުM���\W�< �cp��|�'J�u���mzq��S>�j|��ȭ�[�WVVy�my4�c��4S�5�i:m]�ڦ�l��6=μ�\�O���[�*��O�TZ9@Rx�e���s�d��v�(�!բ����:���Tv���:N�Mo�!y��8�6۽ؔ���iMX�p�Z��G�bY�\}}����L���XHpD�5
18t���B=Q� J��12�m0�"�4D��=E��3nR�o��.Z�^=�\���'i��o�ڭ�Mk��<��#�,�	�4����@��F='R	��S������`,��Rc=.�!�0=0�^I �CE5":��J�ZÍ����|���W��m�'����?GX��L�5��Q���e$C�v_��+Q�*�]	%o6on�A����Ò������G��umxM��P��͛���������      �      x������ � �      �   R  x���Kn[1б��"���et���A��3{6/�#������Y���_�|D����/�����5_�o���9]o��~~�����<���|������|a�Q����燗ǯ�Q�>b�~<~�;R�R`*��
$y%ْlI�$[�-ɖdK�%ْlH�dH>?( ���������!ɐdH2$�I�$C�!ɐdH2%��LI�S������bb3q��L��?/J�M��EӢiѴhZ4�4�4�4�4�4�4�4�4�4�4]4]4]4]4]4]4]4]4]4]4�4�4�4�4�4�4�4�4��?O��$Z�3�&��bb2���L&hzhzizizizizizizizizizi�4m�6M��MӦiӴi��!�����^t�5tr5t.5�^C�5�Ҡi�4h\i����IӤir�ɕ��)��mp��݆�zoPr����Aɕ&W�U�QUT/�x.���iك�p�l'����O�N�N�N�N�N�N��G{T�G{T�G{T�G{T�G{T�G{T�G{T�G{T�G{Tm�n�����������^�^�^�^�^�^�^�^�^�^�6M��MӦi��������:�Rb      �   7   x�3��L�4202�5��54�,�2����K-R��/.A�2�I�������qqq �G�      �   z  x�u�]n�0E�g{/.f�r(�^����� �	��#ҧ�̭�x���_a��������(�=~��X�Y����9�Ǚ|υ�x~��|}�^��My�M��\�u�����܉�;��u'3΅yg��ŹqNΝ3+++����be��XY�,V+����0T����gT��2�a�Ce*�X�tV:+���Jg���Y�tV+×�d����y=}f^�ؙ�3v����y=cg���3+�J�R�+�J�R�+++++++++++����de�2Y��LV&+��������m����ΧϽ}�_�qn�e,<��n�������8;��,���y�}��ʃ�+VVVVVVVVVVV+����be��XY�,V+�2T�P)C��2T�P)C��2T�X�tV:+���Jg��ҙ|��7|'���?.����O?��'���/����3_��~	���x����x����x����x����x����x������s�@�l��Ӷ�ݮ����=I~��_���>��J�6$�l�_��w0������������#�>��#�>��#�>��#�>��#�>��#�>��#�>��#�>��#�>��#�>��#�>��#�>��#�>*>}
O�����?�r      �   D   x�]�A�@��/5���3>��ǭ�4�a �az������K����Cl�[��z"��3����{G���c      �      x������ � �      �   [   x�3�4�-N-��.��I�;�1��F�?.cN#Nǔ��<�����RK2�3A�&�&���%��y��@]��ŉY9�G��&*�����qqq � _      �      x������ � �      �      x������ � �      �   '   x�3�42�4�4202�50�52�,�2�42B����� ��Q      �   �   x�u��M1F�N�@"۱Ont@\�'��E�%q�(��
�aw����g& ���9G�����h�R���� n�/��a�����|:L�S�@ҧlg��5{UO"e���U�u�N$Q<�qF��&��em-=��{|�q�r�k+a_�Tڌ*�Yt��(K�8�Fq]JC\�,������{� ��)Z�k�T��r
d��D��e ��V,��.�0��+�Z��L|�C�~=]��U�D�wyw	���=�e�C�K!�I�v�      �      x������ � �      �   p  x��VKn$7]�O��AR")��@�m�Yy���8��$���R���سȤ�U�%���D9<<|�.���c�8�'RQ�R!)xn�$�Sm���+K]�P �Sb.j t�F����Á���;�[�'�'��C7[���χ��Η�����T�F��������7����00�^DrB�!���⣏�ٳ�
1���\�šŀAr	�<���=jϪ5 ��ko��B)P�k��MpBB9�����7��4m(AKlR�Z��w�j,�!i�%�J���I0	��CQ.�9.���h��51F�G���p<�;
M�������������邗/�}OcD����Q��@"����ZSiAk���JȀ=i
�kvUS/F2��LI��0��6-;^�Ҽ�lDJ�-��k�G�(N�U&������>�Z�Y�痣�?�Jj�����y�2��lb�Ē���gY~�d�B$^P�Z윝�@��vw�8�ք7�x�p�����]�e�8cp�X�����������he������a���J4{q��91�96N��U�Or��sz�tx�+����mŦ�NxD�;�2k��9�;(w[�4B'��1��"�?H.��e'������ ^9��c���yƉ�z`�]3�s%?#^9\���5�3W82�w(?0�S�Zݎ���1^i������B�2��i�Y�2�ve"���������i��ʫ�q8�H�QH?;N�/H���#_8����M1�ʁ�[cx<���m��e����پ ��-Ӳr�S	[�W��X�w*��,�=��PNl�>��?�}'6�l_���ij��T�n�6g�҄�
��Ъ5	�����vL��Ibw���/,$-��1(�P���<w��RT��Ŏd�i��B!-���8T�������)M��"j�W(v2#��c�[����lR.������{�%}z>���!�~�2�_�|�2 DL�*ﳷ,�R�g���ԉ�$��}Lb�@�a����ľW;�+'�D���
�q�� �Ho�|r���Ȩ+��V��OÏO�%�5	�I%Uk:�`8��i�'��BJ�¡�Ըǘ��#(v��	F)�����������������ޮ+�Ǜ�� "i�     