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
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    unsigned char t16;
    int t17;
    int t18;
    unsigned char t19;
    char *t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4512);
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
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = (unsigned char)0;

LAB13:    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB26;

LAB27:    t2 = (unsigned char)0;

LAB28:    if (t2 != 0)
        goto LAB23;

LAB25:
LAB24:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t7 = (-(1));
    t3 = (t0 + 4592);
    t8 = (t3 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t7;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(63, ng0);
    t7 = (-(1));
    t1 = (t0 + 4656);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4720);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4784);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2472U);
    t8 = *((char **)t1);
    t7 = *((int *)t8);
    t1 = (t0 + 2792U);
    t9 = *((char **)t1);
    t15 = *((int *)t9);
    t16 = (t7 <= t15);
    if (t16 == 1)
        goto LAB17;

LAB18:    t14 = (unsigned char)0;

LAB19:    if (t14 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t2 = (t7 > 0);
    if (t2 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4784);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB15:    goto LAB9;

LAB11:    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)2);
    t2 = t13;
    goto LAB13;

LAB14:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2312U);
    t11 = *((char **)t1);
    t1 = (t0 + 2472U);
    t20 = *((char **)t1);
    t21 = *((int *)t20);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t1 = (t11 + t25);
    t26 = (t0 + 4848);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t1, 32U);
    xsi_driver_first_trans_fast_port(t26);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t15 = (t7 + 1);
    t1 = (t0 + 4592);
    t4 = (t1 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t15;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    t1 = (t0 + 2792U);
    t10 = *((char **)t1);
    t17 = *((int *)t10);
    t18 = (-(1));
    t19 = (t17 > t18);
    t14 = t19;
    goto LAB19;

LAB20:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4592);
    t4 = (t1 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

LAB23:    xsi_set_current_line(81, ng0);
    t7 = (8 - 2);
    t1 = (t0 + 8216);
    *((int *)t1) = t7;
    t8 = (t0 + 8220);
    *((int *)t8) = 0;
    t15 = t7;
    t17 = 0;

LAB29:    if (t15 >= t17)
        goto LAB30;

LAB32:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t7 = *((int *)t4);
    t15 = (t7 - 0);
    t23 = (t15 * 1);
    t24 = (32U * t23);
    t25 = (0U + t24);
    t1 = (t0 + 4912);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 32U);
    xsi_driver_first_trans_delta(t1, t25, 32U, 0LL);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t15 = (8 - 1);
    t2 = (t7 < t15);
    if (t2 != 0)
        goto LAB34;

LAB36:
LAB35:    goto LAB24;

LAB26:    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t12 = *((unsigned char *)t4);
    t13 = (t12 == (unsigned char)2);
    t2 = t13;
    goto LAB28;

LAB30:    xsi_set_current_line(82, ng0);
    t9 = (t0 + 2312U);
    t10 = *((char **)t9);
    t9 = (t0 + 8216);
    t18 = *((int *)t9);
    t21 = (t18 - 0);
    t23 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, *((int *)t9));
    t24 = (32U * t23);
    t25 = (0 + t24);
    t11 = (t10 + t25);
    t20 = (t0 + 8216);
    t22 = *((int *)t20);
    t31 = (t22 + 1);
    t32 = (t31 - 0);
    t33 = (t32 * 1);
    t34 = (32U * t33);
    t35 = (0U + t34);
    t26 = (t0 + 4912);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t11, 32U);
    xsi_driver_first_trans_delta(t26, t35, 32U, 0LL);

LAB31:    t1 = (t0 + 8216);
    t15 = *((int *)t1);
    t3 = (t0 + 8220);
    t17 = *((int *)t3);
    if (t15 == t17)
        goto LAB32;

LAB33:    t7 = (t15 + -1);
    t15 = t7;
    t4 = (t0 + 8216);
    *((int *)t4) = t15;
    goto LAB29;

LAB34:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t17 = *((int *)t4);
    t18 = (t17 + 1);
    t1 = (t0 + 4656);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t18;
    xsi_driver_first_trans_fast(t1);
    goto LAB35;

}


extern void work_a_3392787015_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3392787015_3212880686_p_0};
	xsi_register_didat("work_a_3392787015_3212880686", "isim/memory_tb_isim_beh.exe.sim/work/a_3392787015_3212880686.didat");
	xsi_register_executes(pe);
}
