PGDMP     9    /            	    x            angkringanhits     12.4 (Ubuntu 12.4-1.pgdg18.04+1)    12.2 (Debian 12.2-4)     v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            y           1262    16386    angkringanhits    DATABASE     x   CREATE DATABASE angkringanhits WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE angkringanhits;
                angkringanhits    false            �            1259    16387    category    TABLE     f   CREATE TABLE public.category (
    id bigint NOT NULL,
    category character varying(10) NOT NULL
);
    DROP TABLE public.category;
       public         heap    angkringanhits    false            �            1259    16390    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          angkringanhits    false    202            z           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          angkringanhits    false    203            �            1259    16392    history    TABLE     �   CREATE TABLE public.history (
    id bigint NOT NULL,
    cashier character varying(50) NOT NULL,
    date date DEFAULT CURRENT_TIMESTAMP NOT NULL,
    orders character varying(2500) NOT NULL,
    amount integer NOT NULL
);
    DROP TABLE public.history;
       public         heap    angkringanhits    false            �            1259    16399    history_id_seq    SEQUENCE     w   CREATE SEQUENCE public.history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.history_id_seq;
       public          angkringanhits    false    204            {           0    0    history_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.history_id_seq OWNED BY public.history.id;
          public          angkringanhits    false    205            �            1259    16401    product    TABLE     ;  CREATE TABLE public.product (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    stock integer NOT NULL,
    "imgLocation" character varying(255) NOT NULL,
    category character varying(10) DEFAULT 'food'::character varying NOT NULL,
    imageid character varying
);
    DROP TABLE public.product;
       public         heap    angkringanhits    false            �            1259    16408    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          angkringanhits    false    206            |           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          angkringanhits    false    207            �            1259    16410    user    TABLE       CREATE TABLE public."user" (
    id bigint DEFAULT nextval('public.product_id_seq'::regclass) NOT NULL,
    username character varying(30) NOT NULL,
    password character varying(100) NOT NULL,
    token character varying(255),
    rule character varying(10) NOT NULL
);
    DROP TABLE public."user";
       public         heap    angkringanhits    false    207            �
           2604    16425    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          angkringanhits    false    203    202            �
           2604    16426 
   history id    DEFAULT     h   ALTER TABLE ONLY public.history ALTER COLUMN id SET DEFAULT nextval('public.history_id_seq'::regclass);
 9   ALTER TABLE public.history ALTER COLUMN id DROP DEFAULT;
       public          angkringanhits    false    205    204            �
           2604    16427 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          angkringanhits    false    207    206            m          0    16387    category 
   TABLE DATA           0   COPY public.category (id, category) FROM stdin;
    public          angkringanhits    false    202   /       o          0    16392    history 
   TABLE DATA           D   COPY public.history (id, cashier, date, orders, amount) FROM stdin;
    public          angkringanhits    false    204   ]       q          0    16401    product 
   TABLE DATA           [   COPY public.product (id, name, price, stock, "imgLocation", category, imageid) FROM stdin;
    public          angkringanhits    false    206   �"       s          0    16410    user 
   TABLE DATA           E   COPY public."user" (id, username, password, token, rule) FROM stdin;
    public          angkringanhits    false    208   �&       }           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 4, true);
          public          angkringanhits    false    203            ~           0    0    history_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.history_id_seq', 72, true);
          public          angkringanhits    false    205                       0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 89, true);
          public          angkringanhits    false    207            �
           2606    16418    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            angkringanhits    false    202            �
           2606    16420    history history_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.history DROP CONSTRAINT history_pkey;
       public            angkringanhits    false    204            �
           2606    16422    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            angkringanhits    false    206            �
           2606    16424    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            angkringanhits    false    208            m      x�3�L��O�2�L)����2��1z\\\ q�R      o   ?  x��XM��8=˿�����wg���)I%�\d#��(0����mI`K�{v���~���^��F��",a�K����\����6l�G=D��s2�}?�U㇜ڮ�� 0}�l�$�U�-*Ǣ�e��J7����Mu�W�$D�H᜼�����Q��E*h�=j�E�綉���~_�����T�RS�&�̊5f�.+�+�^7�xQ<����������V�Կ�n�b����q;�]	RrT���t
