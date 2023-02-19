/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/ayroz/Desktop/four/shift_right/shift_right/shfit_right.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3719670752_3212880686_p_0(char *t0)
{
    char t5[16];
    char t8[16];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(20, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6787);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 6576U);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 25;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (25 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t4 = xsi_base_array_concat(t4, t5, t6, (char)97, t2, t7, (char)97, t1, t8, (char)101);
    t12 = (26U + 26U);
    t13 = (52U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 4184);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 52U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t18 = (t0 + 4056);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(52U, t12, 0);
    goto LAB6;

}

static void work_a_3719670752_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(21, ng0);

LAB3:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 6608U);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 6560U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t4);
    t7 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t1, t3, t2, t6);
    t8 = (t0 + 4248);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 52U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 4072);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3719670752_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned char t46;
    unsigned char t47;
    char *t48;
    char *t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned char t54;
    unsigned char t55;
    char *t56;
    char *t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned char t62;
    unsigned char t63;
    char *t64;
    char *t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned char t70;
    unsigned char t71;
    char *t72;
    char *t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned char t78;
    unsigned char t79;
    char *t80;
    char *t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned char t86;
    unsigned char t87;
    char *t88;
    char *t89;
    int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned char t94;
    unsigned char t95;
    char *t96;
    char *t97;
    int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned char t102;
    unsigned char t103;
    char *t104;
    char *t105;
    int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned char t110;
    unsigned char t111;
    char *t112;
    char *t113;
    int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned char t118;
    unsigned char t119;
    char *t120;
    char *t121;
    int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned char t126;
    unsigned char t127;
    char *t128;
    char *t129;
    int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned char t134;
    unsigned char t135;
    char *t136;
    char *t137;
    int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned char t142;
    unsigned char t143;
    char *t144;
    char *t145;
    int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned char t150;
    unsigned char t151;
    char *t152;
    char *t153;
    int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned char t158;
    unsigned char t159;
    char *t160;
    char *t161;
    int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned char t166;
    unsigned char t167;
    char *t168;
    char *t169;
    int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned char t174;
    unsigned char t175;
    char *t176;
    char *t177;
    int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned char t182;
    unsigned char t183;
    char *t184;
    char *t185;
    int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned char t190;
    unsigned char t191;
    char *t192;
    char *t193;
    int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned char t198;
    unsigned char t199;
    char *t200;
    char *t201;
    int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned char t206;
    unsigned char t207;
    char *t208;
    char *t209;
    int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned char t214;
    unsigned char t215;
    char *t216;
    char *t217;
    char *t218;
    char *t219;
    char *t220;
    char *t221;

