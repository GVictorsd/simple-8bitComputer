#! /usr/bin/vvp
:ivl_version "10.3 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 9;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x560faf6130c0 .scope module, "test" "test" 2 11;
 .timescale -8 -9;
RS_0x7f3b7fcb90a8 .resolv tri, L_0x560faf63bc80, L_0x560faf63be10, L_0x560faf63bf00, L_0x560faf63fb50, L_0x560faf63fd50, L_0x560faf640580, L_0x560faf640760;
v0x560faf63a2d0_0 .net8 "Bus", 7 0, RS_0x7f3b7fcb90a8;  7 drivers
v0x560faf63a4c0_0 .var "Buss", 7 0;
o0x7f3b7fcbb9e8 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf63a5a0_0 name=_s10
v0x560faf63a690_0 .net "addrout", 3 0, v0x560faf637d40_0;  1 drivers
v0x560faf63a750_0 .var "aoa", 0 0;
v0x560faf63a840_0 .var "awa", 0 0;
v0x560faf63a8e0_0 .var "boa", 0 0;
v0x560faf63a9b0_0 .var "bwa", 0 0;
v0x560faf63aa80_0 .net "cf", 0 0, v0x560faf6359b0_0;  1 drivers
v0x560faf63ab50_0 .var "clk", 0 0;
v0x560faf63ad00_0 .var "clr", 0 0;
v0x560faf63ada0_0 .var "control", 0 0;
v0x560faf63ae40_0 .net "display", 7 0, L_0x560faf6406a0;  1 drivers
v0x560faf63af10_0 .var "flagsin", 0 0;
v0x560faf63afe0_0 .var "inregoa", 0 0;
v0x560faf63b0b0_0 .var "inregwa", 0 0;
v0x560faf63b180_0 .var "marwa", 0 0;
v0x560faf63b360_0 .var "outregwa", 0 0;
v0x560faf63b430_0 .var "pcinc", 0 0;
v0x560faf63b500_0 .var "pcjmp", 0 0;
v0x560faf63b5d0_0 .var "pcoe", 0 0;
v0x560faf63b6a0_0 .var "ramcs", 0 0;
v0x560faf63b770_0 .var "ramoa", 0 0;
v0x560faf63b840_0 .var "ramwa", 0 0;
v0x560faf63b910_0 .var "sub", 0 0;
v0x560faf63b9e0_0 .var "sumout", 0 0;
v0x560faf63bab0_0 .net "zf", 0 0, v0x560faf636100_0;  1 drivers
L_0x560faf63bc80 .part/pv L_0x560faf63bb80, 0, 4, 8;
L_0x560faf63bd70 .part RS_0x7f3b7fcb90a8, 0, 4;
L_0x560faf63fcb0 .part RS_0x7f3b7fcb90a8, 0, 4;
L_0x560faf640580 .part/pv L_0x560faf640440, 0, 4, 8;
L_0x560faf640760 .functor MUXZ 8, o0x7f3b7fcbb9e8, v0x560faf63a4c0_0, v0x560faf63ada0_0, C4<>;
S_0x560faf60e170 .scope module, "a" "gpr" 2 30, 3 9 0, S_0x560faf6130c0;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 8 "data_out"
    .port_info 1 /INPUT 8 "data_in"
    .port_info 2 /INPUT 1 "clk"
    .port_info 3 /INPUT 1 "clr"
    .port_info 4 /INPUT 1 "wa"
    .port_info 5 /INPUT 1 "oa"
o0x7f3b7fcb9018 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf60dfe0_0 name=_s0
v0x560faf60bec0_0 .net "clk", 0 0, v0x560faf63ab50_0;  1 drivers
v0x560faf5f7fd0_0 .net "clr", 0 0, v0x560faf63ad00_0;  1 drivers
v0x560faf5f6f60_0 .net8 "data_in", 7 0, RS_0x7f3b7fcb90a8;  alias, 7 drivers
v0x560faf5f5600_0 .net8 "data_out", 7 0, RS_0x7f3b7fcb90a8;  alias, 7 drivers
v0x560faf5f5100_0 .net "oa", 0 0, v0x560faf63a750_0;  1 drivers
v0x560faf62e7b0_0 .var "store", 7 0;
v0x560faf62e890_0 .net "wa", 0 0, v0x560faf63a840_0;  1 drivers
E_0x560faf5c6c00 .event posedge, v0x560faf60bec0_0;
L_0x560faf63be10 .functor MUXZ 8, o0x7f3b7fcb9018, v0x560faf62e7b0_0, v0x560faf63a750_0, C4<>;
S_0x560faf62ea10 .scope module, "alunit" "alu" 2 40, 4 11 0, S_0x560faf6130c0;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 8 "out"
    .port_info 1 /OUTPUT 1 "carryflg"
    .port_info 2 /OUTPUT 1 "zeroflg"
    .port_info 3 /INPUT 8 "a"
    .port_info 4 /INPUT 8 "b"
    .port_info 5 /INPUT 1 "clk"
    .port_info 6 /INPUT 1 "sumout"
    .port_info 7 /INPUT 1 "sub"
    .port_info 8 /INPUT 1 "flagsin"
