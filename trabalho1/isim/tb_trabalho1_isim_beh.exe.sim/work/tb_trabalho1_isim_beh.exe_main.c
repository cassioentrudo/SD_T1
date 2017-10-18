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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *STD_TEXTIO;
char *XILINXCORELIB_P_0718376120;
char *XILINXCORELIB_P_3381355550;
char *XILINXCORELIB_P_3155556343;
char *XILINXCORELIB_P_1837083571;
char *IEEE_P_3499444699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *XILINXCORELIB_P_1433929353;
char *XILINXCORELIB_P_0624651749;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    xilinxcorelib_p_0718376120_init();
    std_textio_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_3381355550_init();
    xilinxcorelib_p_1433929353_init();
    xilinxcorelib_p_3155556343_init();
    xilinxcorelib_p_0624651749_init();
    xilinxcorelib_a_4157913597_3212880686_init();
    xilinxcorelib_a_4244578354_3212880686_init();
    xilinxcorelib_a_3644623766_3212880686_init();
    work_a_3509946833_1797458288_init();
    work_a_3057850623_3212880686_init();
    work_a_1778062222_2372691052_init();


    xsi_register_tops("work_a_1778062222_2372691052");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    XILINXCORELIB_P_0718376120 = xsi_get_engine_memory("xilinxcorelib_p_0718376120");
    XILINXCORELIB_P_3381355550 = xsi_get_engine_memory("xilinxcorelib_p_3381355550");
    XILINXCORELIB_P_3155556343 = xsi_get_engine_memory("xilinxcorelib_p_3155556343");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    XILINXCORELIB_P_1433929353 = xsi_get_engine_memory("xilinxcorelib_p_1433929353");
    XILINXCORELIB_P_0624651749 = xsi_get_engine_memory("xilinxcorelib_p_0624651749");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