�Jick"�k�+߁���n�ih�i��\L��'�'�,�b����.�o���/��:��V�S�	�2\�o$� ^MW?��z�΄�<7�����E�,�%6Q���M���_���ou��/�_J��w���:Ք�����Z��l�鰅�߈�Ԅ��?%a�h�a�
s���xr�/�SwrL��i��/5�z4>�3�BP�����@c")���t�A!�Q0YC/Z�B��(������섿�2�L\�:��n�UM z��?��h�$�&��*5�i�L|!y��j�����9��n��ؿ�-��$\��N�Ho{�M9����RZ���1��=��`nə+�yQut��'������瘫����0ࢢ�V��6�����;W�ol{Op��ŵ�x��\ ���$�x�*/�.�D��agE<�Ĳj�� ���4)��Y�ى��(�f�)f����[�nR� ٍ_`#YdՖ*:��ꯣpPO����.��<��n��~p��Kʦ'g�O�� \r��eA���bz�t�R��I='�2�uXl����gi����)n�q�4Lja��5	����=��;?"���v!�H\9D, ����^�G�ϴ��q�\9��%D7��ij���I "1]Zc�q�D��o������2���
ޗVE5�]*=A��+cuC�$�Ϫ�y���7G(RC]�&�k�A���?ˡ��w���R��Me�9!发�MD���<�<ܸ����N��1x��Hy�ގV�\9�������!�{��vg��=�����HʒE���rns�\���O��ʺѭ�7?>l6�� pa�>      q   �  x���˲�&@���9((j�7%�{o%�LA������'՝*gGLVY.��Mb�Y ���~�&�+BN�ޛ�R��탛1]wN��F���j�&�V�9�Q�䔤*۴Qbc�fl_���~��Ҙ
�QH"P�Λ[m��5(.��r4��x��:��K�l�՟6g����8��,6I� �1L/ո��`{����3
�t���/6�C'��!y�t�M>�J�X���[�����	��y'�&8$/R�˱o�etz��
kX����	�T�V��T�]���uc%�Жc���ᮡe�Щ��;p�a�(d��e&i^���������}�=�W`�($b��ξ@��1�G�pI�)���z�4u��8��P�O�U�e&-h�Zչ]�̐ѸʦX��%rF!��aC9�Z\V��$	��3sTn�l��Iټ\�(��s�<<���G'�k(�[`��h9�"�o�sB!���čml��$�"�8�v���i�]���vo�9�S ��;q�\3��(N��u�}�T���o|�!&w�����Y�ŗU0A�f^Wi�ĪT�\-���n��Y�+�/�!�m���"���H�o6g��Q-���U2�%YnK��A5ߗ��ۺpFa\������~�F���Ы
�fh+���u9��Ћ)���kg8�0���F�~�I�^�~
�6�)@��6y�cT*u\/N���u�\��evFa��o��з?X���7VN�T�q�Y|��3a��9j�c�J�aiR�2;�0����R��d!ܗЋ�PL"�a��
��D���,�3��Խ�7� p~�M����mVf�D�#��l�0���G�e�D��=H�/����f'ձ7�3c�1k'��U�Vg)�*g���Z�s]Ø�g����%�Y�G�@�N��������7���Q��Qk��t�a�k�W����z}A��<?�?9�C��3���Gˌ�yFa^ �8���2��2Y��8F|LݰᙌEiw�29��g��!��!      s     x�U�˖�:E��wT�@^M�)���8B��%X*|�q��3���ɜY+{CK�2�ޑx�]�c��	�z��d|�>���>ãwδ��.=��<�Ÿ��}kKSB�	H@n��D��c�yB0MS��Z"Oy�F������f�Ɩ�.��:���c�_=}���s�.��������VWل���S�Q��I%� � �4��b41 ঑���7��/����W�I���_�]���tB��7 �}���"�Hx����w��0���I��!�)8�"���LB�WN�:Q�V�e�+�h�L��a���v\Κp��^�o4���&�8�@�|_�zzg4�e�1�P�)�c
T�1K�I�(����&~�2�O=��[�<��7�sї�L��N�O��X�����/���9���m].s��&��SĀ2��%8�#�P1D�#K�gnL��_ް�'�W	o�8���7�[��|��6�X�s��9�WV����2;��j%�v�<Kwb�����~#�\zl�ͷ�,�3>c�!�������D����s�U;���m�L-��׆��W�A��$?|��,��p?�"����I�Y������e5^��̑��-j�q/^��t[~xlحcp;W�zc;-��ɣ?/|���T��U��g����5׏Iv�`����*�Ǽޝ�@ֳ��+g�*y��.�2/�/��Uc+>�6ۉŎ���uϊȏ�3I�����`�=F��3u���8x��2"	�)ϰȄ�$f&C�c� �\��w������(�I�     