L_0x560faf63f7e0 .functor NOT 8, v0x560faf636a10_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0x560faf6353f0_0 .net *"_s0", 7 0, L_0x560faf63f7e0;  1 drivers
o0x7f3b7fcba938 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf6354f0_0 name=_s10
L_0x7f3b7fc70018 .functor BUFT 1, C4<1>, C4<0>, C4<0>, C4<0>;
v0x560faf6355d0_0 .net/2u *"_s4", 0 0, L_0x7f3b7fc70018;  1 drivers
L_0x7f3b7fc70060 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x560faf635690_0 .net/2u *"_s6", 0 0, L_0x7f3b7fc70060;  1 drivers
v0x560faf635770_0 .net "a", 7 0, v0x560faf62e7b0_0;  1 drivers
v0x560faf6358d0_0 .net "b", 7 0, v0x560faf636a10_0;  1 drivers
v0x560faf6359b0_0 .var "carryflg", 0 0;
v0x560faf635a70_0 .net "cf1", 0 0, L_0x560faf63f020;  1 drivers
v0x560faf635b10_0 .net "cin", 0 0, L_0x560faf63fa10;  1 drivers
v0x560faf635c40_0 .net "clk", 0 0, v0x560faf63ab50_0;  alias, 1 drivers
v0x560faf635ce0_0 .net "flagsin", 0 0, v0x560faf63af10_0;  1 drivers
v0x560faf635d80_0 .net8 "out", 7 0, RS_0x7f3b7fcb90a8;  alias, 7 drivers
v0x560faf635e40_0 .net "sub", 0 0, v0x560faf63b910_0;  1 drivers
v0x560faf635f00_0 .net "sum", 7 0, L_0x560faf63f5b0;  1 drivers
v0x560faf635fc0_0 .net "suminb", 7 0, L_0x560faf63f850;  1 drivers
v0x560faf636060_0 .net "sumout", 0 0, v0x560faf63b9e0_0;  1 drivers
v0x560faf636100_0 .var "zeroflg", 0 0;
L_0x560faf63f850 .functor MUXZ 8, v0x560faf636a10_0, L_0x560faf63f7e0, v0x560faf63b910_0, C4<>;
L_0x560faf63fa10 .functor MUXZ 1, L_0x7f3b7fc70060, L_0x7f3b7fc70018, v0x560faf63b910_0, C4<>;
L_0x560faf63fb50 .functor MUXZ 8, o0x7f3b7fcba938, L_0x560faf63f5b0, v0x560faf63b9e0_0, C4<>;
S_0x560faf62ed30 .scope module, "addr" "adder8b" 4 21, 5 48 0, S_0x560faf62ea10;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 8 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 8 "a"
    .port_info 3 /INPUT 8 "b"
    .port_info 4 /INPUT 1 "cin"
v0x560faf634e70_0 .net "a", 7 0, v0x560faf62e7b0_0;  alias, 1 drivers
v0x560faf634f50_0 .net "b", 7 0, L_0x560faf63f850;  alias, 1 drivers
v0x560faf635010_0 .net "c0", 0 0, L_0x560faf63d510;  1 drivers
v0x560faf6350b0_0 .net "cin", 0 0, L_0x560faf63fa10;  alias, 1 drivers
v0x560faf635150_0 .net "cout", 0 0, L_0x560faf63f020;  alias, 1 drivers
v0x560faf635290_0 .net "sum", 7 0, L_0x560faf63f5b0;  alias, 1 drivers
L_0x560faf63da60 .part v0x560faf62e7b0_0, 0, 4;
L_0x560faf63db90 .part L_0x560faf63f850, 0, 4;
L_0x560faf63f5b0 .concat8 [ 4 4 0 0], L_0x560faf63d5d0, L_0x560faf63f120;
L_0x560faf63f6a0 .part v0x560faf62e7b0_0, 4, 4;
L_0x560faf63f740 .part L_0x560faf63f850, 4, 4;
S_0x560faf62ef80 .scope module, "ad0" "adder4b" 5 55, 5 28 0, S_0x560faf62ed30;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 4 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 4 "a"
    .port_info 3 /INPUT 4 "b"
    .port_info 4 /INPUT 1 "cin"
