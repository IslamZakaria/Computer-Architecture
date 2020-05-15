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
static const char *ng0 = "D:/College/3/Archi Project/Alu32Bit/ALU1.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0925748639_3212880686_p_0(char *t0)
{
    char t5[16];
    char t21[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t22;
    char *t23;
    int t24;
    unsigned char t25;
    char *t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6672U);
    t3 = (t0 + 6722);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t17 = (t0 + 1512U);
    t18 = *((char **)t17);
    t17 = (t0 + 6672U);
    t19 = (t0 + 6726);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 3;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (3 - 0);
    t9 = (t24 * 1);
    t9 = (t9 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t9;
    t25 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t18, t17, t19, t21);
    if (t25 != 0)
        goto LAB5;

LAB6:
LAB2:    t33 = (t0 + 4376);
    *((int *)t33) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1192U);
    t11 = *((char **)t7);
    t12 = *((unsigned char *)t11);
    t7 = (t0 + 4504);
    t13 = (t7 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_fast(t7);
    goto LAB2;

LAB5:    t23 = (t0 + 1192U);
    t26 = *((char **)t23);
    t27 = *((unsigned char *)t26);
    t28 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t27);
    t23 = (t0 + 4504);
    t29 = (t23 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    *((unsigned char *)t32) = t28;
    xsi_driver_first_trans_fast(t23);
    goto LAB2;

}

static void work_a_0925748639_3212880686_p_1(char *t0)
{
    char t1[16];
    char t2[16];
    char t6[16];
    char t11[16];
    char t17[16];
    char *t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t6, t7, (char)99, (unsigned char)2, (char)99, t5, (char)101);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t11, t12, (char)99, (unsigned char)2, (char)99, t10, (char)101);
    t13 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t2, t3, t6, t8, t11);
    t14 = (t0 + 1352U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t18 = ((IEEE_P_2592010699) + 4024);
    t14 = xsi_base_array_concat(t14, t17, t18, (char)99, (unsigned char)2, (char)99, t16, (char)101);
    t19 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t13, t2, t14, t17);
    t20 = (t1 + 12U);
    t21 = *((unsigned int *)t20);
    t22 = (1U * t21);
    t23 = (2U != t22);
    if (t23 == 1)
        goto LAB5;

LAB6:    t24 = (t0 + 4568);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t19, 2U);
    xsi_driver_first_trans_fast(t24);

LAB2:    t29 = (t0 + 4392);
    *((int *)t29) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(2U, t22, 0);
    goto LAB6;

}

static void work_a_0925748639_3212880686_p_2(char *t0)
{
    char t5[16];
    char t24[16];
    char t42[16];
    char t61[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t25;
    char *t26;
    int t27;
    unsigned char t28;
    char *t29;
    unsigned char t30;
    char *t31;
    unsigned char t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t43;
    char *t44;
    int t45;
    unsigned char t46;
    char *t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned char t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t62;
    char *t63;
    int t64;
    unsigned int t65;
    unsigned char t66;
    char *t67;
    int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned char t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6672U);
    t3 = (t0 + 6730);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t20 = (t0 + 1512U);
    t21 = *((char **)t20);
    t20 = (t0 + 6672U);
    t22 = (t0 + 6734);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 3;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (3 - 0);
    t9 = (t27 * 1);
    t9 = (t9 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t9;
    t28 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t20, t22, t24);
    if (t28 != 0)
        goto LAB5;

LAB6:    t38 = (t0 + 1512U);
    t39 = *((char **)t38);
    t38 = (t0 + 6672U);
    t40 = (t0 + 6738);
    t43 = (t42 + 0U);
    t44 = (t43 + 0U);
    *((int *)t44) = 0;
    t44 = (t43 + 4U);
    *((int *)t44) = 3;
    t44 = (t43 + 8U);
    *((int *)t44) = 1;
    t45 = (3 - 0);
    t9 = (t45 * 1);
    t9 = (t9 + 1);
    t44 = (t43 + 12U);
    *((unsigned int *)t44) = t9;
    t46 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t39, t38, t40, t42);
    if (t46 != 0)
        goto LAB7;

LAB8:    t57 = (t0 + 1512U);
    t58 = *((char **)t57);
    t57 = (t0 + 6672U);
    t59 = (t0 + 6742);
    t62 = (t61 + 0U);
    t63 = (t62 + 0U);
    *((int *)t63) = 0;
    t63 = (t62 + 4U);
    *((int *)t63) = 3;
    t63 = (t62 + 8U);
    *((int *)t63) = 1;
    t64 = (3 - 0);
    t65 = (t64 * 1);
    t65 = (t65 + 1);
    t63 = (t62 + 12U);
    *((unsigned int *)t63) = t65;
    t66 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t58, t57, t59, t61);
    if (t66 != 0)
        goto LAB9;

LAB10:
LAB2:    t77 = (t0 + 4408);
    *((int *)t77) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1032U);
    t11 = *((char **)t7);
    t12 = *((unsigned char *)t11);
    t7 = (t0 + 1192U);
    t13 = *((char **)t7);
    t14 = *((unsigned char *)t13);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t12, t14);
    t7 = (t0 + 4632);
    t16 = (t7 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t15;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t26 = (t0 + 1032U);
    t29 = *((char **)t26);
    t30 = *((unsigned char *)t29);
    t26 = (t0 + 1192U);
    t31 = *((char **)t26);
    t32 = *((unsigned char *)t31);
    t33 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t30, t32);
    t26 = (t0 + 4632);
    t34 = (t26 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = t33;
    xsi_driver_first_trans_fast_port(t26);
    goto LAB2;

LAB7:    t44 = (t0 + 1992U);
    t47 = *((char **)t44);
    t48 = (0 - 1);
    t9 = (t48 * -1);
    t49 = (1U * t9);
    t50 = (0 + t49);
    t44 = (t47 + t50);
    t51 = *((unsigned char *)t44);
    t52 = (t0 + 4632);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    *((unsigned char *)t56) = t51;
    xsi_driver_first_trans_fast_port(t52);
    goto LAB2;

LAB9:    t63 = (t0 + 1992U);
    t67 = *((char **)t63);
    t68 = (0 - 1);
    t65 = (t68 * -1);
    t69 = (1U * t65);
    t70 = (0 + t69);
    t63 = (t67 + t70);
    t71 = *((unsigned char *)t63);
    t72 = (t0 + 4632);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    t75 = (t74 + 56U);
    t76 = *((char **)t75);
    *((unsigned char *)t76) = t71;
    xsi_driver_first_trans_fast_port(t72);
    goto LAB2;

}

static void work_a_0925748639_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4696);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4424);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0925748639_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0925748639_3212880686_p_0,(void *)work_a_0925748639_3212880686_p_1,(void *)work_a_0925748639_3212880686_p_2,(void *)work_a_0925748639_3212880686_p_3};
	xsi_register_didat("work_a_0925748639_3212880686", "isim/Alu_isim_beh.exe.sim/work/a_0925748639_3212880686.didat");
	xsi_register_executes(pe);
}
