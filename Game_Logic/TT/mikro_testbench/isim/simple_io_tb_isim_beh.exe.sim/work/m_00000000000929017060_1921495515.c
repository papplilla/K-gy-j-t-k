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
static const char *ng0 = "C:/mikro_testbench/simple_io_tb.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {8U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5570560U, 0U};
static unsigned int ng7[] = {1U, 0U};
static unsigned int ng8[] = {5U, 0U};



static int sp_bus_write(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(93, ng0);

LAB5:    xsi_set_current_line(94, ng0);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    xsi_process_wait(t6, 10000LL);
    *((char **)t3) = &&LAB6;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(94, ng0);
    t7 = (t1 + 5992);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t1 + 5192);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 4, 0LL);
    xsi_set_current_line(95, ng0);
    t4 = (t1 + 6152);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 4872);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);
    xsi_set_current_line(96, ng0);
    t4 = (t1 + 6312);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 4712);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(97, ng0);

LAB7:    t4 = (t1 + 2232U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB9;

LAB8:    t6 = (t2 + 88U);
    t7 = *((char **)t6);
    t8 = (t7 + 0U);
    xsi_wp_set_status(t8, 1);
    t9 = (t2 + 48U);
    *((char **)t9) = &&LAB7;
    goto LAB1;

LAB9:    t10 = (t2 + 88U);
    t16 = *((char **)t10);
    t17 = (t16 + 0U);
    xsi_wp_set_status(t17, 0);
    xsi_set_current_line(98, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 10000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(98, ng0);
    t6 = ((char*)((ng1)));
    t7 = (t1 + 5192);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);
    xsi_set_current_line(99, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4872);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(100, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4712);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB4;

}

static int sp_bus_read(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 1280);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(109, ng0);

LAB5:    xsi_set_current_line(110, ng0);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    xsi_process_wait(t6, 10000LL);
    *((char **)t3) = &&LAB6;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    xsi_set_current_line(110, ng0);
    t7 = (t1 + 6472);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t1 + 5032);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 4, 0LL);
    xsi_set_current_line(111, ng0);
    t4 = (t1 + 6632);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t1 + 4872);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);
    xsi_set_current_line(112, ng0);

LAB7:    t4 = (t1 + 2072U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (~(t11));
    t13 = *((unsigned int *)t5);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB9;

LAB8:    t6 = (t2 + 88U);
    t7 = *((char **)t6);
    t8 = (t7 + 0U);
    xsi_wp_set_status(t8, 1);
    t9 = (t2 + 48U);
    *((char **)t9) = &&LAB7;
    goto LAB1;

LAB9:    t10 = (t2 + 88U);
    t16 = *((char **)t10);
    t17 = (t16 + 0U);
    xsi_wp_set_status(t17, 0);
    xsi_set_current_line(113, ng0);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    xsi_process_wait(t5, 10000LL);
    *((char **)t3) = &&LAB10;
    t0 = 1;
    goto LAB1;

LAB10:    xsi_set_current_line(113, ng0);
    t6 = ((char*)((ng1)));
    t7 = (t1 + 5032);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);
    xsi_set_current_line(114, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 4872);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    goto LAB4;

}

static void Initial_122_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(122, ng0);

LAB2:    xsi_set_current_line(123, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 4392);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 4552);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 4712);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(127, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 4872);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(128, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 5032);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(129, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 5192);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);

LAB1:    return;
}

static void Always_136_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 7800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 7608);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(136, ng0);
    t4 = (t0 + 4392);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 4392);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Initial_142_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 8048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(142, ng0);

LAB4:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 7856);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(144, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 4552);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 7856);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(146, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 5832);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng4)));
    t3 = ((char*)((ng5)));
    t4 = ((char*)((ng6)));
    t5 = (t0 + 7856);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 5992);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 4);
    t9 = (t0 + 6152);
    xsi_vlogvar_assign_value(t9, t3, 0, 0, 4);
    t10 = (t0 + 6312);
    xsi_vlogvar_assign_value(t10, t4, 0, 0, 32);

LAB9:    t11 = (t0 + 7952);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB11:    if (t19 != 0)
        goto LAB12;