v0x560faf631780_0 .net "a", 3 0, L_0x560faf63da60;  1 drivers
v0x560faf631880_0 .net "b", 3 0, L_0x560faf63db90;  1 drivers
v0x560faf631960_0 .net "c0", 0 0, L_0x560faf63c3b0;  1 drivers
v0x560faf631a50_0 .net "c1", 0 0, L_0x560faf63c920;  1 drivers
v0x560faf631b40_0 .net "c2", 0 0, L_0x560faf63cf60;  1 drivers
v0x560faf631c80_0 .net "cin", 0 0, L_0x560faf63fa10;  alias, 1 drivers
v0x560faf631d20_0 .net "cout", 0 0, L_0x560faf63d510;  alias, 1 drivers
v0x560faf631dc0_0 .net "sum", 3 0, L_0x560faf63d5d0;  1 drivers
L_0x560faf63c470 .part L_0x560faf63da60, 0, 1;
L_0x560faf63c510 .part L_0x560faf63db90, 0, 1;
L_0x560faf63c9e0 .part L_0x560faf63da60, 1, 1;
L_0x560faf63cad0 .part L_0x560faf63db90, 1, 1;
L_0x560faf63d020 .part L_0x560faf63da60, 2, 1;
L_0x560faf63d0c0 .part L_0x560faf63db90, 2, 1;
L_0x560faf63d5d0 .concat8 [ 1 1 1 1], L_0x560faf63c250, L_0x560faf63c7c0, L_0x560faf63cd70, L_0x560faf63d320;
L_0x560faf63d7b0 .part L_0x560faf63da60, 3, 1;
L_0x560faf63d930 .part L_0x560faf63db90, 3, 1;
S_0x560faf62f1f0 .scope module, "ad0" "adder1b" 5 35, 5 7 0, S_0x560faf62ef80;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "cin"
L_0x560faf63c040 .functor XOR 1, L_0x560faf63c470, L_0x560faf63c510, C4<0>, C4<0>;
L_0x560faf63c110 .functor AND 1, L_0x560faf63c470, L_0x560faf63c510, C4<1>, C4<1>;
L_0x560faf63c250 .functor XOR 1, L_0x560faf63c040, L_0x560faf63fa10, C4<0>, C4<0>;
L_0x560faf63c310 .functor AND 1, L_0x560faf63c040, L_0x560faf63fa10, C4<1>, C4<1>;
L_0x560faf63c3b0 .functor OR 1, L_0x560faf63c110, L_0x560faf63c310, C4<0>, C4<0>;
v0x560faf62f460_0 .net "a", 0 0, L_0x560faf63c470;  1 drivers
v0x560faf62f540_0 .net "b", 0 0, L_0x560faf63c510;  1 drivers
v0x560faf62f600_0 .net "c", 0 0, L_0x560faf63c040;  1 drivers
v0x560faf62f6a0_0 .net "cin", 0 0, L_0x560faf63fa10;  alias, 1 drivers
v0x560faf62f760_0 .net "cout", 0 0, L_0x560faf63c3b0;  alias, 1 drivers
v0x560faf62f870_0 .net "d", 0 0, L_0x560faf63c110;  1 drivers
v0x560faf62f930_0 .net "e", 0 0, L_0x560faf63c310;  1 drivers
v0x560faf62f9f0_0 .net "sum", 0 0, L_0x560faf63c250;  1 drivers
S_0x560faf62fb50 .scope module, "ad1" "adder1b" 5 36, 5 7 0, S_0x560faf62ef80;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "cin"
L_0x560faf63c5b0 .functor XOR 1, L_0x560faf63c9e0, L_0x560faf63cad0, C4<0>, C4<0>;
L_0x560faf63c680 .functor AND 1, L_0x560faf63c9e0, L_0x560faf63cad0, C4<1>, C4<1>;
L_0x560faf63c7c0 .functor XOR 1, L_0x560faf63c5b0, L_0x560faf63c3b0, C4<0>, C4<0>;
L_0x560faf63c880 .functor AND 1, L_0x560faf63c5b0, L_0x560faf63c3b0, C4<1>, C4<1>;
L_0x560faf63c920 .functor OR 1, L_0x560faf63c680, L_0x560faf63c880, C4<0>, C4<0>;
v0x560faf62fdc0_0 .net "a", 0 0, L_0x560faf63c9e0;  1 drivers
v0x560faf62fe80_0 .net "b", 0 0, L_0x560faf63cad0;  1 drivers
v0x560faf62ff40_0 .net "c", 0 0, L_0x560faf63c5b0;  1 drivers
v0x560faf630010_0 .net "cin", 0 0, L_0x560faf63c3b0;  alias, 1 drivers
v0x560faf6300e0_0 .net "cout", 0 0, L_0x560faf63c920;  alias, 1 drivers
v0x560faf6301d0_0 .net "d", 0 0, L_0x560faf63c680;  1 drivers
v0x560faf630290_0 .net "e", 0 0, L_0x560faf63c880;  1 drivers
v0x560faf630350_0 .net "sum", 0 0, L_0x560faf63c7c0;  1 drivers
S_0x560faf6304b0 .scope module, "ad2" "adder1b" 5 37, 5 7 0, S_0x560faf62ef80;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "cin"
L_0x560faf63cbf0 .functor XOR 1, L_0x560faf63d020, L_0x560faf63d0c0, C4<0>, C4<0>;
L_0x560faf63cc60 .functor AND 1, L_0x560faf63d020, L_0x560faf63d0c0, C4<1>, C4<1>;
L_0x560faf63cd70 .functor XOR 1, L_0x560faf63cbf0, L_0x560faf63c920, C4<0>, C4<0>;
L_0x560faf63cec0 .functor AND 1, L_0x560faf63cbf0, L_0x560faf63c920, C4<1>, C4<1>;
L_0x560faf63cf60 .functor OR 1, L_0x560faf63cc60, L_0x560faf63cec0, C4<0>, C4<0>;
v0x560faf630730_0 .net "a", 0 0, L_0x560faf63d020;  1 drivers
v0x560faf6307f0_0 .net "b", 0 0, L_0x560faf63d0c0;  1 drivers
v0x560faf6308b0_0 .net "c", 0 0, L_0x560faf63cbf0;  1 drivers
v0x560faf630980_0 .net "cin", 0 0, L_0x560faf63c920;  alias, 1 drivers
v0x560faf630a50_0 .net "cout", 0 0, L_0x560faf63cf60;  alias, 1 drivers
v0x560faf630b40_0 .net "d", 0 0, L_0x560faf63cc60;  1 drivers
v0x560faf630c00_0 .net "e", 0 0, L_0x560faf63cec0;  1 drivers
v0x560faf630cc0_0 .net "sum", 0 0, L_0x560faf63cd70;  1 drivers
S_0x560faf630e20 .scope module, "ad3" "adder1b" 5 38, 5 7 0, S_0x560faf62ef80;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "cin"
L_0x560faf63d1a0 .functor XOR 1, L_0x560faf63d7b0, L_0x560faf63d930, C4<0>, C4<0>;
L_0x560faf63d210 .functor AND 1, L_0x560faf63d7b0, L_0x560faf63d930, C4<1>, C4<1>;
L_0x560faf63d320 .functor XOR 1, L_0x560faf63d1a0, L_0x560faf63cf60, C4<0>, C4<0>;
L_0x560faf63d470 .functor AND 1, L_0x560faf63d1a0, L_0x560faf63cf60, C4<1>, C4<1>;
L_0x560faf63d510 .functor OR 1, L_0x560faf63d210, L_0x560faf63d470, C4<0>, C4<0>;
v0x560faf631070_0 .net "a", 0 0, L_0x560faf63d7b0;  1 drivers
v0x560faf631150_0 .net "b", 0 0, L_0x560faf63d930;  1 drivers
v0x560faf631210_0 .net "c", 0 0, L_0x560faf63d1a0;  1 drivers
v0x560faf6312e0_0 .net "cin", 0 0, L_0x560faf63cf60;  alias, 1 drivers
v0x560faf6313b0_0 .net "cout", 0 0, L_0x560faf63d510;  alias, 1 drivers
v0x560faf6314a0_0 .net "d", 0 0, L_0x560faf63d210;  1 drivers
v0x560faf631560_0 .net "e", 0 0, L_0x560faf63d470;  1 drivers
v0x560faf631620_0 .net "sum", 0 0, L_0x560faf63d320;  1 drivers
S_0x560faf631ee0 .scope module, "ad1" "adder4b" 5 56, 5 28 0, S_0x560faf62ed30;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 4 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 4 "a"
    .port_info 3 /INPUT 4 "b"
    .port_info 4 /INPUT 1 "cin"
