PGDMP                  
    |         	   dom1store    16.6    16.6 b    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394 	   dom1store    DATABASE     k   CREATE DATABASE dom1store WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE dom1store;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16395    basket_devices    TABLE     �   CREATE TABLE public.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);
 "   DROP TABLE public.basket_devices;
       public         heap    postgres    false    4            �            1259    16398    basket_devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.basket_devices_id_seq;
       public          postgres    false    4    215            �           0    0    basket_devices_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.basket_devices_id_seq OWNED BY public.basket_devices.id;
          public          postgres    false    216            �            1259    16399    baskets    TABLE     �   CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.baskets;
       public         heap    postgres    false    4            �            1259    16402    baskets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.baskets_id_seq;
       public          postgres    false    217    4            �           0    0    baskets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;
          public          postgres    false    218            �            1259    16403    brands    TABLE     �   CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false    4            �            1259    16406    brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    4    219            �           0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    220            �            1259    16407    device_infos    TABLE       CREATE TABLE public.device_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);
     DROP TABLE public.device_infos;
       public         heap    postgres    false    4            �            1259    16412    device_infos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.device_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.device_infos_id_seq;
       public          postgres    false    221    4            �           0    0    device_infos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.device_infos_id_seq OWNED BY public.device_infos.id;
          public          postgres    false    222            �            1259    16413    devices    TABLE     V  CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price character varying(255) NOT NULL,
    rating integer DEFAULT 0,
    img character varying(255) NOT NULL,
    img2 character varying(255) NOT NULL,
    img3 character varying(255) NOT NULL,
    img4 character varying(255) NOT NULL,
    catigory character varying(255) NOT NULL,
    relevance character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer,
    discount real
);
    DROP TABLE public.devices;
       public         heap    postgres    false    4            �            1259    16419    devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.devices_id_seq;
       public          postgres    false    4    223            �           0    0    devices_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;
          public          postgres    false    224            �            1259    16420    order_devices    TABLE     $  CREATE TABLE public.order_devices (
    id integer NOT NULL,
    name character varying(255),
    category character varying(255),
    count character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "orderId" integer
);
 !   DROP TABLE public.order_devices;
       public         heap    postgres    false    4            �            1259    16425    order_devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_devices_id_seq;
       public          postgres    false    225    4            �           0    0    order_devices_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.order_devices_id_seq OWNED BY public.order_devices.id;
          public          postgres    false    226            �            1259    16426    orders    TABLE     �  CREATE TABLE public.orders (
    id integer NOT NULL,
    "orderEmail" character varying(255),
    "phoneNumber" character varying(255),
    delivery character varying(255),
    name character varying(255),
    surname character varying(255),
    payment character varying(255),
    cost integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false    4            �            1259    16431    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    4    227            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    228            �            1259    16432    ratings    TABLE     �   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "deviceId" integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false    4            �            1259    16435    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    4    229            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    230            �            1259    16436    type_brands    TABLE     �   CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);
    DROP TABLE public.type_brands;
       public         heap    postgres    false    4            �            1259    16439    type_brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.type_brands_id_seq;
       public          postgres    false    231    4            �           0    0    type_brands_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;
          public          postgres    false    232            �            1259    16440    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false    4            �            1259    16445    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    4    233            �           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    234            �            1259    16446    users    TABLE     K  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    name character varying(255),
    surname character varying(255),
    "phoneNumber" character varying(255),
    patronymic character varying(255),
    date character varying(255),
    gender character varying(255),
    extension character varying(255),
    address character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    16452    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    235    4            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    236            �           2604    16453    basket_devices id    DEFAULT     v   ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval('public.basket_devices_id_seq'::regclass);
 @   ALTER TABLE public.basket_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16454 
   baskets id    DEFAULT     h   ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);
 9   ALTER TABLE public.baskets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16455 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16456    device_infos id    DEFAULT     r   ALTER TABLE ONLY public.device_infos ALTER COLUMN id SET DEFAULT nextval('public.device_infos_id_seq'::regclass);
 >   ALTER TABLE public.device_infos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    16457 
   devices id    DEFAULT     h   ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);
 9   ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    16458    order_devices id    DEFAULT     t   ALTER TABLE ONLY public.order_devices ALTER COLUMN id SET DEFAULT nextval('public.order_devices_id_seq'::regclass);
 ?   ALTER TABLE public.order_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    16459 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    16460 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    16461    type_brands id    DEFAULT     p   ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);
 =   ALTER TABLE public.type_brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    16462    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    16463    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            l          0    16395    basket_devices 
   TABLE DATA           ^   COPY public.basket_devices (id, "createdAt", "updatedAt", "basketId", "deviceId") FROM stdin;
    public          postgres    false    215   $v       n          0    16399    baskets 
   TABLE DATA           I   COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    217   Av       p          0    16403    brands 
   TABLE DATA           D   COPY public.brands (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   �v       r          0    16407    device_infos 
   TABLE DATA           d   COPY public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") FROM stdin;
    public          postgres    false    221   �v       t          0    16413    devices 
   TABLE DATA           �   COPY public.devices (id, name, price, rating, img, img2, img3, img4, catigory, relevance, "createdAt", "updatedAt", "typeId", "brandId", discount) FROM stdin;
    public          postgres    false    223   �v       v          0    16420    order_devices 
   TABLE DATA           g   COPY public.order_devices (id, name, category, count, "createdAt", "updatedAt", "orderId") FROM stdin;
    public          postgres    false    225   ��       x          0    16426    orders 
   TABLE DATA           �   COPY public.orders (id, "orderEmail", "phoneNumber", delivery, name, surname, payment, cost, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   ��       z          0    16432    ratings 
   TABLE DATA           [   COPY public.ratings (id, rate, "createdAt", "updatedAt", "userId", "deviceId") FROM stdin;
    public          postgres    false    229   ��       |          0    16436    type_brands 
   TABLE DATA           X   COPY public.type_brands (id, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
    public          postgres    false    231   ܒ       ~          0    16440    types 
   TABLE DATA           I   COPY public.types (id, name, link, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   ��       �          0    16446    users 
   TABLE DATA           �   COPY public.users (id, email, password, name, surname, "phoneNumber", patronymic, date, gender, extension, address, role, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   ��       �           0    0    basket_devices_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.basket_devices_id_seq', 1, false);
          public          postgres    false    216            �           0    0    baskets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.baskets_id_seq', 4, true);
          public          postgres    false    218            �           0    0    brands_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.brands_id_seq', 1, false);
          public          postgres    false    220            �           0    0    device_infos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.device_infos_id_seq', 1, false);
          public          postgres    false    222            �           0    0    devices_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.devices_id_seq', 52, true);
          public          postgres    false    224            �           0    0    order_devices_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_devices_id_seq', 1, true);
          public          postgres    false    226            �           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 1, true);
          public          postgres    false    228            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    230            �           0    0    type_brands_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.type_brands_id_seq', 1, false);
          public          postgres    false    232            �           0    0    types_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.types_id_seq', 1, false);
          public          postgres    false    234            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    236            �           2606    16465 "   basket_devices basket_devices_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT basket_devices_pkey;
       public            postgres    false    215            �           2606    16467    baskets baskets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.baskets DROP CONSTRAINT baskets_pkey;
       public            postgres    false    217            �           2606    16469    brands brands_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_name_key;
       public            postgres    false    219            �           2606    16471    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    219            �           2606    16473    device_infos device_infos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT device_infos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT device_infos_pkey;
       public            postgres    false    221            �           2606    16475    devices devices_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_name_key;
       public            postgres    false    223            �           2606    16477    devices devices_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey;
       public            postgres    false    223            �           2606    16479 $   order_devices order_devices_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT order_devices_name_key UNIQUE (name);
 N   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT order_devices_name_key;
       public            postgres    false    225            �           2606    16481     order_devices order_devices_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT order_devices_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT order_devices_pkey;
       public            postgres    false    225            �           2606    16483    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    227            �           2606    16485    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    229            �           2606    16487    type_brands type_brands_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT type_brands_pkey;
       public            postgres    false    231            �           2606    16489 *   type_brands type_brands_typeId_brandId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");
 V   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_brandId_key";
       public            postgres    false    231    231            �           2606    16491    types types_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.types DROP CONSTRAINT types_name_key;
       public            postgres    false    233            �           2606    16493    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    233            �           2606    16495    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    235            �           2606    16497    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    235            �           2606    16498 +   basket_devices basket_devices_basketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_basketId_fkey";
       public          postgres    false    3509    215    217            �           2606    16503 +   basket_devices basket_devices_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_deviceId_fkey";
       public          postgres    false    223    215    3519            �           2606    16508    baskets baskets_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.baskets DROP CONSTRAINT "baskets_userId_fkey";
       public          postgres    false    3539    217    235            �           2606    16513 '   device_infos device_infos_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT "device_infos_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT "device_infos_deviceId_fkey";
       public          postgres    false    3519    223    221            �           2606    16518 (   order_devices order_devices_orderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT "order_devices_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT "order_devices_orderId_fkey";
       public          postgres    false    3525    225    227            �           2606    16523    ratings ratings_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_deviceId_fkey";
       public          postgres    false    223    3519    229            �           2606    16528    ratings ratings_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_userId_fkey";
       public          postgres    false    229    235    3539            �           2606    16533 $   type_brands type_brands_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_brandId_fkey";
       public          postgres    false    219    3513    231            �           2606    16538 #   type_brands type_brands_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_fkey";
       public          postgres    false    233    231    3535            l      x������ � �      n   [   x�}λ	�0�:�"}��ײ5K��#����u��!�B:�rM����F�G�4�h1Y>��-I��dx;��H��sX�^_�d�# �+      p      x������ � �      r      x������ � �      t      x��[K�\�u^7�]J0�Q��5;RR(��E��� ɢ��D�ib8CY;ہ�2���Ye+�6`ȱ���(߹�z�=�N�g�.{�~���q��V�_�<k�����6��^���Nʺ���?����>x����Օv��r%WN���7��^�	ňd�.�V�,Խ_���/W�%�k-"���5�
.l��D���[J�P�B�ԅ��D��	�t-�+o��/�=z����eM�$bVJx����t˅/�v^�R��Jg+%�R�߉����vm���T?�D�G��=u#3�
���i=?�����职���j�Ho�DG"GUD�2[����#oIUr�k�I�Dj:��r57銛/���,�: ӵ����ܩ��Ȅj|�U�Z�V��h=-���������dv�fd��}\�~49X���[l�Ov���^Ȁ�5ԓH|������Ór~��J4�� >U[�e#l���v!ٲT��dr,BU�Q^�&޳NTZ�h�`#m��[��6x�_(zv�#�6�ll\�p���s����zx���J�Q.)'�`���7�/�n̍���M{ U���sjIF'�q����)KԌ�!gɶ�
�ӵ��*p	�)��5�(lt�)C_^�6m�-�*q��5!X-��F��l�	��'ƭ�L�b���m${��_l�G��={0==={�.V~K3$e��܆!�(���ANQ)�e]�I��Y�ܲ0�d�bBy��Q��ܴ{��
��QP"h��i�(0��5�J���Dh>�W�&�G�YgKt>z��.:���c��h������೔�߷����oi�Z�;sU����3U�J�>�iyx��$�p�12.��B���b	�:y��)��@��Oߺ�ΝL{�ؤ�9��L`��kG0�r��f"��V��D�Z�������ݪ9�z5��'`����+k6�C1Z�K �X�D���5)jG�C�T,E^���>�N���r��R�+Y��«�C�$��M�F�f���6�R��j�-��(QH5�Q�٪wc�O�Zk`�����0�9��O/�����ZO1Fn+�FF�
�X`�QC�3�o���d���hO*�K��(lU=w ����%4U���Y��Y����ꭄ��r�Y��@1L:
�&(��7��B=���	����hgwiQ<H;L97g�m�T	����D�V��o�D�j��=�6���{q׆y��D���O�3m+�SҬbQ� R
�|�=��X��V�	PnAAC�3�H��c;{��Z�C����4�;2���!W��I/j�hP
A|hZE���o�J��̅��z(� ��,�-����·h�n���\����*���c�e$:���>� �G��s��5p]A����I��L|wg������� �;c��ypv՘�dl&g`�Dp{��mTx��������6�.����#7,�Z_�#�*m�4����5.��6���KKI0nJ�&�o-P*ߜ�u�{:�p�	ɵ4���]ؼuĩN�O/&\�G4}~*��t��O_���x�7+�t�6T \nx�A��2h�K_�f3g�S��c9+�~h��l�Ze��r D�.T����2id^Z�u��f�P�܎�Y@AP*������������G*�vN@joi��]�f�f����b|Mq��D�"2��8��Z�GW�9�h���UT	"����:�=�����r�"���T���^��E�bH�,ĖP��HF"(����@RǢK,�Digi8C2�(-&�^==>=�j���s�<'A����:����H��8Y��x� Z�oG!G�KCMP���=l=��� Pϖ���3��V��Bxf�J g�@������q-��[[�)�wcN�<�v-��������.B����h[G?�>�G�:K#��v���a�*�x��)�ʏ>D|H�td%G����3�<8*#h:��oa�L�������x
���m����3-O��^ 	��A��quve?GPl�(̈�:�;<u{i�}�V��ݺ�A�e�ь:pL���]1-p
�{��%�[��&�W�(P����p̰Y y2�Z@Cʨ6)<��{�TxEP?��G��&�T�v�b2(ݢY	��.*qh�MQ�w\�������`�5���dCN���Bo����k3�J�#�u,�}��o4�(J�Q��(���9g�T ��z��x
o�`$+�̱G!=��Py"� � 9�ڇ����{�� Z{KZa�(���WKOj��� ��wP�qk���[vR���#��O ���Z���JIT!���:" ����	K�Td�T�yv�p�y@�ouG��|��$��D���Z9�&4��+ui�˔�����dN�[����]�J���-�c��-�4��ի�͋�.�'3�՝�� Ұ�FN�Kxl�R:�a�-N!����E�Ǔ�$��AnMV����u��
�a:�[`��L�D�h��͢�,���������*��7\=s�4�,`)�_R3T��}��na�hTEj��D���+�p�QU�����x�F:+�9��IP�<_]|EW���ڕb5�ҋ�H�H����$r�](^uY���� ^��)�� H]m�(�쉑pQw�%=(^��ڲ�w��I��3�xv�:�e�a}f3�l�zXv���NҢ�l�{k�K�j��B�V��C2�*��;�{�d?>����<��� {���X�7��q55�)xe��օ�![�0�4��-*��d�t�4�QL6�G>�;em\�[cd�)g}�pO�tp1��D�&�Rϫ������KK��)6����aFKufx2���_"@eK%���΄��U��+��vV�v�o���� i->ț6ti�O|� �w6"Eت^p�K-xU; �����:�	�K*��L�"��A�pf�j�h�lS��9�p/(���DE���xd��7A¿����Q��y�t��w�n�p�O��l2?^��{�~�~����g�V[B�	aO5��73�6�$�X�M�zy���Vx�7����[¡+��h��U�7�x�E&�Nl,HVB�2^1@��`����7��Kk��SRfa�����$7���|o�,��V����_����7o~5]�_��������tq:=i/6�m�ޜ����'*臋$0�J�DB=�@~Lq�TWj�K���gj��Ff&� }l̕�.�k���0"��3<��mxU�A�<����_�"��H9ȫ�.Xs�vw��%�m@����뿼���_��4=�Juz��s��_�p^;���Ww1T~NԾ��\��Y��'�O4��D�`hR�{�^H%ܦm<YWV8�ש)z;�Q�c��YX~,�G����BYs��;} BE�i9htx�B����l���y����4
.�>���'[��k�@���Û_�_��-��|�����o��@�W�x�DI�xz�[��x&��W�_�2���Ը�Q+�h,��WH?^J��_X�ˬ�c��³Ay��Xʈ�q!����:Ua�)��tD�&o���:�8��c �٥P�lb`k"�QA����-��4 �\��)P��U-Iv�Ku�������FW	��a�%޸�%g�T"4)EW��
vnL)l������!,�P,����as�V������SoML�	��j�0��.��܉�k1��r����_�7������ş���}���i�ؼ���鋼����]��W����{��)� {V~�U�M �<����C�x_��Qz�k$��腌f�qU�O��J�A�|�V8�~��B ^+�Y/O`)A䫞U���*��Q�<S�
�﵅�<��9�9�=��(�.�e��V�q�b�g�}�����M�ӫW�gg��/�\s�v�y���ˇxГKB����S��,:���%��j�3��dp�D�xݖ"�LY��wE� �ڑpN��K��qI�`��ט1ZD}J�7�ε���q���Ļ�����".��V����j�d�ż?��,��V �
  $��\b�ˈF��%�M���GI28�k�.��t�Z�Z
��z
�����N�&�T�WR���D앓kc��E��>*bHDuSh!�(d?�ϻ�t�kwi����t;ᇧ0��铟M��+��p�J��J�I[��TT��n��CBEJ<�P-ڒ������T!3�{"�Ģ��L�7Y�]�����#���zpL(6�%�x���Z��#����=�e�N��� ^�9u,�Vc�+TsTV�?��%�~�~������o�\/O7��۲ل,�,���dy�ñ��YϺ�m����-u>���k	וּyxh�fK&&y#
�=����|�4j-��1_�-l1@�S��xc"Ù�l;R�Qh)y?���ޒݪ�]]����\��o~%��~���a_��<]��|
�=�O?��|���,�t�슧�W/�ҫ6}}z�|砒cr]����|�ʤ���([�B]�)l���l��U 8e�^�R4�U�R�|:�#��XݽȻ&�,&H"�1�A��[.���0��*�{#�q䥜m�W��2
���ޒ[�����a����vz�rsq9=H��������zɭ�R)PW�\�҃��A�(�O8l�@؉��J��с@���Y���h�n"�K���V��K����8�x6]�AF��ޕD���:
fub	|y@�����o���	�A�߮� �� ����	���V	'n�!��ꆷL6���:K2*Y(�9���R�;���'��6���nrir�<���
T���<ʈSH��x0�ywК�O<���ʀ9�����듏><���+ږ2�j�E@�� L�)��?N�+���O�`!8����@�ݠ���)u�\S����7Xg>��v�P�j�eq�A*��Hd�����sEo�;6'�Q؋�[r#��x4�p�i�xg�D����2����秗m���t~�.o�52!�kmY�t69�<��Ԧ���8���AV�����2�q|����#��'�-X�>��^�?����SV\������ �
u��Ěu�"�ޒ�g�ꃄH��ӇW��L�6�]�Ջ�.���M��YX����#�����D;�Xr��y� ��x�8�����YH6��7��t�]�0.d1,����T��]H�Y�[�
�EV��Вx:�4�����������"����e�� �܉�k���ޒ_�����<]\�:��}��7�׳��5Z����Y+���������Xx� O���xÝ��zE,�m���B��m8�W�8����Ձ����	ތ<{�yC��P�$=�l�'�����R��"�z
P�jM�.�2!�M8�U��4�R�g�ѕ���v1i|uV����/� �:��Q=��Zp�3N��#RI��0���Rt�3Wxt4J_v!}���1�-">B�l`��;0-#��:9�=^:����b�,-�e��`GL���1e��@��a<�!S�!֚	����I�Ff1۪���ۄl�2�%�hF�S@4�'�ڀ�k5�˛�Ki��3w�l�%	N��9*)�'��ķ��0:��P�$��8��lj�ct�|:8�ك)��k���0�܎�&���@|�[ؘ�^,)]\���Ǜ9]��a[I7H�ҩ�F��X�t=4r����l�~A9�#��ou(v˳H���sZ� JGy�4�C7O��h �W&cKaT�/�*������&���4�b�G ��9(�ݶ�4����7_~fz�%�[�t��h�R�����y|�H�"g2)�����8���\����C$��f�i#�u�X�-߰W�0�O��`��8��P4Y��	��Z$�x�P�/�d���l�>�n<d���2nu�ɳ�|�ӏ�O_����E�>�R�&���e&W��Kw���\*GNi%��������[�;|��o��u.�������IuQ*O���ș"��,Z�����	9IB��SV���S=�ET�#�xyu�.��[�t�c#�������a���r����?���G��t;^H�gJ@V��O%4��j�֜ƙ6�ǟY@��	�){�jC��_
��t���� ��%�O���9d��#��N��8|����R�pZmԎDf>�~`��0P	���g���-*�N��O����>�&̽�zW�s��<��|f��u̣��3>e�#:�Y���G#?I[Q},���t7�+с�=���z0�%>�Z��8h�^h	��xkс�2o`t���~�����ұ����-����S6FO��@F���9������`���G��6�7��5�q (Yɴ�D�3o��|�!ِ��t)�Ӱ��*%���<Q�}]��fMч��������B��(y���{7@���PW�.-�c�]�y�kO����L�q�
!=� Ζǻ(>��G�;d	�u	]hZk�Z���J�a��2�NnMv�p��{t���DI�.E�N�������p$�2�|:�P�n�	���W�'�[
��d�]p�>{���I)��q�#�i	)��],���>�i��n�c,$^�g>U��
|�匎�7�i�=E�v��r�f����#%$�0>���E�;�M�=oK�٥DBG��N(��9T:�K������{��5?ͯ      v   ]   x�3���MLv���V(�W04V�5R�025sOR0202R.HLNUp/J��,IL�I-)�4�ʘ����������������^)C�=... �_       x   �   x�u�=
�@���S,X�aw��� 6k�"ֱ���7�������Qka�1��=F1-U4��l6��m6��tκ~$�00R�E��˼����h�
�;��J<{�n��'��g\P�E-p�W�ݎ��m)o_�4_�b��!�TR�ڐ�~86�E��0��~Ԧ/}�����Q^l�R����9Q$a�      z      x������ � �      |      x������ � �      ~   �   x�3�0�®���^l��|a�ņ;83�sS�9��Lt��H�����L�L�̵��Hq�r^�ua߅�@#�]�}qgr~^q~��q:��'�$gp&��'g�k�9煶��>LO$߇��@_�����k�!�g@F~^*�"�cN��d���l8M�9F@w$�@�L����� �9�      �   �  x����n�@���Yxe<�pXc�q0&��8� `��Uߡy�,Z�j�<}��n�4i�J��Y��m�O���h���2+��b%k0K7\ݴ�Բ\%��S��ކ�YY1,Gf�K���A��x�]�i��)r\�������W�����?4�����~�N1��"��H�����C�g7s"Ț�5I�*�B��#n<����\FyR$�����4}�C:�p�>�9M]F�;��8C�ѳ�W3g0\�܋�n��oE%���|� 7P ?�yY�]��t;Ơ7-���2O��m^=����r�������}����I�m�]��E�����D��"y)#a� "�(#!��]X}E�œ�inSZ�C�]�uj����.��>���bd�i�@6t9V�[v{ܿ�AΐrU�I(  ?kx�׀���:��e     