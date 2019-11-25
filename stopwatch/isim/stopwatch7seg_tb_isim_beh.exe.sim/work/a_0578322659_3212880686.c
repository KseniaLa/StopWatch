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
extern char *IEEE_P_2592010699;
static const char *ng1 = "Function get_segment_view_of_digit ended without a return statement";
static const char *ng2 = "Function get_segment_view_of_digit_with_point ended without a return statement";
static const char *ng3 = "Function get_led_number ended without a return statement";
static const char *ng4 = "D:/github/POCP/StopWatch/stopwatch/sevensegm.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


char *work_a_0578322659_3212880686_sub_2003999352_3057020925(char *t1, char *t2, int t3)
{
    char t4[128];
    char t5[8];
    char t6[16];
    char t13[8];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 7);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t4 + 4U);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t8 + 88U);
    *((char **)t12) = t11;
    t14 = (t8 + 56U);
    *((char **)t14) = t13;
    xsi_type_set_default_value(t11, t13, t6);
    t15 = (t8 + 64U);
    *((char **)t15) = t6;
    t16 = (t8 + 80U);
    *((unsigned int *)t16) = 8U;
    t17 = (t5 + 4U);
    *((int *)t17) = t3;
    if (t3 == 0)
        goto LAB3;

LAB14:    if (t3 == 1)
        goto LAB4;

LAB15:    if (t3 == 2)
        goto LAB5;

LAB16:    if (t3 == 3)
        goto LAB6;

LAB17:    if (t3 == 4)
        goto LAB7;

LAB18:    if (t3 == 5)
        goto LAB8;

LAB19:    if (t3 == 6)
        goto LAB9;

LAB20:    if (t3 == 7)
        goto LAB10;

LAB21:    if (t3 == 8)
        goto LAB11;

LAB22:    if (t3 == 9)
        goto LAB12;

LAB23:
LAB13:    t7 = (t1 + 6771);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;

LAB1:    return t0;
LAB2:    xsi_error(ng1);
    t0 = 0;
    goto LAB1;

LAB3:    t18 = (t1 + 6691);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t18, 8U);
    t20 = (t2 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 1;
    t21 = (t20 + 4U);
    *((int *)t21) = 8;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (8 - 1);
    t10 = (t22 * 1);
    t10 = (t10 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t10;
    goto LAB1;

LAB4:    t7 = (t1 + 6699);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB5:    t7 = (t1 + 6707);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB6:    t7 = (t1 + 6715);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB7:    t7 = (t1 + 6723);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB8:    t7 = (t1 + 6731);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB9:    t7 = (t1 + 6739);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB10:    t7 = (t1 + 6747);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB11:    t7 = (t1 + 6755);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB12:    t7 = (t1 + 6763);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB24:;
LAB25:    goto LAB2;

LAB26:    goto LAB2;

LAB27:    goto LAB2;

LAB28:    goto LAB2;

LAB29:    goto LAB2;

LAB30:    goto LAB2;

LAB31:    goto LAB2;

LAB32:    goto LAB2;

LAB33:    goto LAB2;

LAB34:    goto LAB2;

LAB35:    goto LAB2;

}

char *work_a_0578322659_3212880686_sub_2539942684_3057020925(char *t1, char *t2, int t3)
{
    char t4[128];
    char t5[8];
    char t6[16];
    char t13[8];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 7);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t4 + 4U);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t8 + 88U);
    *((char **)t12) = t11;
    t14 = (t8 + 56U);
    *((char **)t14) = t13;
    xsi_type_set_default_value(t11, t13, t6);
    t15 = (t8 + 64U);
    *((char **)t15) = t6;
    t16 = (t8 + 80U);
    *((unsigned int *)t16) = 8U;
    t17 = (t5 + 4U);
    *((int *)t17) = t3;
    if (t3 == 0)
        goto LAB3;

LAB14:    if (t3 == 1)
        goto LAB4;

LAB15:    if (t3 == 2)
        goto LAB5;

LAB16:    if (t3 == 3)
        goto LAB6;

LAB17:    if (t3 == 4)
        goto LAB7;

LAB18:    if (t3 == 5)
        goto LAB8;

LAB19:    if (t3 == 6)
        goto LAB9;