v0x560faf6346f0_0 .net "a", 3 0, L_0x560faf63f6a0;  1 drivers
v0x560faf6347f0_0 .net "b", 3 0, L_0x560faf63f740;  1 drivers
v0x560faf6348d0_0 .net "c0", 0 0, L_0x560faf63de70;  1 drivers
v0x560faf6349c0_0 .net "c1", 0 0, L_0x560faf63e430;  1 drivers
v0x560faf634ab0_0 .net "c2", 0 0, L_0x560faf63ea70;  1 drivers
v0x560faf634bf0_0 .net "cin", 0 0, L_0x560faf63d510;  alias, 1 drivers
v0x560faf634c90_0 .net "cout", 0 0, L_0x560faf63f020;  alias, 1 drivers
v0x560faf634d30_0 .net "sum", 3 0, L_0x560faf63f120;  1 drivers
L_0x560faf63df80 .part L_0x560faf63f6a0, 0, 1;
L_0x560faf63e020 .part L_0x560faf63f740, 0, 1;
L_0x560faf63e4f0 .part L_0x560faf63f6a0, 1, 1;
L_0x560faf63e5e0 .part L_0x560faf63f740, 1, 1;
L_0x560faf63eb30 .part L_0x560faf63f6a0, 2, 1;
L_0x560faf63ebd0 .part L_0x560faf63f740, 2, 1;
L_0x560faf63f120 .concat8 [ 1 1 1 1], L_0x560faf63dd10, L_0x560faf63e240, L_0x560faf63e880, L_0x560faf63ee30;
L_0x560faf63f300 .part L_0x560faf63f6a0, 3, 1;
L_0x560faf63f480 .part L_0x560faf63f740, 3, 1;
S_0x560faf632150 .scope module, "ad0" "adder1b" 5 35, 5 7 0, S_0x560faf631ee0;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "cin"
L_0x560faf63dc30 .functor XOR 1, L_0x560faf63df80, L_0x560faf63e020, C4<0>, C4<0>;
L_0x560faf63dca0 .functor AND 1, L_0x560faf63df80, L_0x560faf63e020, C4<1>, C4<1>;
L_0x560faf63dd10 .functor XOR 1, L_0x560faf63dc30, L_0x560faf63d510, C4<0>, C4<0>;
L_0x560faf63ddd0 .functor AND 1, L_0x560faf63dc30, L_0x560faf63d510, C4<1>, C4<1>;
L_0x560faf63de70 .functor OR 1, L_0x560faf63dca0, L_0x560faf63ddd0, C4<0>, C4<0>;
v0x560faf6323a0_0 .net "a", 0 0, L_0x560faf63df80;  1 drivers
v0x560faf632480_0 .net "b", 0 0, L_0x560faf63e020;  1 drivers
v0x560faf632540_0 .net "c", 0 0, L_0x560faf63dc30;  1 drivers
v0x560faf632610_0 .net "cin", 0 0, L_0x560faf63d510;  alias, 1 drivers
v0x560faf632700_0 .net "cout", 0 0, L_0x560faf63de70;  alias, 1 drivers
v0x560faf632810_0 .net "d", 0 0, L_0x560faf63dca0;  1 drivers
v0x560faf6328d0_0 .net "e", 0 0, L_0x560faf63ddd0;  1 drivers
v0x560faf632990_0 .net "sum", 0 0, L_0x560faf63dd10;  1 drivers
S_0x560faf632af0 .scope module, "ad1" "adder1b" 5 36, 5 7 0, S_0x560faf631ee0;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "cin"
L_0x560faf63e0c0 .functor XOR 1, L_0x560faf63e4f0, L_0x560faf63e5e0, C4<0>, C4<0>;
L_0x560faf63e130 .functor AND 1, L_0x560faf63e4f0, L_0x560faf63e5e0, C4<1>, C4<1>;
L_0x560faf63e240 .functor XOR 1, L_0x560faf63e0c0, L_0x560faf63de70, C4<0>, C4<0>;
L_0x560faf63e390 .functor AND 1, L_0x560faf63e0c0, L_0x560faf63de70, C4<1>, C4<1>;
L_0x560faf63e430 .functor OR 1, L_0x560faf63e130, L_0x560faf63e390, C4<0>, C4<0>;
v0x560faf632d60_0 .net "a", 0 0, L_0x560faf63e4f0;  1 drivers
v0x560faf632e20_0 .net "b", 0 0, L_0x560faf63e5e0;  1 drivers
v0x560faf632ee0_0 .net "c", 0 0, L_0x560faf63e0c0;  1 drivers
v0x560faf632f80_0 .net "cin", 0 0, L_0x560faf63de70;  alias, 1 drivers
v0x560faf633050_0 .net "cout", 0 0, L_0x560faf63e430;  alias, 1 drivers
v0x560faf633140_0 .net "d", 0 0, L_0x560faf63e130;  1 drivers
v0x560faf633200_0 .net "e", 0 0, L_0x560faf63e390;  1 drivers
v0x560faf6332c0_0 .net "sum", 0 0, L_0x560faf63e240;  1 drivers
S_0x560faf633420 .scope module, "ad2" "adder1b" 5 37, 5 7 0, S_0x560faf631ee0;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "cin"
L_0x560faf63e700 .functor XOR 1, L_0x560faf63eb30, L_0x560faf63ebd0, C4<0>, C4<0>;
L_0x560faf63e770 .functor AND 1, L_0x560faf63eb30, L_0x560faf63ebd0, C4<1>, C4<1>;
L_0x560faf63e880 .functor XOR 1, L_0x560faf63e700, L_0x560faf63e430, C4<0>, C4<0>;
L_0x560faf63e9d0 .functor AND 1, L_0x560faf63e700, L_0x560faf63e430, C4<1>, C4<1>;
L_0x560faf63ea70 .functor OR 1, L_0x560faf63e770, L_0x560faf63e9d0, C4<0>, C4<0>;
v0x560faf6336a0_0 .net "a", 0 0, L_0x560faf63eb30;  1 drivers
v0x560faf633760_0 .net "b", 0 0, L_0x560faf63ebd0;  1 drivers
v0x560faf633820_0 .net "c", 0 0, L_0x560faf63e700;  1 drivers
v0x560faf6338f0_0 .net "cin", 0 0, L_0x560faf63e430;  alias, 1 drivers
v0x560faf6339c0_0 .net "cout", 0 0, L_0x560faf63ea70;  alias, 1 drivers
v0x560faf633ab0_0 .net "d", 0 0, L_0x560faf63e770;  1 drivers
v0x560faf633b70_0 .net "e", 0 0, L_0x560faf63e9d0;  1 drivers
v0x560faf633c30_0 .net "sum", 0 0, L_0x560faf63e880;  1 drivers
S_0x560faf633d90 .scope module, "ad3" "adder1b" 5 38, 5 7 0, S_0x560faf631ee0;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "cout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "cin"
L_0x560faf63ecb0 .functor XOR 1, L_0x560faf63f300, L_0x560faf63f480, C4<0>, C4<0>;
L_0x560faf63ed20 .functor AND 1, L_0x560faf63f300, L_0x560faf63f480, C4<1>, C4<1>;
L_0x560faf63ee30 .functor XOR 1, L_0x560faf63ecb0, L_0x560faf63ea70, C4<0>, C4<0>;
L_0x560faf63ef80 .functor AND 1, L_0x560faf63ecb0, L_0x560faf63ea70, C4<1>, C4<1>;
L_0x560faf63f020 .functor OR 1, L_0x560faf63ed20, L_0x560faf63ef80, C4<0>, C4<0>;
v0x560faf633fe0_0 .net "a", 0 0, L_0x560faf63f300;  1 drivers
v0x560faf6340c0_0 .net "b", 0 0, L_0x560faf63f480;  1 drivers
v0x560faf634180_0 .net "c", 0 0, L_0x560faf63ecb0;  1 drivers
v0x560faf634250_0 .net "cin", 0 0, L_0x560faf63ea70;  alias, 1 drivers
v0x560faf634320_0 .net "cout", 0 0, L_0x560faf63f020;  alias, 1 drivers
v0x560faf634410_0 .net "d", 0 0, L_0x560faf63ed20;  1 drivers
v0x560faf6344d0_0 .net "e", 0 0, L_0x560faf63ef80;  1 drivers
v0x560faf634590_0 .net "sum", 0 0, L_0x560faf63ee30;  1 drivers
S_0x560faf636330 .scope module, "b" "gpr" 2 34, 3 9 0, S_0x560faf6130c0;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 8 "data_out"
    .port_info 1 /INPUT 8 "data_in"
    .port_info 2 /INPUT 1 "clk"
    .port_info 3 /INPUT 1 "clr"
    .port_info 4 /INPUT 1 "wa"
    .port_info 5 /INPUT 1 "oa"
