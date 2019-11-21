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
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    int t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4232);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB17;

LAB19:
LAB18:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t7 = (8 - 1);
    t3 = (t0 + 2808U);
    t8 = *((char **)t3);
    t3 = (t8 + 0);
    *((int *)t3) = t7;
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2928U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t7 = *((int *)t4);
    t6 = (t7 > 0);
    if (t6 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2808U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t2 = (t7 == 0);
    if (t2 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2808U);
    t3 = *((char **)t1);
    t7 = *((int *)t3);
    t10 = (t7 - 1);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t10;

LAB15:    goto LAB9;

LAB11:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2688U);
    t8 = *((char **)t1);
    t1 = (t0 + 2808U);
    t9 = *((char **)t1);
    t10 = *((int *)t9);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t10);
    t13 = (32U * t12);
    t14 = (0 + t13);
    t1 = (t8 + t14);
    t15 = (t0 + 4376);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t1, 32U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB12;

LAB14:    xsi_set_current_line(73, ng0);
    t10 = (8 - 1);
    t1 = (t0 + 2808U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4312);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(80, ng0);
    t7 = (8 - 2);
    t1 = (t0 + 7512);
    *((int *)t1) = t7;
    t4 = (t0 + 7516);
    *((int *)t4) = 0;
    t10 = t7;
    t11 = 0;

LAB20:    if (t10 >= t11)
        goto LAB21;

LAB23:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 2688U);
    t4 = *((char **)t1);
    t1 = (t0 + 2928U);
    t8 = *((char **)t1);
    t7 = *((int *)t8);
    t10 = (t7 - 0);
    t12 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t7);
    t13 = (32U * t12);
    t14 = (0 + t13);
    t1 = (t4 + t14);
    memcpy(t1, t3, 32U);
    xsi_set_current_line(85, ng0);
    t7 = (8 - 1);
    t1 = (t0 + 2808U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = t7;
    goto LAB18;

LAB21:    xsi_set_current_line(81, ng0);
    t8 = (t0 + 2688U);
    t9 = *((char **)t8);
    t8 = (t0 + 7512);
    t20 = *((int *)t8);
    t21 = (t20 - 0);
    t12 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, *((int *)t8));
    t13 = (32U * t12);
    t14 = (0 + t13);
    t15 = (t9 + t14);
    t16 = (t0 + 2688U);
    t17 = *((char **)t16);
    t16 = (t0 + 7512);
    t22 = *((int *)t16);
    t23 = (t22 + 1);
    t24 = (t23 - 0);
    t25 = (t24 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t23);
    t26 = (32U * t25);
    t27 = (0 + t26);
    t18 = (t17 + t27);
    memcpy(t18, t15, 32U);

LAB22:    t1 = (t0 + 7512);
    t10 = *((int *)t1);
    t3 = (t0 + 7516);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB23;

LAB24:    t7 = (t10 + -1);
    t10 = t7;
    t4 = (t0 + 7512);
    *((int *)t4) = t10;
    goto LAB20;

}


extern void work_a_3392787015_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3392787015_3212880686_p_0};
	xsi_register_didat("work_a_3392787015_3212880686", "isim/memory_write_tb_isim_beh.exe.sim/work/a_3392787015_3212880686.didat");
	xsi_register_executes(pe);
}
