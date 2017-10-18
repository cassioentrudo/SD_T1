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
static const char *ng0 = "C:/cassio/VHDL/trabalho1/trabalho1/tb_trabalho1.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_1778062222_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 4440);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 4440);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 4360);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1778062222_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;

LAB0:    t1 = (t0 + 4040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3848);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3848);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 4504);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3848);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4568);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3848);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4632);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(112, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 3848);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 4696);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 7370);
    *((int *)t2) = 0;
    t4 = (t0 + 7374);
    *((int *)t4) = 15;
    t8 = 0;
    t9 = 15;

LAB24:    if (t8 <= t9)
        goto LAB25;

LAB27:    xsi_set_current_line(149, ng0);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB25:    xsi_set_current_line(138, ng0);
    t5 = (t0 + 7378);
    *((int *)t5) = 0;
    t6 = (t0 + 7382);
    *((int *)t6) = 15;
    t10 = 0;
    t11 = 15;

LAB28:    if (t10 <= t11)
        goto LAB29;

LAB31:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 4824);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(145, ng0);
    t3 = (20 * 1000LL);
    t2 = (t0 + 3848);
    xsi_process_wait(t2, t3);

LAB39:    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB26:    t2 = (t0 + 7370);
    t8 = *((int *)t2);
    t4 = (t0 + 7374);
    t9 = *((int *)t4);
    if (t8 == t9)
        goto LAB27;

LAB41:    t10 = (t8 + 1);
    t8 = t10;
    t5 = (t0 + 7370);
    *((int *)t5) = t8;
    goto LAB24;

LAB29:    xsi_set_current_line(139, ng0);
    t7 = (t0 + 4760);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(140, ng0);
    t3 = (20 * 1000LL);
    t2 = (t0 + 3848);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB30:    t2 = (t0 + 7378);
    t10 = *((int *)t2);
    t4 = (t0 + 7382);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB31;

LAB36:    t16 = (t10 + 1);
    t10 = t16;
    t5 = (t0 + 7378);
    *((int *)t5) = t10;
    goto LAB28;

LAB32:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 4760);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB30;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB37:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 4824);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB26;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

LAB42:    goto LAB2;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

}


extern void work_a_1778062222_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1778062222_2372691052_p_0,(void *)work_a_1778062222_2372691052_p_1};
	xsi_register_didat("work_a_1778062222_2372691052", "isim/tb_trabalho1_isim_beh.exe.sim/work/a_1778062222_2372691052.didat");
	xsi_register_executes(pe);
}
