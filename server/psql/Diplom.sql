PGDMP                      |         	   dom1store    16.2    16.2 `    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    24777 	   dom1store    DATABASE     }   CREATE DATABASE dom1store WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE dom1store;
                postgres    false            �            1259    24847    basket_devices    TABLE     �   CREATE TABLE public.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);
 "   DROP TABLE public.basket_devices;
       public         heap    postgres    false            �            1259    24846    basket_devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.basket_devices_id_seq;
       public          postgres    false    226            /           0    0    basket_devices_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.basket_devices_id_seq OWNED BY public.basket_devices.id;
          public          postgres    false    225            �            1259    24791    baskets    TABLE     �   CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.baskets;
       public         heap    postgres    false            �            1259    24790    baskets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.baskets_id_seq;
       public          postgres    false    218            0           0    0    baskets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;
          public          postgres    false    217            �            1259    24816    brands    TABLE     �   CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    24815    brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    222            1           0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    221            �            1259    24906    device_infos    TABLE       CREATE TABLE public.device_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);
     DROP TABLE public.device_infos;
       public         heap    postgres    false            �            1259    24905    device_infos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.device_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.device_infos_id_seq;
       public          postgres    false    234            2           0    0    device_infos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.device_infos_id_seq OWNED BY public.device_infos.id;
          public          postgres    false    233            �            1259    24825    devices    TABLE     V  CREATE TABLE public.devices (
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
       public         heap    postgres    false            �            1259    24824    devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.devices_id_seq;
       public          postgres    false    224            3           0    0    devices_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;
          public          postgres    false    223            �            1259    24873    order_devices    TABLE     $  CREATE TABLE public.order_devices (
    id integer NOT NULL,
    name character varying(255),
    category character varying(255),
    count character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "orderId" integer
);
 !   DROP TABLE public.order_devices;
       public         heap    postgres    false            �            1259    24872    order_devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_devices_id_seq;
       public          postgres    false    230            4           0    0    order_devices_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.order_devices_id_seq OWNED BY public.order_devices.id;
          public          postgres    false    229            �            1259    24864    orders    TABLE     �  CREATE TABLE public.orders (
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
       public         heap    postgres    false            �            1259    24863    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    228            5           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    227            �            1259    24889    ratings    TABLE     �   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "deviceId" integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    24888    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    232            6           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    231            �            1259    24920    type_brands    TABLE     �   CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);
    DROP TABLE public.type_brands;
       public         heap    postgres    false            �            1259    24919    type_brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.type_brands_id_seq;
       public          postgres    false    236            7           0    0    type_brands_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;
          public          postgres    false    235            �            1259    24803    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    24802    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    220            8           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    219            �            1259    24779    users    TABLE     K  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    24778    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216            9           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            S           2604    24850    basket_devices id    DEFAULT     v   ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval('public.basket_devices_id_seq'::regclass);
 @   ALTER TABLE public.basket_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            N           2604    24794 
   baskets id    DEFAULT     h   ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);
 9   ALTER TABLE public.baskets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            P           2604    24819 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            W           2604    24909    device_infos id    DEFAULT     r   ALTER TABLE ONLY public.device_infos ALTER COLUMN id SET DEFAULT nextval('public.device_infos_id_seq'::regclass);
 >   ALTER TABLE public.device_infos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            Q           2604    24828 
   devices id    DEFAULT     h   ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);
 9   ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            U           2604    24876    order_devices id    DEFAULT     t   ALTER TABLE ONLY public.order_devices ALTER COLUMN id SET DEFAULT nextval('public.order_devices_id_seq'::regclass);
 ?   ALTER TABLE public.order_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            T           2604    24867 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            V           2604    24892 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            X           2604    24923    type_brands id    DEFAULT     p   ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);
 =   ALTER TABLE public.type_brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            O           2604    24806    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            L           2604    24782    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    24847    basket_devices 
   TABLE DATA           ^   COPY public.basket_devices (id, "createdAt", "updatedAt", "basketId", "deviceId") FROM stdin;
    public          postgres    false    226   �t                 0    24791    baskets 
   TABLE DATA           I   COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    218   �t                 0    24816    brands 
   TABLE DATA           D   COPY public.brands (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    222   u       &          0    24906    device_infos 
   TABLE DATA           d   COPY public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") FROM stdin;
    public          postgres    false    234   /u                 0    24825    devices 
   TABLE DATA           �   COPY public.devices (id, name, price, rating, img, img2, img3, img4, catigory, relevance, "createdAt", "updatedAt", "typeId", "brandId", discount) FROM stdin;
    public          postgres    false    224   Lu       "          0    24873    order_devices 
   TABLE DATA           g   COPY public.order_devices (id, name, category, count, "createdAt", "updatedAt", "orderId") FROM stdin;
    public          postgres    false    230   �                  0    24864    orders 
   TABLE DATA           �   COPY public.orders (id, "orderEmail", "phoneNumber", delivery, name, surname, payment, cost, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    228   \�       $          0    24889    ratings 
   TABLE DATA           [   COPY public.ratings (id, rate, "createdAt", "updatedAt", "userId", "deviceId") FROM stdin;
    public          postgres    false    232   &�       (          0    24920    type_brands 
   TABLE DATA           X   COPY public.type_brands (id, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
    public          postgres    false    236   C�                 0    24803    types 
   TABLE DATA           I   COPY public.types (id, name, link, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   `�                 0    24779    users 
   TABLE DATA           �   COPY public.users (id, email, password, name, surname, "phoneNumber", patronymic, date, gender, extension, address, role, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    216   O�       :           0    0    basket_devices_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.basket_devices_id_seq', 1, false);
          public          postgres    false    225            ;           0    0    baskets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.baskets_id_seq', 3, true);
          public          postgres    false    217            <           0    0    brands_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.brands_id_seq', 1, false);
          public          postgres    false    221            =           0    0    device_infos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.device_infos_id_seq', 1, false);
          public          postgres    false    233            >           0    0    devices_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.devices_id_seq', 52, true);
          public          postgres    false    223            ?           0    0    order_devices_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_devices_id_seq', 1, true);
          public          postgres    false    229            @           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 1, true);
          public          postgres    false    227            A           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    231            B           0    0    type_brands_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.type_brands_id_seq', 1, false);
          public          postgres    false    235            C           0    0    types_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.types_id_seq', 1, false);
          public          postgres    false    219            D           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    215            l           2606    24852 "   basket_devices basket_devices_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT basket_devices_pkey;
       public            postgres    false    226            ^           2606    24796    baskets baskets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.baskets DROP CONSTRAINT baskets_pkey;
       public            postgres    false    218            d           2606    24823    brands brands_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_name_key;
       public            postgres    false    222            f           2606    24821    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    222            v           2606    24913    device_infos device_infos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT device_infos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT device_infos_pkey;
       public            postgres    false    234            h           2606    24835    devices devices_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_name_key;
       public            postgres    false    224            j           2606    24833    devices devices_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey;
       public            postgres    false    224            p           2606    24882 $   order_devices order_devices_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT order_devices_name_key UNIQUE (name);
 N   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT order_devices_name_key;
       public            postgres    false    230            r           2606    24880     order_devices order_devices_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT order_devices_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT order_devices_pkey;
       public            postgres    false    230            n           2606    24871    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    228            t           2606    24894    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    232            x           2606    24925    type_brands type_brands_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT type_brands_pkey;
       public            postgres    false    236            z           2606    24927 *   type_brands type_brands_typeId_brandId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");
 V   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_brandId_key";
       public            postgres    false    236    236            `           2606    24812    types types_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.types DROP CONSTRAINT types_name_key;
       public            postgres    false    220            b           2606    24810    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    220            Z           2606    24789    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    216            \           2606    24787    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            |           2606    24853 +   basket_devices basket_devices_basketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_basketId_fkey";
       public          postgres    false    226    218    4702            }           2606    24858 +   basket_devices basket_devices_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_deviceId_fkey";
       public          postgres    false    226    224    4714            {           2606    24797    baskets baskets_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.baskets DROP CONSTRAINT "baskets_userId_fkey";
       public          postgres    false    216    218    4700            �           2606    24914 '   device_infos device_infos_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT "device_infos_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT "device_infos_deviceId_fkey";
       public          postgres    false    224    4714    234            ~           2606    24883 (   order_devices order_devices_orderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_devices
    ADD CONSTRAINT "order_devices_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.order_devices DROP CONSTRAINT "order_devices_orderId_fkey";
       public          postgres    false    228    4718    230                       2606    24900    ratings ratings_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_deviceId_fkey";
       public          postgres    false    224    232    4714            �           2606    24895    ratings ratings_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_userId_fkey";
       public          postgres    false    4700    216    232            �           2606    24933 $   type_brands type_brands_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_brandId_fkey";
       public          postgres    false    236    4710    222            �           2606    24928 #   type_brands type_brands_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_fkey";
       public          postgres    false    220    236    4706                  x������ � �         I   x�3�4202�50"Cs+c+S3=SKmc|R�\F��@d�gna�E'���������)�H2�\1z\\\ f( \            x������ � �      &      x������ � �            x��[M�\�u]7�[J0jP��kv��P�M� )KA�E}�g�ᐲv�ge ;/�	��V�m��c�/�Q�}U=��Ć�"g�{��w���UM��ϟ������󳶐^����,ʺ����>����>x���Սv��r#7N���7��^�	ňd�.�V�,Խ?���_n�K��ZD�1�k!\�R+���9���t�d�*�CՉXS*�Z�W�h�^h{�VY%��˚�IĬ������t���|;/6�\�L�%�R���c㏍=2��H�Z"�O�;�-��B* �'���˧��'2J''��"y�)�UI�lmJ@��o��%U�	g�&y��(��!�ܤ+n��'W��Z��L�`�B�s���~"���W�j�+�ZERD��`�L@Z�w#��m� ���"sG����G�3��N����bWlP01y��[C=���m��*<<)�7�D�H	�S���P6�v��k�-�j�%�c�J���5��u�Қ�E�����o)����~���y�L��C���(���\�ḓ�u�������\RN��(ѻox_�ݘ?=)�� ����sjIF'�q����)KԌ�!gɶQ���}G��֔A�Q6��Ɣ��W�ME�q�J\hpMV*�Q�D=�wBb�qGx��1���m${��^�/��zroy|r��]l��fH��j/�C�Q�M���R��:�I��Y�ܲ0�d�bBy��Q�4nZ�=Bu���((�F�4Y�K���\As"4�u٣Ь�%:��r���{�cc����N7�>t���g��߷�������w�4퍇g�F�Z}�-�xx��$�p�12.��B���b	�:y��)��@��Oߺ�ΝL�=\l��Dw&0q�#�I��B3��w+Yu��HK�����9}�bAC/����,n�����hi- b�	?פ�Uh�oP�y�'+#��;�"jh�H���JW�]�W	��H�	�B�4�����6�R��j�-��(QH5�Q�٪wc���:�.��fwi[3a��_�_��ӕ��^b��V������&�£��g|ߜ1*L��NU��� T�,R�Qتz�@ε��%4U���U��Y����ꭄ�G9ڬAu�&�g�
�
xp��V�ԑ��hgwiQ�K;L9��O�ҩ$�e{5���
��\�:�F�=�6���{q׆y��D���o�3m+�SҬbQ� R
�|�=��X7�Q+�(���!������R����=��H�}���4��-����+��Т�Z�.�B��V�c��ۦ��0s��Q�d���QV��Y���-t_ǅ	�i�<]vA���ʐ��#M�{t=gMaY�e�h
z��J��ww�;�0z_��.Mph�3� �{�/��@�fr�M7��o��{t-�ŭ�!v�(����p �a٨��������1�4b7�ָ�Zی����2�` �6��M��Z�T�9���tH��c�G���fwib�����=�XpE\�������a?O���o6*N�Zm� <�����B	e�d����f4� �S��c9+�~h��l�Ze�L�r D�.T����2id�غ]C�P�hnG��, � (�����������#�;�� uci��]�V�V����0>��8$,�H�L��(��� ��l)���pU�H`$��y���f�����\���� 8U�xE���W5}(S	���
���H��U_H�P�`�%��(�,MgHf�!`Rݨ��'g_m�Y�0���qT�}=���Ù�j��܍�epuœ�~;�9]j����a���m��z�����dp�2��c0�+�l�i�Y�"
��Y��om9��ލQ<��X�#h����4z��"�
-�u���xė��bf����b:�\EϺ3%Y�ч�	�΃��V��c�G%bMX_�-l�I[قV��=^O�v�"�-r�|��������:WgW��s5�V�����So/m�Ͻ�}j��vP�EYj6�N��~`WL�B�^�uI�֢����*��Aq3�6$��CF�R4��
a�����@J��P�}��jBO�m�+&��-�� �H�Ҡ���Ey���4
�o�6�X�[�AK6�T߽p )��K0�(�6C�49�Xw���ч��F��2�ʏr�^Y��s6NHUB+ �'����0LF���{��h�'b�N	�#`�}8-ͽG���uci�6R�w~���I�=�<x~%���e'E�="�=@�r)��Oa�T�H�
�7���F���L0X��"s��γ넣�|�;j���J�d6"�k��j	/� ��@DB��ш�)����G�KwD{kjwI��5J�[�G�q"7*iꃗ/.ϟ�V��_�
Ww. H�v9t.�Q�J�$�Ml�8�T_�gOޓ@J�5Y��×�؉��t���D�'�<^�.����͢�,��M�������*��7\=s�4�\`)y��V��W�}��na�h&TEj��D���+�p�QU����x�N#�Ĝ�	�$(Y^�.���+�SS�J���	��D$[$�
�GZt���W]V8*����0�� w�i: RW�<*{l$\ԭ �֒����ڲG�w��N��_��J<;����2���
��>��J�i=-�B΅['iQS� �㽵�%W5lj!X�f�!@\��=v[����_y�D��?��Y���Ix��O���Z���|se��օ�lC��a�nB�[Tf;0 �h�"i��l<�|*w�ڸ&����S�������bH!�bMh�*�W������KK��)6����aFKufz2���_"@eK%���΄��U��+��vV�v�o����ei�u:�4��'�Y��;�"lU/��Q^��H���g$�f�vB��J�3S�c`P*\��+;۔�r�'܃e�1���Ѵ�,��&H�w8ۜ�>�������un�铟-���O�����G��}Ek�%t��T��{��o��A��Un�t��c�����+д�dl��"]��GˌV��t�e�|4:9�i� iX	��|� !TF��;02�F.��2OI���Oϟ}_\��.n0�����%3��m�����\���o^�j��=����X˛�-*��dyԞ�_�zs��B +����.���*	���9�Re\�E/�7D�=�������1WJD� ��r�ÈN��@�l���U!�^k�"\~5��#y� ���a�`�ݑ���Z2���������__���O����.���}n����Ϋo�ݲ[��.�ʯ��w��B��6�P���fR����M�!u����۴�'��
�S�:5Eo'9�|LR8ˏ%�hP�W�"k.�v�D�H@9-���Z��A����: A�:O�Go,͂��?|���9���Wx����׿�����x��r�-�����o�(� .�˸���W��ʿ��o7�z�ܓw>j%B����
��K�v��u��
=&�p�q+<t�w����h�%t֩
`OM�ܥ#J4yw��չǁ�@��.��e[kY��� �-��h��ݥ	p����K�jƯjI�X\j���<�8�l5�J�&O��,��U�(9���I)��(�T�ssJa�ׄ�C�a�b�0����bl@�&��zkb2N�T{��u��玍?�a#�.�)Zn����wk9�70��_���/�׿Y������r�"��|y�.Nڋ�����=z�v	��+?g�*�&�s���kE��j��|�(=�5�w�BF��8�*�΀'�z%�$c�B+�b?�p! �����'0J��gU�谊(j�*�9�B�{m���W��^��� ���r�w�����~��X�IF`_v?=k���������ɳ����e^��|��!���;||����:Cx�U��DsP�yf!�n�(��(����5@�xW�B�	�t�t������0}��Eԧ�|à�\{���Y�O����֒�b�h������OA�_��C�NS�jC �
  �%ֽ�h�5_�,�T(H@}�$���֙/�b��|�@W�E0a��0
���P.�v��7�������$�`��\�s��("����QC"��BC�D!�ap��=�t�kwi����t;�'0���'?[�<� ���+�O�m�CRQ�c��T	)��C�hK�O�Z��R�̜�u����2u�d�v�M��G��7a���Pl�KX񞥩3�f�Fx#�7�{x�l+�N��A��s�PX���vW&��-PYU����,��w����vyx��Ar�<9?[,���f���|�Ǔ�	�
f=��;|���k�k�g�T��0"�%�����!���-���(��,�ȉ� i�Zv�s�[�b�&���U��D<&�3�v����R�~<*{�Kv�vs��W�s���_�������=�˟�}�y�,O��{6�_�?|�����Y����K�j�|�|�^���˧;����?,��CT&U��.@ق��La�`>�d7��)#�Z��q(�G��鴎�/�bu�> ��� 1�d~��%�oU����ìF�������摗rz^��~x�(��ɻ7��(Gw8�������vy����r����!�������[/�	�R����b���A�(�O8l�@؉��J��с@G�׬C�A�u7��%v�v+U�%at=$�7�M׼nP�ѡ�w%��;~��Y[_�Q�Kf�7�l��k/�oVw�Vr]TD؅A�Q���������Cu�[&�
�	�[�%�,y���u#>�T��>�I���m%���@��';0��(�9O�2�Ҿ�/B��f��ἳ2a��j�>����"�{������c�> �a�%�O��
%����:XFw>*4r7h�9B�AJ�x� �p�j�M֙�硆�#T��� DYs��|Ķ� &y<�\Q�[���1�m�{�"o,���u<e�΋�B���d"�~rr�����'�m���t�]�0
�kdB�9��ڲ�!�lrVy��M+h�q���AV�����2�y|����#��'�-X�>��ڟyzIY��+�]���K[t ~�:c{l�Q�{"ҍ%7E���	��/���fyp^��P���-�\�{����)�X0bZOIjH���%'�	遏wͳX���g!��d�
y��L�a�e�B�b��q^OEiޅ�5����Xd��D����Y�|D�G&��o�t&�/�I厭?"�ǟ�X��-m>;+O��e��Oڗ�|�x=yz�^��?8?=meuP;X�Cz���P�o���b#�T���s�����[Hؼ��
C�gs�]�:��pV2���go�#o��JC��'���D�u }Z
�^���@OJW�����B&D�	{�*o,M����St�	��],_����g�G �:��Q=Y�8�'TN��$hx�[o):Ǚ+<:��]H�$�r̼Cˆ��P$��Lˌ༩Nb���|���:�X6K�D�H�� 5>����<L��B� d�p
�0X��	����Ioff1۪���ۄl��T4��) �zm@µ�^����Q'����1�dFI�Sj�sN�J���"�m�8��0�)I/�+�#���]4���r���E�(��e�0L9����:��'>�X�ؘ͍XR��L�ˏϟ�t�GR�C�m%]#UJ�!rc�����	J|۫�=��$�|"to�ա�-�"���ih�  ��.�i���n�b�� \�LƖ¨j_`U  l5���IM���i�Ů@J�1rP�{����D�n>>��k0Ӌ-1�ULל��)UjH���G��/r%���7���Ʃ ������"�}4�P_}Jɬ��l������}�3�a������O��W�"�S�j|�&} g���v�>#|ci"�6w=��'?�h��U�8=����'V�W���P����UCqi���ސKE��)�䏀԰��� ~�C~�����-���%s}Z_��5�.J��>9SݚE�v��5!g Ih[x�
��x�����
�b�g�_^���F�5����[Ka@㯡��`>�\����?y��+(ݎR���,�E	�#�����5�y�����gP�x�F�9E�^��P�AF�G��.В�y����iQ�5�LTݶ`���I����p��\*N��ځȬ���L v&*as������E�����=|����Ԅ��P�*q�P��ޕ�L5���y��c槌xDg9�9 �h�'i+���W4��Fp%:0�g��]��GQkR��	���-A�o-:�V��;�ڛ��[:v�q�Ka:E+o����+m����}�*>(�� Xx��=����)�Aq JV2�:���,�_kH6$>+]��4���J	��3�?O�y_f��YS�a~�xwŇ+���&���(JC�������8鰯�v�F�Xu�p�����'gi���BH�'����.B�������YBd�MkB���\I� l�T� �ɭ�����c���20�(Iޥ�(����rB����>n��S��OGJ|�M���|����7���3Yt��O}��+R���k\�ȠCZB
�yKm����ui������O�����F�}9����k�{Oѣ]�B;׬���c{��d����ݷ�z�	a��mi>� ��Hh�@|�1�#g����Ҷ����Ν;�5��w      "   ^   x�3���MLv���V(�W04V�5R�025sOR0202R.HLNUp/J��,IL�I-)�4�ʘ�����������������1>)C�=... ��$          �   x�u�=
�@���),�a7���ʃج4�!b������}@���\����|�c$󅌦f�f�Yn��+���*Ah!��E�6ˢ����Z{Bg7x��/���q�\Q�E�q�7<����(�_�4%Q1j��G*ِڐ�~861e��0��~��@(.áVC-�X�B��8c�q�7Q�a�      $      x������ � �      (      x������ � �         �   x���M
�@���)܋ҟ����M��`��{[E\��*"h��
ɍLu�b �@��彴X�ߴ�-�x���'G�4��0uS4t��f�]��n
ө�֟�f1�/4�~���~��3O�d`A+V�����b��>h����d���=^+���F� Q��)�6.�f1��@�o�Ȓ�s��Dʼ�����6h�CR}K {CUd��i��m�R         d  x���ON�@�u{
��t��]Q�H	-,ІM��(�-���z���a���
Ę��|������q����Y�L2TG^8�8brh��B�֖B�ە�ts��ִ }����䲑�d���V��)U��=�q��6C�#}�/��t�qG�v��n�J�L(J"!�$�o�nk-AğC��')<V������ELk4M� 4�4�Bo^\{AzH٨G����q�7�V�6X��K��T{��-�>é�q\ .�o�.��O���ݗ����c�5l�\�/�Kqݳ[L��tMT�Z�\MVV�,�,Z�]��g���?A�(\�G�����b ��#`� "q���e?��ǿ     