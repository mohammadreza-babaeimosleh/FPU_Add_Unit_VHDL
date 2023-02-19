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
static const char *ng0 = "C:/Users/ayroz/Desktop/four/shift_right/shift_right_ex3/shift_right_ex3.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );


static void work_a_1510891612_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(22, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6159);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 6044U);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 7;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (7 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t4 = xsi_base_array_concat(t4, t5, t6, (char)97, t2, t7, (char)97, t1, t8, (char)101);
    t12 = (8U + 8U);
    t13 = (16U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3760);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 16U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t18 = (t0 + 3648);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t12, 0);
    goto LAB6;

}

static void work_a_1510891612_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(23, ng0);

LAB3:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 6076U);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 6028U);
    t6 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t4);
    t7 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t1, t3, t2, t6);
    t8 = (t0 + 3824);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 16U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 3664);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1510891612_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(24, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3888);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3680);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1510891612_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1510891612_3212880686_p_0,(void *)work_a_1510891612_3212880686_p_1,(void *)work_a_1510891612_3212880686_p_2};
	xsi_register_didat("work_a_1510891612_3212880686", "isim/tb5_isim_beh.exe.sim/work/a_1510891612_3212880686.didat");
	xsi_register_executes(pe);
}
