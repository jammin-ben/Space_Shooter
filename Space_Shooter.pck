GDPC                                                                                <   res://.import/Fire.png-0d28d13ab9a42179a1f07da7e67439f3.stex�            �fM9����K��� ��@   res://.import/Ship_Big.png-d53285a3533a884e1f64c3a42876122d.stexp1      �      w�����z:\N%�~�D   res://.import/Ship_Enemy.png-4e8f4c2009e66d540db6d455c2c4d796.stex  �8      t      ѿl:�'� �0	�voD   res://.import/Ship_Enemy.png-dcec976accd1ec45d215a7963e8e6c38.stex  �      �      �9�r�����U�����L   res://.import/Ship_Enemy_Medium.png-d55852535a128bb68d369fb8a7ab0061.stex   �<      {      �T�F�����F�ٟ�L   res://.import/Ship_Enemy_Medium.png-f7275f313aaf747300a14a3e77b296da.stex          �      �߶�">��Ge��*�D   res://.import/Ship_Main_2.png-093a6b5c270f5fa9c51243dd6e52f659.stex �       �      `���>Jw�L?�Q	5<   res://.import/Sky.png-14b1388b41baefd575e2908a4f206ee9.stex  %      �	      =A��o�$6�<�ޞƔ   res://Levels/World.tscn P      �       ���)� �劮�H   res://Player.gd.remap   �B      !       ��0�F �qq��dX��   res://Player.gdc@      I      �?�[���7\�[��   res://Player.tscn   �      L      ��9�5�]�G��    res://Sprites/Fire.png.import          �       �r ����z�ǒ�Y�$   res://Sprites/Ship_Enemy.png.import `      �      `�<R��{LT�W,   res://Sprites/Ship_Enemy_Medium.png.import  �      �      �*�e�]�z�����q�$   res://Sprites/Ship_Main_2.png.import�"      �      ��ތ�p����C   res://Sprites/Sky.png.import�.      �      ��`��(H�&�-�,   res://Sprites/aseprite/Ship_Big.png.import   6      �      ;�E1{8��0S�Ȓ,   res://Sprites/aseprite/Ship_Enemy.png.import :      �      ܖ~Jx������r/ }4   res://Sprites/aseprite/Ship_Enemy_Medium.png.import P?      �      �p^2�6�X5�����   res://default_env.tres  B      �       K��+fr��s����   res://project.binary�B      �      Ʌ�2٥]C1@�=�vvy        [gd_scene load_steps=2 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]

