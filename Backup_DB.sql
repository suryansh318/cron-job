PGDMP  &    /                |            TaskManagement    16.3    16.3 2               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16595    TaskManagement    DATABASE     �   CREATE DATABASE "TaskManagement" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
     DROP DATABASE "TaskManagement";
                postgres    false            �            1259    16653    Designations    TABLE     �   CREATE TABLE public."Designations" (
    id integer NOT NULL,
    "designationName" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Designations";
       public         heap    postgres    false            �            1259    16652    Designations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Designations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Designations_id_seq";
       public          postgres    false    226            !           0    0    Designations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Designations_id_seq" OWNED BY public."Designations".id;
          public          postgres    false    225            �            1259    16644    Tasks    TABLE     A  CREATE TABLE public."Tasks" (
    id integer NOT NULL,
    "taskName" character varying(255) NOT NULL,
    "taskDate" timestamp with time zone NOT NULL,
    "workingHours" numeric(5,2) NOT NULL,
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Tasks";
       public         heap    postgres    false            �            1259    16643    Tasks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tasks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Tasks_id_seq";
       public          postgres    false    224            "           0    0    Tasks_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Tasks_id_seq" OWNED BY public."Tasks".id;
          public          postgres    false    223            �            1259    16597 
   department    TABLE     z   CREATE TABLE public.department (
    departmentid integer NOT NULL,
    departmentname character varying(100) NOT NULL
);
    DROP TABLE public.department;
       public         heap    postgres    false            �            1259    16596    department_departmentid_seq    SEQUENCE     �   CREATE SEQUENCE public.department_departmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.department_departmentid_seq;
       public          postgres    false    216            #           0    0    department_departmentid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.department_departmentid_seq OWNED BY public.department.departmentid;
          public          postgres    false    215            �            1259    16604    designation    TABLE     }   CREATE TABLE public.designation (
    designationid integer NOT NULL,
    designationname character varying(100) NOT NULL
);
    DROP TABLE public.designation;
       public         heap    postgres    false            �            1259    16603    designation_designationid_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_designationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.designation_designationid_seq;
       public          postgres    false    218            $           0    0    designation_designationid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.designation_designationid_seq OWNED BY public.designation.designationid;
          public          postgres    false    217            �            1259    16630    task    TABLE     �   CREATE TABLE public.task (
    taskid integer NOT NULL,
    taskname character varying(100) NOT NULL,
    taskdate date NOT NULL,
    workinghours numeric(5,2) NOT NULL,
    description text,
    userid integer
);
    DROP TABLE public.task;
       public         heap    postgres    false            �            1259    16629    task_taskid_seq    SEQUENCE     �   CREATE SEQUENCE public.task_taskid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.task_taskid_seq;
       public          postgres    false    222            %           0    0    task_taskid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.task_taskid_seq OWNED BY public.task.taskid;
          public          postgres    false    221            �            1259    16611    user    TABLE       CREATE TABLE public."user" (
    id integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    mobile character varying(15) NOT NULL,
    departmentid integer,
    designationid integer
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16610    user_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.user_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.user_userid_seq;
       public          postgres    false    220            &           0    0    user_userid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.user_userid_seq OWNED BY public."user".id;
          public          postgres    false    219            n           2604    16656    Designations id    DEFAULT     v   ALTER TABLE ONLY public."Designations" ALTER COLUMN id SET DEFAULT nextval('public."Designations_id_seq"'::regclass);
 @   ALTER TABLE public."Designations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            m           2604    16647    Tasks id    DEFAULT     h   ALTER TABLE ONLY public."Tasks" ALTER COLUMN id SET DEFAULT nextval('public."Tasks_id_seq"'::regclass);
 9   ALTER TABLE public."Tasks" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            i           2604    16600    department departmentid    DEFAULT     �   ALTER TABLE ONLY public.department ALTER COLUMN departmentid SET DEFAULT nextval('public.department_departmentid_seq'::regclass);
 F   ALTER TABLE public.department ALTER COLUMN departmentid DROP DEFAULT;
       public          postgres    false    215    216    216            j           2604    16607    designation designationid    DEFAULT     �   ALTER TABLE ONLY public.designation ALTER COLUMN designationid SET DEFAULT nextval('public.designation_designationid_seq'::regclass);
 H   ALTER TABLE public.designation ALTER COLUMN designationid DROP DEFAULT;
       public          postgres    false    218    217    218            l           2604    16633    task taskid    DEFAULT     j   ALTER TABLE ONLY public.task ALTER COLUMN taskid SET DEFAULT nextval('public.task_taskid_seq'::regclass);
 :   ALTER TABLE public.task ALTER COLUMN taskid DROP DEFAULT;
       public          postgres    false    222    221    222            k           2604    16614    user id    DEFAULT     h   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_userid_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220                      0    16653    Designations 
   TABLE DATA           Y   COPY public."Designations" (id, "designationName", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    226   �8                 0    16644    Tasks 
   TABLE DATA           t   COPY public."Tasks" (id, "taskName", "taskDate", "workingHours", description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224   �8                 0    16597 
   department 
   TABLE DATA           B   COPY public.department (departmentid, departmentname) FROM stdin;
    public          postgres    false    216   9                 0    16604    designation 
   TABLE DATA           E   COPY public.designation (designationid, designationname) FROM stdin;
    public          postgres    false    218   N9                 0    16630    task 
   TABLE DATA           ]   COPY public.task (taskid, taskname, taskdate, workinghours, description, userid) FROM stdin;
    public          postgres    false    222   ~9                 0    16611    user 
   TABLE DATA           e   COPY public."user" (id, firstname, lastname, email, mobile, departmentid, designationid) FROM stdin;
    public          postgres    false    220   :       '           0    0    Designations_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Designations_id_seq"', 1, false);
          public          postgres    false    225            (           0    0    Tasks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Tasks_id_seq"', 1, false);
          public          postgres    false    223            )           0    0    department_departmentid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.department_departmentid_seq', 3, true);
          public          postgres    false    215            *           0    0    designation_designationid_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.designation_designationid_seq', 3, true);
          public          postgres    false    217            +           0    0    task_taskid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.task_taskid_seq', 2, true);
          public          postgres    false    221            ,           0    0    user_userid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_userid_seq', 12, true);
          public          postgres    false    219            |           2606    16658    Designations Designations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Designations"
    ADD CONSTRAINT "Designations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Designations" DROP CONSTRAINT "Designations_pkey";
       public            postgres    false    226            z           2606    16651    Tasks Tasks_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Tasks" DROP CONSTRAINT "Tasks_pkey";
       public            postgres    false    224            p           2606    16602    department department_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (departmentid);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            postgres    false    216            r           2606    16609    designation designation_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (designationid);
 F   ALTER TABLE ONLY public.designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    218            x           2606    16637    task task_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (taskid);
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
       public            postgres    false    222            t           2606    16618    user user_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_email_key;
       public            postgres    false    220            v           2606    16616    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    220                       2606    16638    task task_userid_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(id);
 ?   ALTER TABLE ONLY public.task DROP CONSTRAINT task_userid_fkey;
       public          postgres    false    220    4726    222            }           2606    16619    user user_departmentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_departmentid_fkey FOREIGN KEY (departmentid) REFERENCES public.department(departmentid);
 G   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_departmentid_fkey;
       public          postgres    false    220    4720    216            ~           2606    16624    user user_designationid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_designationid_fkey FOREIGN KEY (designationid) REFERENCES public.designation(designationid);
 H   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_designationid_fkey;
       public          postgres    false    220    4722    218                  x������ � �            x������ � �         '   x�3�IM���LN��2��M�KLO�M�+)����� ��	-             x�3���+I-��2��M�KLO-����� V�]         �   x�E�A
�0@���)�J�}ummK)t#v�����_C
����xoɯ�d��Pu!�BJhJ!`���H�흳TIT��W�7�4��9��4����Lƭ��)h�Ғ���+8�u{l꼹<�������0�         T   x�3�.-�L�+����K�ନ�rH�M���K���4426153���4�4�2�LLJ��,�j*I�J,�+�4202©3F��� 0�k     