o0x7f3b7fcbac98 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf636550_0 name=_s0
v0x560faf636630_0 .net "clk", 0 0, v0x560faf63ab50_0;  alias, 1 drivers
v0x560faf636740_0 .net "clr", 0 0, v0x560faf63ad00_0;  alias, 1 drivers
v0x560faf6367e0_0 .net8 "data_in", 7 0, RS_0x7f3b7fcb90a8;  alias, 7 drivers
v0x560faf636880_0 .net8 "data_out", 7 0, RS_0x7f3b7fcb90a8;  alias, 7 drivers
v0x560faf636970_0 .net "oa", 0 0, v0x560faf63a8e0_0;  1 drivers
v0x560faf636a10_0 .var "store", 7 0;
v0x560faf636ad0_0 .net "wa", 0 0, v0x560faf63a9b0_0;  1 drivers
L_0x560faf63bf00 .functor MUXZ 8, o0x7f3b7fcbac98, v0x560faf636a10_0, v0x560faf63a8e0_0, C4<>;
S_0x560faf636c30 .scope module, "instructionreg" "instreg" 2 54, 6 9 0, S_0x560faf6130c0;
 .timescale -8 -9;
    .port_info 0 /INPUT 8 "busin"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /INPUT 1 "clr"
    .port_info 3 /INPUT 1 "wa"
    .port_info 4 /INPUT 1 "oa"
    .port_info 5 /OUTPUT 4 "addrout"
v0x560faf636e50_0 .net *"_s1", 3 0, L_0x560faf6403a0;  1 drivers
o0x7f3b7fcbae78 .functor BUFZ 4, C4<zzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf636f50_0 name=_s2
v0x560faf637030_0 .net "addrout", 3 0, L_0x560faf640440;  1 drivers
v0x560faf6370f0_0 .net8 "busin", 7 0, RS_0x7f3b7fcb90a8;  alias, 7 drivers
v0x560faf6371b0_0 .net "clk", 0 0, v0x560faf63ab50_0;  alias, 1 drivers
v0x560faf6372a0_0 .net "clr", 0 0, v0x560faf63ad00_0;  alias, 1 drivers
v0x560faf637390_0 .net "oa", 0 0, v0x560faf63afe0_0;  1 drivers
v0x560faf637450_0 .var "store", 7 0;
v0x560faf637530_0 .net "wa", 0 0, v0x560faf63b0b0_0;  1 drivers
L_0x560faf6403a0 .part v0x560faf637450_0, 0, 4;
L_0x560faf640440 .functor MUXZ 4, o0x7f3b7fcbae78, L_0x560faf6403a0, v0x560faf63afe0_0, C4<>;
S_0x560faf637740 .scope module, "mar" "memaddreg" 2 45, 7 8 0, S_0x560faf6130c0;
 .timescale -8 -9;
    .port_info 0 /INPUT 4 "busin"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /INPUT 1 "clr"
    .port_info 3 /INPUT 1 "wa"
    .port_info 4 /OUTPUT 4 "addrout"