LAB20:    if (t3 == 7)
        goto LAB10;

LAB21:    if (t3 == 8)
        goto LAB11;

LAB22:    if (t3 == 9)
        goto LAB12;

LAB23:
LAB13:    t7 = (t1 + 6859);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;

LAB1:    return t0;
LAB2:    xsi_error(ng2);
    t0 = 0;
    goto LAB1;

LAB3:    t18 = (t1 + 6779);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t18, 8U);
    t20 = (t2 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 1;
    t21 = (t20 + 4U);
    *((int *)t21) = 8;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (8 - 1);
    t10 = (t22 * 1);
    t10 = (t10 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t10;
    goto LAB1;

LAB4:    t7 = (t1 + 6787);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB5:    t7 = (t1 + 6795);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB6:    t7 = (t1 + 6803);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB7:    t7 = (t1 + 6811);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB8:    t7 = (t1 + 6819);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB9:    t7 = (t1 + 6827);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB10:    t7 = (t1 + 6835);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB11:    t7 = (t1 + 6843);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB12:    t7 = (t1 + 6851);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t12 = (t2 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 1;
    t14 = (t12 + 4U);
    *((int *)t14) = 8;
    t14 = (t12 + 8U);
    *((int *)t14) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t10;
    goto LAB1;

LAB24:;
LAB25:    goto LAB2;

LAB26:    goto LAB2;

LAB27:    goto LAB2;

LAB28:    goto LAB2;

LAB29:    goto LAB2;

LAB30:    goto LAB2;

LAB31:    goto LAB2;

LAB32:    goto LAB2;

LAB33:    goto LAB2;

LAB34:    goto LAB2;

LAB35:    goto LAB2;

}

char *work_a_0578322659_3212880686_sub_802498918_3057020925(char *t1, char *t2, char *t3)
{
    char t4[128];
    char t5[24];
    char t6[16];
    char t11[16];
    char t16[8];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    char *t49;
    char *t50;
    int t51;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 2;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 2);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t11 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 7;
    t12 = (t8 + 4U);
    *((int *)t12) = 0;
    t12 = (t8 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 7);
    t10 = (t13 * -1);
    t10 = (t10 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t10;
    t12 = (t4 + 4U);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t12 + 88U);
    *((char **)t15) = t14;
    t17 = (t12 + 56U);
    *((char **)t17) = t16;
    xsi_type_set_default_value(t14, t16, t11);
    t18 = (t12 + 64U);
    *((char **)t18) = t11;
    t19 = (t12 + 80U);
    *((unsigned int *)t19) = 8U;
    t20 = (t5 + 4U);
    t21 = (t3 != 0);
    if (t21 == 1)
        goto LAB3;

LAB2:    t22 = (t5 + 12U);
    *((char **)t22) = t6;
    t23 = (t1 + 6867);
    t25 = xsi_mem_cmp(t23, t3, 3U);
    if (t25 == 1)
        goto LAB5;

LAB14:    t26 = (t1 + 6870);
    t28 = xsi_mem_cmp(t26, t3, 3U);
    if (t28 == 1)
        goto LAB6;

LAB15:    t29 = (t1 + 6873);
    t31 = xsi_mem_cmp(t29, t3, 3U);
    if (t31 == 1)
        goto LAB7;

LAB16:    t32 = (t1 + 6876);
    t34 = xsi_mem_cmp(t32, t3, 3U);
    if (t34 == 1)
        goto LAB8;

LAB17:    t35 = (t1 + 6879);
    t37 = xsi_mem_cmp(t35, t3, 3U);
    if (t37 == 1)
        goto LAB9;

LAB18:    t38 = (t1 + 6882);
    t40 = xsi_mem_cmp(t38, t3, 3U);
    if (t40 == 1)
        goto LAB10;

LAB19:    t41 = (t1 + 6885);
    t43 = xsi_mem_cmp(t41, t3, 3U);
    if (t43 == 1)
        goto LAB11;

LAB20:    t44 = (t1 + 6888);
    t46 = xsi_mem_cmp(t44, t3, 3U);
    if (t46 == 1)
        goto LAB12;

LAB21:
LAB13:    t7 = (t1 + 6955);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t10;

LAB1:    return t0;
LAB3:    *((char **)t20) = t3;
    goto LAB2;

LAB4:    xsi_error(ng3);
    t0 = 0;
    goto LAB1;

LAB5:    t47 = (t1 + 6891);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t47, 8U);
    t49 = (t2 + 0U);
    t50 = (t49 + 0U);
    *((int *)t50) = 1;
    t50 = (t49 + 4U);
    *((int *)t50) = 8;
    t50 = (t49 + 8U);
    *((int *)t50) = 1;
    t51 = (8 - 1);
    t10 = (t51 * 1);
    t10 = (t10 + 1);
    t50 = (t49 + 12U);
    *((unsigned int *)t50) = t10;
    goto LAB1;

LAB6:    t7 = (t1 + 6899);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t10;
    goto LAB1;

LAB7:    t7 = (t1 + 6907);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t10;
    goto LAB1;

LAB8:    t7 = (t1 + 6915);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t10;
    goto LAB1;

LAB9:    t7 = (t1 + 6923);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t10;
    goto LAB1;

LAB10:    t7 = (t1 + 6931);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t10;
    goto LAB1;

LAB11:    t7 = (t1 + 6939);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t10;
    goto LAB1;

LAB12:    t7 = (t1 + 6947);
    t0 = xsi_get_transient_memory(8U);
    memcpy(t0, t7, 8U);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t9 = (8 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t10;
    goto LAB1;

LAB22:;
LAB23:    goto LAB4;

LAB24:    goto LAB4;

LAB25:    goto LAB4;

LAB26:    goto LAB4;

LAB27:    goto LAB4;

LAB28:    goto LAB4;

LAB29:    goto LAB4;

LAB30:    goto LAB4;

LAB31:    goto LAB4;

}

static void work_a_0578322659_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(145, ng4);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(147, ng4);
    t4 = (t0 + 2792U);
    t5 = *((char **)t4);
    t4 = work_a_0578322659_3212880686_sub_802498918_3057020925(t0, t3, t5);
    t6 = (t3 + 12U);
    t7 = *((unsigned int *)t6);
    t7 = (t7 * 1U);
    t8 = (8U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 4352);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(149, ng4);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t1 = (t0 + 6963);
    t14 = xsi_mem_cmp(t1, t4, 3U);
    if (t14 == 1)
        goto LAB8;

LAB17:    t6 = (t0 + 6966);
    t15 = xsi_mem_cmp(t6, t4, 3U);
    if (t15 == 1)
        goto LAB9;

LAB18:    t10 = (t0 + 6969);
    t16 = xsi_mem_cmp(t10, t4, 3U);
    if (t16 == 1)
        goto LAB10;

LAB19:    t12 = (t0 + 6972);
    t17 = xsi_mem_cmp(t12, t4, 3U);
    if (t17 == 1)
        goto LAB11;

LAB20:    t18 = (t0 + 6975);
    t20 = xsi_mem_cmp(t18, t4, 3U);
    if (t20 == 1)
        goto LAB12;

LAB21:    t21 = (t0 + 6978);
    t23 = xsi_mem_cmp(t21, t4, 3U);
    if (t23 == 1)
        goto LAB13;

LAB22:    t24 = (t0 + 6981);
    t26 = xsi_mem_cmp(t24, t4, 3U);
    if (t26 == 1)
        goto LAB14;

LAB23:    t27 = (t0 + 6984);
    t29 = xsi_mem_cmp(t27, t4, 3U);
    if (t29 == 1)
        goto LAB15;

LAB24:
LAB16:    xsi_set_current_line(167, ng4);

LAB7:    xsi_set_current_line(169, ng4);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t1 = (t0 + 6628U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t3, t4, t1, 1);
    t6 = (t0 + 4480);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t5, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_size_not_matching(8U, t7, 0);
    goto LAB6;

LAB8:    xsi_set_current_line(151, ng4);
    t30 = (t0 + 1192U);
    t31 = *((char **)t30);
    t32 = *((int *)t31);
    t30 = work_a_0578322659_3212880686_sub_2003999352_3057020925(t0, t3, t32);
    t33 = (t3 + 12U);
    t7 = *((unsigned int *)t33);
    t7 = (t7 * 1U);
    t2 = (8U != t7);
    if (t2 == 1)
        goto LAB26;

LAB27:    t34 = (t0 + 4416);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t30, 8U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB7;

LAB9:    xsi_set_current_line(153, ng4);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t1 = work_a_0578322659_3212880686_sub_2539942684_3057020925(t0, t3, t14);
    t5 = (t3 + 12U);
    t7 = *((unsigned int *)t5);
    t7 = (t7 * 1U);
    t2 = (8U != t7);
    if (t2 == 1)
        goto LAB28;

LAB29:    t6 = (t0 + 4416);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB7;

LAB10:    xsi_set_current_line(155, ng4);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t1 = work_a_0578322659_3212880686_sub_2003999352_3057020925(t0, t3, t14);
    t5 = (t3 + 12U);
    t7 = *((unsigned int *)t5);
    t7 = (t7 * 1U);
    t2 = (8U != t7);
    if (t2 == 1)
        goto LAB30;

LAB31:    t6 = (t0 + 4416);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB7;

LAB11:    xsi_set_current_line(157, ng4);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t1 = work_a_0578322659_3212880686_sub_2539942684_3057020925(t0, t3, t14);
    t5 = (t3 + 12U);
    t7 = *((unsigned int *)t5);
    t7 = (t7 * 1U);
    t2 = (8U != t7);
    if (t2 == 1)
        goto LAB32;

LAB33:    t6 = (t0 + 4416);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB7;

LAB12:    xsi_set_current_line(159, ng4);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t1 = work_a_0578322659_3212880686_sub_2003999352_3057020925(t0, t3, t14);
    t5 = (t3 + 12U);
    t7 = *((unsigned int *)t5);
    t7 = (t7 * 1U);
    t2 = (8U != t7);
    if (t2 == 1)
        goto LAB34;

LAB35:    t6 = (t0 + 4416);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB7;

LAB13:    xsi_set_current_line(161, ng4);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t1 = work_a_0578322659_3212880686_sub_2539942684_3057020925(t0, t3, t14);
    t5 = (t3 + 12U);
    t7 = *((unsigned int *)t5);
    t7 = (t7 * 1U);
    t2 = (8U != t7);
    if (t2 == 1)
        goto LAB36;

LAB37:    t6 = (t0 + 4416);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB7;

LAB14:    xsi_set_current_line(163, ng4);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t1 = work_a_0578322659_3212880686_sub_2003999352_3057020925(t0, t3, t14);
    t5 = (t3 + 12U);
    t7 = *((unsigned int *)t5);
    t7 = (t7 * 1U);
    t2 = (8U != t7);
    if (t2 == 1)
        goto LAB38;

LAB39:    t6 = (t0 + 4416);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB7;

LAB15:    xsi_set_current_line(165, ng4);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t1 = work_a_0578322659_3212880686_sub_2003999352_3057020925(t0, t3, t14);
    t5 = (t3 + 12U);
    t7 = *((unsigned int *)t5);
    t7 = (t7 * 1U);
    t2 = (8U != t7);
    if (t2 == 1)
        goto LAB40;

LAB41:    t6 = (t0 + 4416);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB7;

LAB25:;
LAB26:    xsi_size_not_matching(8U, t7, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(8U, t7, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(8U, t7, 0);
    goto LAB31;

LAB32:    xsi_size_not_matching(8U, t7, 0);
    goto LAB33;

LAB34:    xsi_size_not_matching(8U, t7, 0);
    goto LAB35;

LAB36:    xsi_size_not_matching(8U, t7, 0);
    goto LAB37;

LAB38:    xsi_size_not_matching(8U, t7, 0);
    goto LAB39;

LAB40:    xsi_size_not_matching(8U, t7, 0);
    goto LAB41;

}


extern void work_a_0578322659_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0578322659_3212880686_p_0};
	static char *se[] = {(void *)work_a_0578322659_3212880686_sub_2003999352_3057020925,(void *)work_a_0578322659_3212880686_sub_2539942684_3057020925,(void *)work_a_0578322659_3212880686_sub_802498918_3057020925};
	xsi_register_didat("work_a_0578322659_3212880686", "isim/stopwatch7seg_tb_isim_beh.exe.sim/work/a_0578322659_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
