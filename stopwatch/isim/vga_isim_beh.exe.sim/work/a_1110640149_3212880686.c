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
static const char *ng0 = "C:/GitHub/StopWatch/stopwatch/vga.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1110640149_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 4136);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_1110640149_3212880686_p_1(char *t0)
{
    char t8[16];
    char t15[16];
    char t25[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1952U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4056);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 4200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4264);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 6488U);
    t4 = (t0 + 6550);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 9;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (9 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    t11 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t8);
    if (t11 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4392);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 6504U);
    t4 = (t0 + 6570);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 9;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (9 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    t11 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t8);
    if (t11 == 1)
        goto LAB14;

LAB15:    t2 = (unsigned char)0;

LAB16:    if (t2 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 6488U);
    t4 = (t0 + 6590);
    t6 = (t15 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 9;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (9 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t3, t1, t4, t15);
    t12 = (t8 + 12U);
    t10 = *((unsigned int *)t12);
    t24 = (1U * t10);
    t2 = (10U != t24);
    if (t2 == 1)
        goto LAB17;

LAB18:    t13 = (t0 + 4520);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    t17 = (t16 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t7, 10U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 6488U);
    t4 = (t0 + 6600);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 9;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (9 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t8);
    if (t2 != 0)
        goto LAB19;

LAB21:
LAB20:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 6504U);
    t4 = (t0 + 6630);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 9;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (9 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t8);
    if (t2 != 0)
        goto LAB24;

LAB26:
LAB25:    goto LAB3;

LAB5:    xsi_set_current_line(68, ng0);
    t17 = (t0 + 4392);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB6;

LAB8:    t7 = (t0 + 2152U);
    t12 = *((char **)t7);
    t7 = (t0 + 6488U);
    t13 = (t0 + 6560);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 9;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (9 - 0);
    t10 = (t18 * 1);
    t10 = (t10 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t10;
    t19 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t12, t7, t13, t15);
    t2 = t19;
    goto LAB10;

LAB11:    xsi_set_current_line(75, ng0);
    t17 = (t0 + 4456);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB12;

LAB14:    t7 = (t0 + 2312U);
    t12 = *((char **)t7);
    t7 = (t0 + 6504U);
    t13 = (t0 + 6580);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 9;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (9 - 0);
    t10 = (t18 * 1);
    t10 = (t10 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t10;
    t19 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t12, t7, t13, t15);
    t2 = t19;
    goto LAB16;

LAB17:    xsi_size_not_matching(10U, t24, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(83, ng0);
    t7 = (t0 + 2312U);
    t12 = *((char **)t7);
    t7 = (t0 + 6504U);
    t13 = (t0 + 6610);
    t16 = (t25 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 9;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (9 - 0);
    t10 = (t18 * 1);
    t10 = (t10 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t10;
    t17 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t15, t12, t7, t13, t25);
    t20 = (t15 + 12U);
    t10 = *((unsigned int *)t20);
    t24 = (1U * t10);
    t11 = (10U != t24);
    if (t11 == 1)
        goto LAB22;

LAB23:    t21 = (t0 + 4584);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t26 = (t23 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 10U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 6620);
    t4 = (t0 + 4520);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    memcpy(t12, t1, 10U);
    xsi_driver_first_trans_fast(t4);
    goto LAB20;

LAB22:    xsi_size_not_matching(10U, t24, 0);
    goto LAB23;

LAB24:    xsi_set_current_line(88, ng0);
    t7 = (t0 + 6640);
    t13 = (t0 + 4584);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    t17 = (t16 + 56U);
    t20 = *((char **)t17);
    memcpy(t20, t7, 10U);
    xsi_driver_first_trans_fast(t13);
    goto LAB25;

}


extern void work_a_1110640149_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1110640149_3212880686_p_0,(void *)work_a_1110640149_3212880686_p_1};
	xsi_register_didat("work_a_1110640149_3212880686", "isim/vga_isim_beh.exe.sim/work/a_1110640149_3212880686.didat");
	xsi_register_executes(pe);
}