v0x560faf637990_0 .net "addrout", 3 0, v0x560faf637d40_0;  alias, 1 drivers
v0x560faf637a90_0 .net "busin", 3 0, L_0x560faf63fcb0;  1 drivers
v0x560faf637b70_0 .net "clk", 0 0, v0x560faf63ab50_0;  alias, 1 drivers
v0x560faf637ca0_0 .net "clr", 0 0, v0x560faf63ad00_0;  alias, 1 drivers
v0x560faf637d40_0 .var "store", 3 0;
v0x560faf637e00_0 .net "wa", 0 0, v0x560faf63b180_0;  1 drivers
S_0x560faf637f60 .scope module, "out" "outputreg" 2 59, 8 9 0, S_0x560faf6130c0;
 .timescale -8 -9;
    .port_info 0 /INPUT 8 "busin"
    .port_info 1 /INPUT 1 "clk"
    .port_info 2 /INPUT 1 "clr"
    .port_info 3 /INPUT 1 "wa"
    .port_info 4 /OUTPUT 8 "display"
L_0x560faf6406a0 .functor BUFZ 8, v0x560faf638520_0, C4<00000000>, C4<00000000>, C4<00000000>;
v0x560faf6381b0_0 .net8 "busin", 7 0, RS_0x7f3b7fcb90a8;  alias, 7 drivers
v0x560faf638290_0 .net "clk", 0 0, v0x560faf63ab50_0;  alias, 1 drivers
v0x560faf638350_0 .net "clr", 0 0, v0x560faf63ad00_0;  alias, 1 drivers
v0x560faf638480_0 .net "display", 7 0, L_0x560faf6406a0;  alias, 1 drivers
v0x560faf638520_0 .var "store", 7 0;
v0x560faf638600_0 .net "wa", 0 0, v0x560faf63b360_0;  1 drivers
S_0x560faf638760 .scope module, "pc" "counter" 2 22, 9 12 0, S_0x560faf6130c0;
 .timescale -8 -9;
    .port_info 0 /OUTPUT 4 "out"
    .port_info 1 /INPUT 4 "in"
    .port_info 2 /INPUT 1 "clk"
    .port_info 3 /INPUT 1 "clr"
    .port_info 4 /INPUT 1 "oe"
    .port_info 5 /INPUT 1 "jmp"
    .port_info 6 /INPUT 1 "inc"
o0x7f3b7fcbb3b8 .functor BUFZ 4, C4<zzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf638930_0 name=_s0
v0x560faf638a30_0 .net "clk", 0 0, v0x560faf63ab50_0;  alias, 1 drivers
v0x560faf638af0_0 .net "clr", 0 0, v0x560faf63ad00_0;  alias, 1 drivers
v0x560faf638b90_0 .net "in", 3 0, L_0x560faf63bd70;  1 drivers
v0x560faf638c30_0 .net "inc", 0 0, v0x560faf63b430_0;  1 drivers
v0x560faf638d40_0 .net "jmp", 0 0, v0x560faf63b500_0;  1 drivers
v0x560faf638e00_0 .net "oe", 0 0, v0x560faf63b5d0_0;  1 drivers
v0x560faf638ec0_0 .net "out", 3 0, L_0x560faf63bb80;  1 drivers
v0x560faf638fa0_0 .var "store", 3 0;
L_0x560faf63bb80 .functor MUXZ 4, o0x7f3b7fcbb3b8, v0x560faf638fa0_0, v0x560faf63b5d0_0, C4<>;
S_0x560faf6391f0 .scope module, "rm" "ram" 2 49, 10 9 0, S_0x560faf6130c0;
 .timescale -8 -9;
    .port_info 0 /INOUT 8 "bus"
    .port_info 1 /INPUT 4 "addr"
    .port_info 2 /INPUT 1 "clk"
    .port_info 3 /INPUT 1 "oa"
    .port_info 4 /INPUT 1 "wa"
    .port_info 5 /INPUT 1 "cs"
L_0x560faf63ff30 .functor AND 1, v0x560faf63b6a0_0, v0x560faf63b770_0, C4<1>, C4<1>;
o0x7f3b7fcbb658 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf639410_0 name=_s0
v0x560faf639510_0 .net *"_s10", 7 0, L_0x560faf63fff0;  1 drivers
v0x560faf6395f0_0 .net *"_s12", 5 0, L_0x560faf640090;  1 drivers
L_0x7f3b7fc700a8 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x560faf6396b0_0 .net *"_s15", 1 0, L_0x7f3b7fc700a8;  1 drivers
o0x7f3b7fcbb718 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf639790_0 name=_s16
o0x7f3b7fcbb748 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
; Elide local net with no drivers, v0x560faf6398c0_0 name=_s4
v0x560faf6399a0_0 .net *"_s8", 0 0, L_0x560faf63ff30;  1 drivers
v0x560faf639a80_0 .net "addr", 3 0, v0x560faf637d40_0;  alias, 1 drivers
v0x560faf639b40_0 .net8 "bus", 7 0, RS_0x7f3b7fcb90a8;  alias, 7 drivers
v0x560faf639c70_0 .net "clk", 0 0, v0x560faf63ab50_0;  alias, 1 drivers
v0x560faf639d10_0 .net "cs", 0 0, v0x560faf63b6a0_0;  1 drivers
v0x560faf639dd0_0 .net "data_in", 7 0, L_0x560faf63fe40;  1 drivers
v0x560faf639eb0_0 .net "data_out", 7 0, L_0x560faf640210;  1 drivers
v0x560faf639f90 .array "mem", 0 15, 7 0;
v0x560faf63a050_0 .net "oa", 0 0, v0x560faf63b770_0;  1 drivers
v0x560faf63a110_0 .net "wa", 0 0, v0x560faf63b840_0;  1 drivers
L_0x560faf63fd50 .functor MUXZ 8, o0x7f3b7fcbb658, L_0x560faf640210, v0x560faf63b770_0, C4<>;
L_0x560faf63fe40 .functor MUXZ 8, o0x7f3b7fcbb748, RS_0x7f3b7fcb90a8, v0x560faf63b840_0, C4<>;
L_0x560faf63fff0 .array/port v0x560faf639f90, L_0x560faf640090;
L_0x560faf640090 .concat [ 4 2 0 0], v0x560faf637d40_0, L_0x7f3b7fc700a8;
L_0x560faf640210 .functor MUXZ 8, o0x7f3b7fcbb718, L_0x560faf63fff0, L_0x560faf63ff30, C4<>;
    .scope S_0x560faf638760;