LAB7:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB8:    t20 = (t0 + 7952);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 7856);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng4)));
    t3 = ((char*)((ng7)));
    t4 = ((char*)((ng8)));
    t5 = (t0 + 7856);
    t6 = (t0 + 848);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 5992);
    xsi_vlogvar_assign_value(t8, t2, 0, 0, 4);
    t9 = (t0 + 6152);
    xsi_vlogvar_assign_value(t9, t3, 0, 0, 4);
    t10 = (t0 + 6312);
    xsi_vlogvar_assign_value(t10, t4, 0, 0, 32);

LAB15:    t11 = (t0 + 7952);
    t12 = *((char **)t11);
    t13 = (t12 + 80U);
    t14 = *((char **)t13);
    t15 = (t14 + 272U);
    t16 = *((char **)t15);
    t17 = (t16 + 0U);
    t18 = *((char **)t17);
    t19 = ((int  (*)(char *, char *))t18)(t0, t12);

LAB17:    if (t19 != 0)
        goto LAB18;

LAB13:    t12 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t12);

LAB14:    t20 = (t0 + 7952);
    t21 = *((char **)t20);
    t20 = (t0 + 848);
    t22 = (t0 + 7856);
    t23 = 0;
    xsi_delete_subprogram_invocation(t20, t21, t0, t22, t23);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng4)));
    t3 = ((char*)((ng5)));
    t4 = (t0 + 7856);
    t5 = (t0 + 1280);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 6472);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 4);
    t8 = (t0 + 6632);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 4);

LAB21:    t9 = (t0 + 7952);
    t10 = *((char **)t9);
    t11 = (t10 + 80U);
    t12 = *((char **)t11);
    t13 = (t12 + 272U);
    t14 = *((char **)t13);
    t15 = (t14 + 0U);
    t16 = *((char **)t15);
    t19 = ((int  (*)(char *, char *))t16)(t0, t10);

LAB23:    if (t19 != 0)
        goto LAB24;

LAB19:    t10 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t10);

LAB20:    t17 = (t0 + 7952);
    t18 = *((char **)t17);
    t17 = (t0 + 1280);
    t20 = (t0 + 7856);
    t21 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t20, t21);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 7856);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB10:;
LAB12:    t11 = (t0 + 8048U);
    *((char **)t11) = &&LAB9;
    goto LAB1;

LAB16:;
LAB18:    t11 = (t0 + 8048U);
    *((char **)t11) = &&LAB15;
    goto LAB1;

LAB22:;
LAB24:    t9 = (t0 + 8048U);
    *((char **)t9) = &&LAB21;
    goto LAB1;

LAB25:    xsi_set_current_line(151, ng0);
    t3 = ((char*)((ng4)));
    t4 = ((char*)((ng7)));
    t5 = (t0 + 7856);
    t6 = (t0 + 1280);
    t7 = xsi_create_subprogram_invocation(t5, 0, t0, t6, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t6, t7);
    t8 = (t0 + 6472);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 4);
    t9 = (t0 + 6632);
    xsi_vlogvar_assign_value(t9, t4, 0, 0, 4);

LAB28:    t10 = (t0 + 7952);
    t11 = *((char **)t10);
    t12 = (t11 + 80U);
    t13 = *((char **)t12);
    t14 = (t13 + 272U);
    t15 = *((char **)t14);
    t16 = (t15 + 0U);
    t17 = *((char **)t16);
    t19 = ((int  (*)(char *, char *))t17)(t0, t11);

LAB30:    if (t19 != 0)
        goto LAB31;

LAB26:    t11 = (t0 + 1280);
    xsi_vlog_subprogram_popinvocation(t11);

LAB27:    t18 = (t0 + 7952);
    t20 = *((char **)t18);
    t18 = (t0 + 1280);
    t21 = (t0 + 7856);
    t22 = 0;
    xsi_delete_subprogram_invocation(t18, t20, t0, t21, t22);
    goto LAB1;

LAB29:;
LAB31:    t10 = (t0 + 8048U);
    *((char **)t10) = &&LAB28;
    goto LAB1;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 8296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 8712);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 8191U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 12);

LAB1:    return;
}


extern void work_m_00000000000929017060_1921495515_init()
{
	static char *pe[] = {(void *)Initial_122_0,(void *)Always_136_1,(void *)Initial_142_2,(void *)implSig1_execute};
	static char *se[] = {(void *)sp_bus_write,(void *)sp_bus_read};
	xsi_register_didat("work_m_00000000000929017060_1921495515", "isim/simple_io_tb_isim_beh.exe.sim/work/m_00000000000929017060_1921495515.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
