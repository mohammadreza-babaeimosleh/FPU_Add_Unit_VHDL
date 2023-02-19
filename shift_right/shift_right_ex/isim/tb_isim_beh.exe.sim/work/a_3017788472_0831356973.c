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
static const char *ng0 = "C:/Users/ayroz/Desktop/four/shift_right/shift_right_ex/shift_right_ex.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3017788472_0831356973_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned char t15;
    char *t16;
    int t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3896);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t3 = (t0 + 6521);
    *((int *)t3) = 0;
    t4 = (t0 + 6525);
    *((int *)t4) = 2;
    t5 = 0;
    t6 = 2;

LAB5:    if (t5 <= t6)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(25, ng0);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6521);
    t9 = *((int *)t7);
    t10 = (t9 - 3);
    t11 = (t10 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t7));
    t12 = (1U * t11);
    t13 = (0 + t12);
    t14 = (t8 + t13);
    t15 = *((unsigned char *)t14);
    t16 = (t0 + 6521);
    t17 = *((int *)t16);
    t18 = (t17 + 1);
    t19 = (t18 - 3);
    t20 = (t19 * -1);
    t21 = (1 * t20);
    t22 = (0U + t21);
    t23 = (t0 + 4024);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t15;
    xsi_driver_first_trans_delta(t23, t22, 1, 0LL);

LAB7:    t1 = (t0 + 6521);
    t5 = *((int *)t1);
    t3 = (t0 + 6525);
    t6 = *((int *)t3);
    if (t5 == t6)
        goto LAB8;

LAB9:    t9 = (t5 + 1);
    t5 = t9;
    t4 = (t0 + 6521);
    *((int *)t4) = t5;
    goto LAB5;

}

static void work_a_3017788472_0831356973_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3912);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = (0 - 3);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    t10 = (t0 + 4088);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_delta(t10, 2U, 1, 0LL);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t5 = (1 - 3);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4088);
    t10 = (t4 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t2;
    xsi_driver_first_trans_delta(t4, 1U, 1, 0LL);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t5 = (2 - 3);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4088);
    t10 = (t4 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t2;
    xsi_driver_first_trans_delta(t4, 0U, 1, 0LL);
    goto LAB3;

}

static void work_a_3017788472_0831356973_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(40, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3928);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3017788472_0831356973_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4216);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3944);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3017788472_0831356973_init()
{
	static char *pe[] = {(void *)work_a_3017788472_0831356973_p_0,(void *)work_a_3017788472_0831356973_p_1,(void *)work_a_3017788472_0831356973_p_2,(void *)work_a_3017788472_0831356973_p_3};
	xsi_register_didat("work_a_3017788472_0831356973", "isim/tb_isim_beh.exe.sim/work/a_3017788472_0831356973.didat");
	xsi_register_executes(pe);
}