T_0 ;
    %wait E_0x560faf5c6c00;
    %load/vec4 v0x560faf638af0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x560faf638fa0_0, 0;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x560faf638d40_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.2, 8;
    %load/vec4 v0x560faf638b90_0;
    %assign/vec4 v0x560faf638fa0_0, 0;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v0x560faf638c30_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.4, 8;
    %load/vec4 v0x560faf638fa0_0;
    %addi 1, 0, 4;
    %assign/vec4 v0x560faf638fa0_0, 0;
T_0.4 ;
T_0.3 ;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x560faf60e170;
T_1 ;
    %wait E_0x560faf5c6c00;
    %load/vec4 v0x560faf5f7fd0_0;
    %cmpi/e 1, 0, 1;
    %jmp/0xz  T_1.0, 4;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x560faf62e7b0_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v0x560faf62e890_0;
    %cmpi/e 1, 0, 1;
    %jmp/0xz  T_1.2, 4;
    %load/vec4 v0x560faf5f6f60_0;
    %assign/vec4 v0x560faf62e7b0_0, 0;
T_1.2 ;
T_1.1 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x560faf636330;
T_2 ;
    %wait E_0x560faf5c6c00;
    %load/vec4 v0x560faf636740_0;
    %cmpi/e 1, 0, 1;
    %jmp/0xz  T_2.0, 4;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x560faf636a10_0, 0;
    %jmp T_2.1;
T_2.0 ;
    %load/vec4 v0x560faf636ad0_0;
    %cmpi/e 1, 0, 1;
    %jmp/0xz  T_2.2, 4;
    %load/vec4 v0x560faf6367e0_0;
    %assign/vec4 v0x560faf636a10_0, 0;
T_2.2 ;
T_2.1 ;
    %jmp T_2;
    .thread T_2;
    .scope S_0x560faf62ea10;
T_3 ;
    %wait E_0x560faf5c6c00;
    %load/vec4 v0x560faf635ce0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %load/vec4 v0x560faf635a70_0;
    %assign/vec4 v0x560faf6359b0_0, 0;
    %load/vec4 v0x560faf635f00_0;
    %cmpi/e 0, 0, 8;
    %flag_mov 8, 4;
    %jmp/0 T_3.2, 8;
    %pushi/vec4 1, 0, 1;
    %jmp/1 T_3.3, 8;
T_3.2 ; End of true expr.
    %pushi/vec4 0, 0, 1;
    %jmp/0 T_3.3, 8;
 ; End of false expr.
    %blend;
T_3.3;
    %assign/vec4 v0x560faf636100_0, 0;
T_3.0 ;
    %jmp T_3;
    .thread T_3;
    .scope S_0x560faf637740;
T_4 ;
    %wait E_0x560faf5c6c00;
    %load/vec4 v0x560faf637ca0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %pushi/vec4 0, 0, 4;
    %store/vec4 v0x560faf637d40_0, 0, 4;
    %jmp T_4.1;
T_4.0 ;
    %load/vec4 v0x560faf637e00_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.2, 8;
    %load/vec4 v0x560faf637a90_0;
    %store/vec4 v0x560faf637d40_0, 0, 4;
T_4.2 ;
T_4.1 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x560faf6391f0;
T_5 ;
    %wait E_0x560faf5c6c00;
    %load/vec4 v0x560faf639d10_0;
    %load/vec4 v0x560faf63a110_0;
    %and;
    %load/vec4 v0x560faf63a050_0;
    %inv;
    %and;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.0, 8;
    %load/vec4 v0x560faf639dd0_0;
    %load/vec4 v0x560faf639a80_0;
    %pad/u 6;
    %ix/vec4 4;
    %store/vec4a v0x560faf639f90, 4, 0;
T_5.0 ;
    %jmp T_5;
    .thread T_5;
    .scope S_0x560faf636c30;
T_6 ;
    %wait E_0x560faf5c6c00;
    %load/vec4 v0x560faf6372a0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_6.0, 8;
    %pushi/vec4 0, 0, 8;
    %store/vec4 v0x560faf637450_0, 0, 8;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0x560faf637530_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_6.2, 8;
    %load/vec4 v0x560faf6370f0_0;
    %store/vec4 v0x560faf637450_0, 0, 8;
T_6.2 ;
T_6.1 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0x560faf637f60;
T_7 ;
    %wait E_0x560faf5c6c00;
    %load/vec4 v0x560faf638350_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %pushi/vec4 0, 0, 8;
    %store/vec4 v0x560faf638520_0, 0, 8;
    %jmp T_7.1;
T_7.0 ;
    %load/vec4 v0x560faf638600_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.2, 8;
    %load/vec4 v0x560faf6381b0_0;
    %store/vec4 v0x560faf638520_0, 0, 8;
