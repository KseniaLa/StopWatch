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
static const char *ng0 = "C:/GitHub/StopWatch/stopwatch/memory_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_2423089007_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    int t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned char t17;
    char *t18;
    int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 3832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (2 * t4);
    t2 = (t0 + 3640);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(99, ng0);
    t6 = (32U - 2);
    t2 = (t0 + 7272);
    *((int *)t2) = t6;
    t3 = (t0 + 7276);
    *((int *)t3) = 0;
    t7 = t6;
    t8 = 0;

LAB8:    if (t7 >= t8)
        goto LAB9;

LAB11:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t17 = *((unsigned char *)t3);
    t2 = (t0 + 4744);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t16 = (t10 + 56U);
    t18 = *((char **)t16);
    *((unsigned char *)t18) = t17;
    xsi_driver_first_trans_delta(t2, 31U, 1, 0LL);
    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(100, ng0);
    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t9 = (t0 + 7272);
    t11 = *((int *)t9);
    t12 = (t11 - 31);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t9));
    t14 = (1U * t13);
    t15 = (0 + t14);
    t16 = (t10 + t15);
    t17 = *((unsigned char *)t16);
    t18 = (t0 + 7272);
    t19 = *((int *)t18);
    t20 = (t19 + 1);
    t21 = (t20 - 31);
    t22 = (t21 * -1);
    t23 = (1 * t22);
    t24 = (0U + t23);
    t25 = (t0 + 4744);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = t17;
    xsi_driver_first_trans_delta(t25, t24, 1, 0LL);

LAB10:    t2 = (t0 + 7272);
    t7 = *((int *)t2);
    t3 = (t0 + 7276);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB11;

LAB12:    t6 = (t7 + -1);
    t7 = t6;
    t9 = (t0 + 7272);
    *((int *)t9) = t7;
    goto LAB8;

}

static void work_a_2423089007_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(105, ng0);

LAB3:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t1 = (t0 + 4808);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_delta(t1, 0U, 1, t3);
    t11 = (t0 + 4808);
    xsi_driver_intertial_reject(t11, t3, t3);

LAB2:    t12 = (t0 + 4648);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2423089007_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    int64 t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(106, ng0);

LAB3:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t4 = (64 * t3);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t6);
    t1 = (t0 + 4872);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, t4);
    t12 = (t0 + 4872);
    xsi_driver_intertial_reject(t12, t4, t4);

LAB2:    t13 = (t0 + 4664);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2423089007_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2423089007_2372691052_p_0,(void *)work_a_2423089007_2372691052_p_1,(void *)work_a_2423089007_2372691052_p_2};
	xsi_register_didat("work_a_2423089007_2372691052", "isim/memory_tb_isim_beh.exe.sim/work/a_2423089007_2372691052.didat");
	xsi_register_executes(pe);
}
