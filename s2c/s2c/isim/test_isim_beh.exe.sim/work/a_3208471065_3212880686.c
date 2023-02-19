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
static const char *ng0 = "G:/onlinelessons/computer architecture/VHDL/project_FPA/four/four/s2c/s2c/s2c.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3208471065_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(18, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 6032U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 3U);
    t7 = (4U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 3760);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 3648);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t6, 0);
    goto LAB6;

}

static void work_a_3208471065_3212880686_p_1(char *t0)
{
    char t1[16];
    char t2[16];
    char t5[16];
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(19, ng0);

LAB3:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 6032U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)99, (unsigned char)2, (char)97, t4, t7, (char)101);
    t8 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t2, t3, t5);
    t9 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t1, t8, t2, 1);
    t10 = (t1 + 12U);
    t11 = *((unsigned int *)t10);
    t12 = (1U * t11);
    t13 = (4U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t14 = (t0 + 3824);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 4U);
    xsi_driver_first_trans_fast(t14);

LAB2:    t19 = (t0 + 3664);
    *((int *)t19) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t12, 0);
    goto LAB6;

}

static void work_a_3208471065_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t10 = (t0 + 3888);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 4U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t16 = (t0 + 3680);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 3888);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_3208471065_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3208471065_3212880686_p_0,(void *)work_a_3208471065_3212880686_p_1,(void *)work_a_3208471065_3212880686_p_2};
	xsi_register_didat("work_a_3208471065_3212880686", "isim/test_isim_beh.exe.sim/work/a_3208471065_3212880686.didat");
	xsi_register_executes(pe);
}