T_7.2 ;
T_7.1 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x560faf6130c0;
T_8 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x560faf63ab50_0, 0, 1;
    %end;
    .thread T_8;
    .scope S_0x560faf6130c0;
T_9 ;
    %delay 20, 0;
    %load/vec4 v0x560faf63ab50_0;
    %inv;
    %store/vec4 v0x560faf63ab50_0, 0, 1;
    %jmp T_9;
    .thread T_9;
    .scope S_0x560faf6130c0;
T_10 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b5d0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b500_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b430_0, 0;
    %end;
    .thread T_10;
    .scope S_0x560faf6130c0;
T_11 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63a840_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63a750_0, 0;
    %end;
    .thread T_11;
    .scope S_0x560faf6130c0;
T_12 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63a9b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63a8e0_0, 0;
    %end;
    .thread T_12;
    .scope S_0x560faf6130c0;
T_13 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b9e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b910_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63af10_0, 0;
    %end;
    .thread T_13;
    .scope S_0x560faf6130c0;
T_14 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %end;
    .thread T_14;
    .scope S_0x560faf6130c0;
T_15 ;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b6a0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b840_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %end;
    .thread T_15;
    .scope S_0x560faf6130c0;
T_16 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b0b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63afe0_0, 0;
    %end;
    .thread T_16;
    .scope S_0x560faf6130c0;
T_17 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b360_0, 0;
    %end;
    .thread T_17;
    .scope S_0x560faf6130c0;
T_18 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63ada0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63ad00_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63ad00_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63ada0_0, 0;
    %pushi/vec4 56, 0, 8;
    %assign/vec4 v0x560faf63a4c0_0, 0;
    %pushi/vec4 14, 0, 4;
    %assign/vec4 v0x560faf637d40_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b840_0, 0;
    %delay 30, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b840_0, 0;
    %delay 10, 0;
    %pushi/vec4 35, 0, 8;
    %assign/vec4 v0x560faf63a4c0_0, 0;
    %pushi/vec4 15, 0, 4;
    %assign/vec4 v0x560faf637d40_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b840_0, 0;
    %delay 30, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b840_0, 0;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b840_0, 0;
    %pushi/vec4 30, 0, 8;
    %assign/vec4 v0x560faf63a4c0_0, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x560faf637d40_0, 0;
    %delay 30, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b840_0, 0;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b840_0, 0;
    %pushi/vec4 47, 0, 8;
    %assign/vec4 v0x560faf63a4c0_0, 0;
    %pushi/vec4 1, 0, 4;
    %assign/vec4 v0x560faf637d40_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63ada0_0, 0;
    %pushi/vec4 14, 0, 4;
    %assign/vec4 v0x560faf637d40_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %load/vec4 v0x560faf637d40_0;
    %pad/u 6;
    %ix/vec4 4;
    %load/vec4a v0x560faf639f90, 4;
    %vpi_call 2 88 "$display", $time, "%h\011%h", v0x560faf63a2d0_0, S<0,vec4,u8> {1 0 0};
    %delay 30, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %delay 10, 0;
    %pushi/vec4 15, 0, 4;
    %assign/vec4 v0x560faf637d40_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %load/vec4 v0x560faf637d40_0;
    %pad/u 6;
    %ix/vec4 4;
    %load/vec4a v0x560faf639f90, 4;
    %vpi_call 2 92 "$display", $time, "%h\011%h", v0x560faf63a2d0_0, S<0,vec4,u8> {1 0 0};
    %delay 30, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %delay 10, 0;
    %pushi/vec4 0, 0, 4;
    %assign/vec4 v0x560faf637d40_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %load/vec4 v0x560faf637d40_0;
    %pad/u 6;
    %ix/vec4 4;
    %load/vec4a v0x560faf639f90, 4;
    %vpi_call 2 96 "$display", $time, "%h\011%h", v0x560faf63a2d0_0, S<0,vec4,u8> {1 0 0};
    %delay 30, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %delay 10, 0;
    %pushi/vec4 1, 0, 4;
    %assign/vec4 v0x560faf637d40_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %load/vec4 v0x560faf637d40_0;
    %pad/u 6;
    %ix/vec4 4;
    %load/vec4a v0x560faf639f90, 4;
    %vpi_call 2 100 "$display", $time, "%h\011%h", v0x560faf63a2d0_0, S<0,vec4,u8> {1 0 0};
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %delay 40, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b5d0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b5d0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b0b0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b430_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b0b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b430_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63afe0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63afe0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63a840_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63a840_0, 0;
    %vpi_call 2 108 "$display", $time, "\011a=%h\012", v0x560faf62e7b0_0 {0 0 0};
    %delay 40, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b5d0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b5d0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b0b0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b430_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b0b0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b430_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63afe0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63afe0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b180_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63a9b0_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b770_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63a9b0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63b9e0_0, 0;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x560faf63a840_0, 0;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63b9e0_0, 0;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x560faf63a840_0, 0;
    %delay 40, 0;
    %vpi_call 2 116 "$display", $time, "b= %h\011a= %h", v0x560faf636a10_0, v0x560faf62e7b0_0 {0 0 0};
    %delay 10, 0;
    %vpi_call 2 117 "$finish" {0 0 0};
    %end;
    .thread T_18;
    .scope S_0x560faf6130c0;
T_19 ;
    %vpi_call 2 121 "$dumpfile", "vars.vcd" {0 0 0};
    %vpi_call 2 122 "$dumpvars", 32'sb00000000000000000000000000000000, S_0x560faf6130c0 {0 0 0};
    %end;
    .thread T_19;
# The file index is used to find the file name in the following table.
:file_names 11;
    "N/A";
    "<interactive>";
    "gtest.v";
    "./GPR.v";
    "./alu.v";
    "./adder.v";
    "./instructionreg.v";
    "./memaddreg.v";
    "./outputRegister.v";
    "./programcounter.v";
    "./ram.v";