[node name="World" type="Node2D"]

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 64.2973, 126.885 )

        GDSC      
   .   �      ���ӄ�   ����   ��������򶶶   ������������   �����Ҷ�   �����Ҷ�   ��϶   �����������������Ҷ�   ������������Ķ��   �����϶�   �������Ŷ���   ����׶��   ������������¶��   ϶��   ������¶   ������¶   ����¶��   ����������������Ҷ��   �������ض���   ζ��   �     �    �������?          d         ui_right            ui_left       ui_down       ui_up                                                       	      
   '      (      .      0      1      2      9      :      D      E      F      K      P      [      _      j      n      y      }      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   3YY:�  Y:�  �  Y:�  �  YY;�  �  Y;�  �  YY5;�  W�  �  YY0�	  PQV�  -YYY0�
  P�  QV�  �  �  T�  T�  �  �  �  �  �  ;�  �  �  ;�  �  �  &P�  T�  P�  QQV�  �  �  �  &P�  T�  P�  QQV�  �  �  �  &P�  T�  P�  QQV�  �  �  �  &P�  T�  P�	  QQV�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �.  P�  R�  �  R�  Q�  �  �.  P�  R�  �  R�  Q�  &P�  �  QV�  �  �  �  &P�  �  QV�  �  �  �  �  T�  T�  �  �  �  T�  T�  �  �  �  �  Y`       [gd_scene load_steps=6 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]
[ext_resource path="res://Sprites/Ship_Main_2.png" type="Texture" id=2]
[ext_resource path="res://Sprites/Fire.png" type="Texture" id=3]
[ext_resource path="res://Sprites/Sky.png" type="Texture" id=4]

[sub_resource type="Animation" id=1]
resource_name = "Burn"
length = 0.2
loop = true
step = 0.01
tracks/0/type = "value"
tracks/0/path = NodePath(".:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ 0, 1 ]
}

[node name="Player" type="Node2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="Fire" type="Sprite" parent="."]
z_index = -1
texture = ExtResource( 3 )
offset = Vector2( 0, 10 )
hframes = 2

[node name="AnimationPlayer" type="AnimationPlayer" parent="Fire"]
autoplay = "Burn"
anims/Burn = SubResource( 1 )

[node name="ParallaxBackground" type="ParallaxBackground" parent="."]

[node name="ParallaxLayer" type="ParallaxLayer" parent="ParallaxBackground"]
motion_mirroring = Vector2( 180, 320 )

[node name="Sprite" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
texture = ExtResource( 4 )
centered = false

    GDST                �   PNG �PNG

   IHDR          w }Y   �IDATH��1�0D_��
���P�z
�)l)�c�Q��i��ۈNB��aƆ���}���Z���R�7I���CC���5�.S�$�~�<G�� ����gm+��+���������E=Ǥ��8L�VA~P ��Ǭ���I��>՗����%u^��+u^g�'�����ey)��~���z�!a�    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Fire.png-0d28d13ab9a42179a1f07da7e67439f3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Fire.png"
dest_files=[ "res://.import/Fire.png-0d28d13ab9a42179a1f07da7e67439f3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST                 �  PNG �PNG

   IHDR           szz�  sIDATX�햯N�@�%�``�g@�Hj� x�=�%<�3g�g$8ϰg@`�`8QDor���mKH���vnv�|��u3��j�=�l��)�T[\�G�.�o{�^��gs �ۻ����+ �[9Н��lZϢ�h�EQ�_�~�gے�y�@�x|
@9�x��- ��z�(c 8Qv�<�` ���hV(�r�~���/G��À@WX��R��aB΅�
�3`��]��ř�n�j�r:q�2c�y~s͝�[���U�ҙt����8����19����{��F��k�݊|9sm��>��M΀�*��On8�}׳��9�3� Ьܺ/��-�u�E'g ���OT#!�P�A2�mLuBr�����i��    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ship_Enemy.png-dcec976accd1ec45d215a7963e8e6c38.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Ship_Enemy.png"
dest_files=[ "res://.import/Ship_Enemy.png-dcec976accd1ec45d215a7963e8e6c38.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST0   0            �  PNG �PNG

   IHDR   0   0   W��  �IDATh�홱kA�'F��B!��%��`a'܁��B����J�TiCZ�-�iRj#�`g!�? �"�0U@���w{�2�;s��;����ۙ���ͼ�ͤG=r�1 =�q������u߁o��W��~�7���������ukdx�Ũ��8L����:ŀF���pz���}��w ��������-�f@`0�h�r���%`��Zπw��d^ֺkh���$F?�5I����O�]�Y:xО�9���� d'v�eY�ֺ���.��� �r񻿳+��:��ȼ������]y�:���ߺ���6���9)�h&�5Jm��e{��U�tQuR���+�]�n��U)j�R�&��I/2%eOH�?~�\�o��	P2��̏&ǀ�f����D�d�Z������ ��a}��	�Z3��(�Bk�i��2ɯ��.-�B�|�-�蔮�0�&r͓8rv.�Îxh&\�Rץ��~�T�|3/����������Aϳ�y��T��`80�����<s�5�ugi�b-q;�F-��r(��5�.��Ő^�3��5���������ƅ�m=�U�c�u/��N[�~h\ ��@��tRWG����Q3�Z��\�i�/��3��)�G�Fb����B�$��*    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ship_Enemy_Medium.png-f7275f313aaf747300a14a3e77b296da.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Ship_Enemy_Medium.png"
dest_files=[ "res://.import/Ship_Enemy_Medium.png-f7275f313aaf747300a14a3e77b296da.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST               �  PNG �PNG

   IHDR         �w=�  �IDATH��-k�P�ߔ�@�L�L��t37SFE�V2������r�� T62��bI~�d�L�T�u�Hn8In>�n�r����u/ fI�u6ID��� ����9V�؞  ����!"��}et<@_!���3h�d27r�l�:-mhہ� ��<H��@ڋ�,
Zy�����t����Q��M�tN��	�N�
�i����4]ue�Z=�L
ײ�2��N  '�`�
�<��  N���z ܅����e�A9�`F�v27psu���<��/>�n��d,̴,,3f�2��ݾc<�����h�H��q��C�v_{2fԗA3-�
��V��rHY�)��Tn����a_�`��[���&T��cٷ�_��M�ί������d*>    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ship_Main_2.png-093a6b5c270f5fa9c51243dd6e52f659.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Ship_Main_2.png"
dest_files=[ "res://.import/Ship_Main_2.png-093a6b5c270f5fa9c51243dd6e52f659.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST�   @           �	  PNG �PNG

   IHDR   �  @   �V�  	ZIDATx���Kb�8�a�w�/�!���Z�:�/�,����@4�]��I2�T,6 Jz�����	�:� �%��K��#���HX������UyV���f�dk�?;M������z)~b1#��y[�U��jDCC
)R�;������Ȟ���b�e^Z��q�b���u������m��ւN�!�t��y����]���(�|l*9�↨:Rx��cA=k&Rhh��вghG<�;����3���|0��mqvzhF�5[I�(�fhH!АB�!e3�,�l�����7�D���7����"��H��#��0�$h�6�2t���I�@�"/�t��fh^�u��v����ݞ�����m)�ޝmr����(��{ihy������ˮ����[[3r@J����+�!1�������z:�#9 %DCG��.���-�I�O��'I��2M��^T�|�ߜO��7n��(�$ݢ��js��֗G�0g+��������Ӥ�Z����n�Ȋ��YMѺ
�ҋZ�XJ_<�窥t�(����[R\����;�4�`l��ECWj�R��-]ib�`[]ƽ�X#L��II��G�k�m�9f�ǹΥ�>h�-HC7�o���%OC��%̖�~�o?6��e�z��h���k�x\-������8J�b&���L�����qkO�޷��
���jO𵿷��=�W?�Yfh���CCW�0vx8�3,~����)�v^��i����W��8�N�/�&�=����@�%��Ҍ^.�Ӕs�o��2Y"����ۆ�Ѩ�Z;��b�t���مOFg��s���B[nZ��0�\qtG�z�D��7h��%����#�	�sւ[s�'?I)�~�Be�b���?l�	�x�e�vn�y��{�0��2��ݽ�.��ь�+�sq������g�n�ib�@#Ş�6�/2�����͆�:{������!R��!�@C
�����f�[a=�On�[z���3��.6�|w�կ�n!Аv��������yAC�� h�z�a>�@���+zkq���Cc	�������exDCC
�BH!��G�d�� /�a$`�(�Rt@�_)���vF���哀RhhH!АB��(��Gh1ٿց@7�����'����zhH�9�~��А"��p��GCC
)R4��5���wGK�w!YB
�!��R�$��'��@�T��p�b��R4\����4��E#34��k舸��ch�Q��uU^�[���ȑ�ZK�А���Z�D��~)!�Em��㦡!e������k3���8r�q��ȁn>��,Z�~��}�{\�ihHa�.�WXW������m�o��R\54p��)2�fA�i
��
����.��4t)�{,�矆���_Z5v�@���3R���|�z[��RҏޛkI�c���-��^�,s��&�Us��ܧ�ǉ;���!E�����)R4�hH!АB�!e7��q��t�����P�0r8�U(���k�'E�qs�|�ysR�� Z��A
M	?���\�q���~hH��@KR4�hH!���NN�@�Մ��mٶ�FH!�b��|��BCCJ�@g��FHa�)���}��!���)R4ܪY��(�]YohT���1r@
)R4�hH!АB�!�@C
���p��
�	
�.�o�&�0>�.��<�f�>O�̽�BCC
���<�µ4�iq��蓂E!���N�n��hhHI�м]�����#м]�Me�y{���=����zb��:)�1�)44��o��*�7���Y*!}��.7rq�TB�}����!-]��v�]������IC��&a>Ou���@{
��\�����8{\�f�9X��������;;z\k9�y����$h`��o��$���;��n�f�n��4���uQ7����#ǌ0��4��TC�������C�!Ej� �Zi�M鱨�9���M.�ȍR46��{���)44��4[g���)n�L��Ҙ�А⦡[��s��!e��=��������â,9 %��� �����9��	��F�P�'}��fhHI�ЌZhhHI���B�����@d5k3��+�9z|�$fh��3�@3F�r�RhhH!АB�!�@`oy��BCC
�Ʀh��g��[�B��߾�NCC�TCӚ�
t�[H9A�
tk�c����34���U�	�(AaTYg=�0r4���
�н���hhH��!�@��_l�@7�i&�o�������@wtt����F�m��'    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Sky.png-14b1388b41baefd575e2908a4f206ee9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sky.png"
dest_files=[ "res://.import/Sky.png-14b1388b41baefd575e2908a4f206ee9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST@   @            o  PNG �PNG

   IHDR   @   @   �iq�  2IDATx�횿O1ǿW����R9�����)H�`Ȑ0$baD���Ă�Ȃ��0d��C$6�
�T
H%Rډ� ]�`c��>�žP������~~~�����p8������P=&ZK�� ��"_l�6ScZtac�\�������Zޘ0X�����)�k��PĠʰ�H��E'���g�0ZT�z�{����/м�� ��*�ɲ�N���>5N���	'��i���i�,�Z"�*�x����)R���`�@�p��NUq�5�E�^��:m
��w[�{�a'�cX���no�����n/�zK��i-�IPepv.�]�C�;������\�\�^��qO�SG �����y�Z����� ����.�Q\\B�\��r}\�>��`�����4�2����"@�qg���/��锫\��v� �@����2���*�I�@0H�����`g�$�plON��O���d�S�'�3�B�^��ND&�+�����%��N��b[�iu`�_�=��H��z�S�re϶ki`�C�iФǋ��� ���: ����:n6הӖI-�{�4�4��Ɵ]����s�L�(�=E� ��X'dM�L�ˇw����e$@����(��^��0z�<Diq�~.-.��!k2u@�\妼�����ںr�oсH^��ɾ����Wj�z��%�j%���G�jpX-�9�XZ��>����ä{�a��N�J��~|����oڕ�${prءBTƆ���j���di��~�3l&l�h�`�+� �y]TOz bS!v`ǅ�� 9�v�!e��Z�h%�N������nbXc�\r�}���4����;�؝�;lc��2��"B��]�V�:�gu�s����WF�?�a�q�hJK�`+����q,h 5<�8���X�1Cj����g��=�+- 4���'>�����X��c,I�۬[�|�����b��n�^�k�M�-�{bX�xL��F�%�f�{6�z5���AV���*3�l)kA��_����e��H��%&a�i�m���/kw8����_�����
a�    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ship_Big.png-d53285a3533a884e1f64c3a42876122d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/aseprite/Ship_Big.png"
dest_files=[ "res://.import/Ship_Big.png-d53285a3533a884e1f64c3a42876122d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST               X  PNG �PNG

   IHDR         ��a  IDAT8���!r�0E�2�����3>C��z�N�Qh�G��IhH�g�r�$ $PA��]U.��xF����K��x�dor�l@�xyS��v��Oƚw��(l��6���b���s.�����V��x�Y�Ga�j��	 ��%����zF3[���-�����, `J"J��A�G����QZ�q�lx�۾D�] 諚���_�k�����*�����AT���7��k��C8Roa���Q�Oϼ�(!�Ưo�ݨs�tYO� 
1�r� �ő����P��%������P    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ship_Enemy.png-4e8f4c2009e66d540db6d455c2c4d796.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/aseprite/Ship_Enemy.png"
dest_files=[ "res://.import/Ship_Enemy.png-4e8f4c2009e66d540db6d455c2c4d796.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST               _  PNG �PNG

   IHDR         �w=�  "IDATH��U�k1�Tz��dH����pC���:��޲�������nH<d��,t�`�?�!>��dQ@NO�N���tz�{z����
ܱ��F�C��oߝ�?G!C!�����h�8�+��>D8 ����!M$�D��y�4�b��"��.�H�\Ndb�"��4�.��{��{��@Q!9�F@g-Sw�HP���j�B ;����3�q�������
�O��NjCU�1�]�ٻ��lFS$*��Vk���Vk�#�������b�LK���Q,��vD�n@=7�w��*�i"1��Qt;(��J�w{�_~;z���Y�BLq���a�H��r�Mؔ_ �lq�$�2��m��k �0D�O}]�C�&�=��h9��*�-����D&��^/���Ĺ+�����P��Fȸ��ni��`� ���<4M��}��c�9AO+ �9�����]��iѕYn�;�ݨ��R#�<D�L���z)
�T��N-���>��&9�D&N����pc������O�`K���/��P���f�%VLE    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ship_Enemy_Medium.png-d55852535a128bb68d369fb8a7ab0061.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/aseprite/Ship_Enemy_Medium.png"
dest_files=[ "res://.import/Ship_Enemy_Medium.png-d55852535a128bb68d369fb8a7ab0061.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )

            [remap]

path="res://Player.gdc"
               ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Space_Shooter      application/run/main_scene          res://Levels/World.tscn    application/config/icon         res://icon.png     display/window/size/width      �      display/window/size/height      @     display/window/size/test_width      h     display/window/size/test_height      �     display/window/stretch/mode         2d     importer_defaults/texture\              compress/bptc_ldr                compress/hdr_mode                compress/lossy_quality    ffffff�?      compress/mode                compress/normal_map           	   detect_3d               flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat          
   flags/srgb              process/HDR_as_SRGB              process/fix_alpha_border            process/invert_color             process/premult_alpha             
   size_limit               stream            	   svg/scale        �?)   rendering/environment/default_environment          res://default_env.tres             GDPC