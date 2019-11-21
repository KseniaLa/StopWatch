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
static const char *ng0 = "D:/github/POCP/StopWatch/stopwatch/memory.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3392787015_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    unsigned char t11;
    int t12;
    int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB20;

LAB22:
LAB21:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t7 = (-(1));
    t3 = (t0 + 2808U);
    t8 = *((char **)t3);
    t3 = (t8 + 0);
    *((int *)t3) = t7;
    xsi_set_current_line(63, ng0);
    t7 = (-(1));
    t1 = (t0 + 3048U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = t7;
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2928U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4432);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t7 = *((int *)t4);
    t1 = (t0 + 3048U);
    t8 = *((char **)t1);
    t10 = *((int *)t8);
    t11 = (t7 <= t10);
    if (t11 == 1)
        goto LAB14;

LAB15:    t6 = (unsigned char)0;

LAB16:    if (t6 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2808U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t2 = (t7 > 0);
    if (t2 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4432);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2688U);
    t15 = *((char **)t1);
    t1 = (t0 + 2808U);
    t16 = *((char **)t1);
    t17 = *((int *)t16);
    t18 = (t17 - 0);
    t19 = (t18 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t17);
    t20 = (32U * t19);
    t21 = (0 + t20);
    t1 = (t15 + t21);
    t22 = (t0 + 4496);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t1, 32U);
    xsi_driver_first_trans_fast_port(t22);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2808U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t10 = (t7 + 1);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t10;
    goto LAB12;

LAB14:    t1 = (t0 + 3048U);
    t9 = *((char **)t1);
    t12 = *((int *)t9);
    t13 = (-(1));
    t14 = (t12 > t13);
    t6 = t14;
    goto LAB16;

LAB17:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    goto LAB18;

LAB20:    xsi_set_current_line(81, ng0);
    t7 = (8 - 2);
    t1 = (t0 + 7808);
    *((int *)t1) = t7;
    t4 = (t0 + 7812);
    *((int *)t4) = 0;
    t10 = t7;
    t12 = 0;

LAB23:    if (t10 >= t12)
        goto LAB24;

LAB26:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 2688U);
    t4 = *((char **)t1);
    t1 = (t0 + 2928U);
    t8 = *((char **)t1);
    t7 = *((int *)t8);
    t10 = (t7 - 0);
    t19 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t7);
    t20 = (32U * t19);
    t21 = (0 + t20);
    t1 = (t4 + t21);
    memcpy(t1, t3, 32U);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3048U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t10 = (8 - 1);
    t2 = (t7 < t10);
    if (t2 != 0)
        goto LAB28;

LAB30:
LAB29:    goto LAB21;

LAB24:    xsi_set_current_line(82, ng0);
    t8 = (t0 + 2688U);
    t9 = *((char **)t8);
    t8 = (t0 + 7808);
    t13 = *((int *)t8);
    t17 = (t13 - 0);
    t19 = (t17 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, *((int *)t8));
    t20 = (32U * t19);
    t21 = (0 + t20);
    t15 = (t9 + t21);
    t16 = (t0 + 2688U);
    t22 = *((char **)t16);
    t16 = (t0 + 7808);
    t18 = *((int *)t16);
    t27 = (t18 + 1);
    t28 = (t27 - 0);
    t29 = (t28 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t27);
    t30 = (32U * t29);
    t31 = (0 + t30);
    t23 = (t22 + t31);
    memcpy(t23, t15, 32U);

LAB25:    t1 = (t0 + 7808);
    t10 = *((int *)t1);
    t3 = (t0 + 7812);
    t12 = *((int *)t3);
    if (t10 == t12)
        goto LAB26;

LAB27:    t7 = (t10 + -1);
    t10 = t7;
    t4 = (t0 + 7808);
    *((int *)t4) = t10;
    goto LAB23;

LAB28:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3048U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t13 = (t12 + 1);
    t1 = (t0 + 3048U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = t13;
    goto LAB29;

}


extern void work_a_3392787015_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3392787015_3212880686_p_0};
	xsi_register_didat("work_a_3392787015_3212880686", "isim/memory_tb_isim_beh.exe.sim/work/a_3392787015_3212880686.didat");
	xsi_register_executes(pe);
}