LAB0:    xsi_set_current_line(22, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (25 - 51);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t10 = (24 - 51);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 1672U);
    t17 = *((char **)t16);
    t18 = (24 - 51);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t15, t22);
    t24 = (t0 + 1672U);
    t25 = *((char **)t24);
    t26 = (23 - 51);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t23, t30);
    t32 = (t0 + 1672U);
    t33 = *((char **)t32);
    t34 = (22 - 51);
    t35 = (t34 * -1);
    t36 = (1U * t35);
    t37 = (0 + t36);
    t32 = (t33 + t37);
    t38 = *((unsigned char *)t32);
    t39 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t31, t38);
    t40 = (t0 + 1672U);
    t41 = *((char **)t40);
    t42 = (21 - 51);
    t43 = (t42 * -1);
    t44 = (1U * t43);
    t45 = (0 + t44);
    t40 = (t41 + t45);
    t46 = *((unsigned char *)t40);
    t47 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t39, t46);
    t48 = (t0 + 1672U);
    t49 = *((char **)t48);
    t50 = (20 - 51);
    t51 = (t50 * -1);
    t52 = (1U * t51);
    t53 = (0 + t52);
    t48 = (t49 + t53);
    t54 = *((unsigned char *)t48);
    t55 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t47, t54);
    t56 = (t0 + 1672U);
    t57 = *((char **)t56);
    t58 = (19 - 51);
    t59 = (t58 * -1);
    t60 = (1U * t59);
    t61 = (0 + t60);
    t56 = (t57 + t61);
    t62 = *((unsigned char *)t56);
    t63 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t55, t62);
    t64 = (t0 + 1672U);
    t65 = *((char **)t64);
    t66 = (18 - 51);
    t67 = (t66 * -1);
    t68 = (1U * t67);
    t69 = (0 + t68);
    t64 = (t65 + t69);
    t70 = *((unsigned char *)t64);
    t71 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t63, t70);
    t72 = (t0 + 1672U);
    t73 = *((char **)t72);
    t74 = (17 - 51);
    t75 = (t74 * -1);
    t76 = (1U * t75);
    t77 = (0 + t76);
    t72 = (t73 + t77);
    t78 = *((unsigned char *)t72);
    t79 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t71, t78);
    t80 = (t0 + 1672U);
    t81 = *((char **)t80);
    t82 = (16 - 51);
    t83 = (t82 * -1);
    t84 = (1U * t83);
    t85 = (0 + t84);
    t80 = (t81 + t85);
    t86 = *((unsigned char *)t80);
    t87 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t79, t86);
    t88 = (t0 + 1672U);
    t89 = *((char **)t88);
    t90 = (15 - 51);
    t91 = (t90 * -1);
    t92 = (1U * t91);
    t93 = (0 + t92);
    t88 = (t89 + t93);
    t94 = *((unsigned char *)t88);
    t95 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t87, t94);
    t96 = (t0 + 1672U);
    t97 = *((char **)t96);
    t98 = (14 - 51);
    t99 = (t98 * -1);
    t100 = (1U * t99);
    t101 = (0 + t100);
    t96 = (t97 + t101);
    t102 = *((unsigned char *)t96);
    t103 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t95, t102);
    t104 = (t0 + 1672U);
    t105 = *((char **)t104);
    t106 = (13 - 51);
    t107 = (t106 * -1);
    t108 = (1U * t107);
    t109 = (0 + t108);
    t104 = (t105 + t109);
    t110 = *((unsigned char *)t104);
    t111 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t103, t110);
    t112 = (t0 + 1672U);
    t113 = *((char **)t112);
    t114 = (12 - 51);
    t115 = (t114 * -1);
    t116 = (1U * t115);
    t117 = (0 + t116);
    t112 = (t113 + t117);
    t118 = *((unsigned char *)t112);
    t119 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t111, t118);
    t120 = (t0 + 1672U);
    t121 = *((char **)t120);
    t122 = (11 - 51);
    t123 = (t122 * -1);
    t124 = (1U * t123);
    t125 = (0 + t124);
    t120 = (t121 + t125);
    t126 = *((unsigned char *)t120);
    t127 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t119, t126);
    t128 = (t0 + 1672U);
    t129 = *((char **)t128);
    t130 = (10 - 51);
    t131 = (t130 * -1);
    t132 = (1U * t131);
    t133 = (0 + t132);
    t128 = (t129 + t133);
    t134 = *((unsigned char *)t128);
    t135 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t127, t134);
    t136 = (t0 + 1672U);
    t137 = *((char **)t136);
    t138 = (9 - 51);
    t139 = (t138 * -1);
    t140 = (1U * t139);
    t141 = (0 + t140);
    t136 = (t137 + t141);
    t142 = *((unsigned char *)t136);
    t143 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t135, t142);
    t144 = (t0 + 1672U);
    t145 = *((char **)t144);
    t146 = (8 - 51);
    t147 = (t146 * -1);
    t148 = (1U * t147);
    t149 = (0 + t148);
    t144 = (t145 + t149);
    t150 = *((unsigned char *)t144);
    t151 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t143, t150);
    t152 = (t0 + 1672U);
    t153 = *((char **)t152);
    t154 = (7 - 51);
    t155 = (t154 * -1);
    t156 = (1U * t155);
    t157 = (0 + t156);
    t152 = (t153 + t157);
    t158 = *((unsigned char *)t152);
    t159 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t151, t158);
    t160 = (t0 + 1672U);
    t161 = *((char **)t160);
    t162 = (6 - 51);
    t163 = (t162 * -1);
    t164 = (1U * t163);
    t165 = (0 + t164);
    t160 = (t161 + t165);
    t166 = *((unsigned char *)t160);
    t167 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t159, t166);
    t168 = (t0 + 1672U);
    t169 = *((char **)t168);
    t170 = (5 - 51);
    t171 = (t170 * -1);
    t172 = (1U * t171);
    t173 = (0 + t172);
    t168 = (t169 + t173);
    t174 = *((unsigned char *)t168);
    t175 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t167, t174);
    t176 = (t0 + 1672U);
    t177 = *((char **)t176);
    t178 = (4 - 51);
    t179 = (t178 * -1);
    t180 = (1U * t179);
    t181 = (0 + t180);
    t176 = (t177 + t181);
    t182 = *((unsigned char *)t176);
    t183 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t175, t182);
    t184 = (t0 + 1672U);
    t185 = *((char **)t184);
    t186 = (3 - 51);
    t187 = (t186 * -1);
    t188 = (1U * t187);
    t189 = (0 + t188);
    t184 = (t185 + t189);
    t190 = *((unsigned char *)t184);
    t191 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t183, t190);
    t192 = (t0 + 1672U);
    t193 = *((char **)t192);
    t194 = (2 - 51);
    t195 = (t194 * -1);
    t196 = (1U * t195);
    t197 = (0 + t196);
    t192 = (t193 + t197);
    t198 = *((unsigned char *)t192);
    t199 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t191, t198);
    t200 = (t0 + 1672U);
    t201 = *((char **)t200);
    t202 = (1 - 51);
    t203 = (t202 * -1);
    t204 = (1U * t203);
    t205 = (0 + t204);
    t200 = (t201 + t205);
    t206 = *((unsigned char *)t200);
    t207 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t199, t206);
    t208 = (t0 + 1672U);
    t209 = *((char **)t208);
    t210 = (0 - 51);
    t211 = (t210 * -1);
    t212 = (1U * t211);
    t213 = (0 + t212);
    t208 = (t209 + t213);
    t214 = *((unsigned char *)t208);
    t215 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t207, t214);
    t216 = (t0 + 4312);
    t217 = (t216 + 56U);
    t218 = *((char **)t217);
    t219 = (t218 + 56U);
    t220 = *((char **)t219);
    *((unsigned char *)t220) = t215;
    xsi_driver_first_trans_fast(t216);

LAB2:    t221 = (t0 + 4088);
    *((int *)t221) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3719670752_3212880686_p_3(char *t0)
{
    char t9[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(23, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (51 - 51);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1832U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 51;
    t13 = (t12 + 4U);
    *((int *)t13) = 26;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (26 - 51);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t6 = xsi_base_array_concat(t6, t9, t10, (char)97, t1, t11, (char)99, t8, (char)101);
    t15 = (26U + 1U);
    t16 = (27U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 4376);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 27U);
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t21 = (t0 + 4104);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(27U, t15, 0);
    goto LAB6;

}


extern void work_a_3719670752_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3719670752_3212880686_p_0,(void *)work_a_3719670752_3212880686_p_1,(void *)work_a_3719670752_3212880686_p_2,(void *)work_a_3719670752_3212880686_p_3};
	xsi_register_didat("work_a_3719670752_3212880686", "isim/test1_isim_beh.exe.sim/work/a_3719670752_3212880686.didat");
	xsi_register_executes(pe);
}
