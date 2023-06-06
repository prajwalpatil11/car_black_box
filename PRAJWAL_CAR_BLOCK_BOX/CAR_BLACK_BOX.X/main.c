/*
 * NAME             : Prajwal Patil
 * DATE             : 29/05/2023
 * DESCRIPTION      : CAR BLACKBOX
 */

#include <xc.h>			
#include "main.h"		
#include "clcd.h"		
#include "ds1307.h" 		
#include "i2c.h"		
#include "adc.h"		
#include "exter.h"		
#include "matrix_keypad.h"	
#include "timer0.h"
#include "isr.h"		
#include "uart.h"		

unsigned char clock_reg[3];				
unsigned char time[9];		 
unsigned int speed;		
unsigned char store_data[14];	
static unsigned char Event1[9][3] = {"ON", "GN", "GR", "G1", "G2", "G3", "G4", "G5", "CL"};
unsigned char event=0,count =0,flag,clear_flag=0;	
extern unsigned short blink;
unsigned static char choose_flag = 0,select_1 = 0,select_2 = 0,select_flag,d = 4;
unsigned static int password;				
void store_event();		
void store_external_eeprom();	
void Enter_password()		
{  
    /* Enter password function ,these function will read the password 
      we entered through matrix keypad and compared with predefined 
      password if both matches then it will goes to the view menu 
      function else we will read the password 4 more times  */

    CLEAR_DISP_SCREEN;
    clcd_print("ENTER PASSWORD",LINE1(0));			

    unsigned char key;      					                         
    unsigned char count = 0;					
    unsigned int delay, wait=0;
    unsigned static char  attempt = 0,input;

    while(1)							
    {
	if (attempt < 4)       					                     
	{
	    key = read_switches(STATE_CHANGE);			
	    if (input < 4)                                      
	    {
		if (key == MK_SW5)                           
		{  					       
		    clcd_putch('*', LINE2(input++));		
		    count = count << 1 | 1 ;                  
		}
		if (key == MK_SW6)				
		{						
		    clcd_putch('*',LINE2(input++));
		    count = count << 1;                       
		}
		for (unsigned int i = 50000; i--; );             
	    }
	    else
	    {
            password = read_external_eeprom(0xFF);
		if (count == password )                        
		{
		    choose_flag = 2;				
		    input = 0;
		    d = 4;
		    count = 0;
		    break;
		}
		else
		{
		    if (d >= 1)                         
		    {
                clcd_print("   Try_Again    ",LINE1(0));
                clcd_putch(d + 48, LINE2(0));                      
                clcd_print("  Time left    ",LINE2(1));
                if (wait++ == 2000)
                {
                    d--;
                    attempt++;
                    wait = 0;
                    clcd_print("                ",LINE2(0));
                    clcd_print("_ENTER_PASSWORD ",LINE1(0));
                    count = 0;
                    input = 0;
                }
		    }
		    else
		    {
                attempt = 5 ;
		    }
		}
	    }
	}
	else						
	{
	    choose_flag = 0;
	    attempt = 0;
	    input = 0;
	    count = 0;
	    d = 4;
	    break; 
	}
    }
}

void view_menu(void)
{
   
    unsigned static int menu = 0,delay1 = 0,delay2 = 0;
    unsigned static char view_array[6][17] = {"View Log        ","Clear Log     ","Download Log   ","Set Time       ","Change Password","<<   EXIT   >> "}; // declared the 2d Array and stored the events in it.
    unsigned char key;


        clcd_putch('*',LINE1(0)); 
        clcd_putch(' ',LINE2(0));

    clcd_print(view_array[menu],LINE1(1));
    clcd_print(view_array[menu+1],LINE2(1));
    key = read_switches(LEVEL_CHANGE);  
    if(key == MK_SW5)			
    {
       delay1++;
    }
    if (delay1 > 1000 && key == ALL_RELEASED)
    {
        if (select_flag < 7)
        {
            CLEAR_DISP_SCREEN;
            choose_flag = 3;
            //select_flag = menu + 1;
            select_flag = menu + 1;
        }
        delay1 = 0;
    }
    else if (delay1 > 0 && delay1 < 1000 && key == ALL_RELEASED)   
    {
        if (menu < 4)
        {
           menu++;
        }
        delay1 = 0;
    }
    if ( key == MK_SW6)
    {
       delay2++;
    }
    
    if (delay2 > 1000 && key == ALL_RELEASED)
    {
	    CLEAR_DISP_SCREEN;
        choose_flag = 0;
        delay2 = 0;
    }
    else if (delay2 > 0 && delay2 < 1000 && key == ALL_RELEASED)
    {
        if (menu >= 1)
        {
           menu--;
        }
         delay2 = 0;
    }	
}
void view_log()
{  
    unsigned char key,i,v,cal=0;
    unsigned static int  value1,value2,menu=0;
    key=read_switches(LEVEL_CHANGE);  
    if (clear_flag == 0)
    {
        for (i = 0; i< 14; i++)
        {
            clcd_print("logs",LINE1(3));
            v = read_external_eeprom((menu*14) + i);
            clcd_putch(v,LINE2(i));

        }   
    }
    else if(clear_flag != 0)
    {
        clcd_print("No log found ",LINE2(0));
    }
      
    if(key == MK_SW5)
    {   
        value1++;
    }   
    if (value1 > 500 && key == ALL_RELEASED)
    {   
        for (unsigned int b=5000; b--; );
    	value1 = 0;
    }   
    else if (value1 > 0 && value1 < 500 && key == ALL_RELEASED)
    {   

	if (menu < 9)
	{
	    menu++;
	}
        value1 = 0;
    }   
    if ( key == MK_SW6)
    {   
        value2++;
    }   

    if (value2 > 500 && key == ALL_RELEASED)
    {   
        CLEAR_DISP_SCREEN;
        choose_flag = 2;

        value2 = 0;
    }   
    else if (value2 > 0 && value2 < 500 && key == ALL_RELEASED)
    { 
	if (menu >= 1)
	{
	    menu--;
	}
	value2 = 0;
    }     
}

void clear_log()
{
    unsigned int val;
    unsigned char key;    
    clear_flag = 1;
    clcd_print("Cleared Log",LINE2(0));
    clcd_print("SUCCESSFULLY",LINE1(0));
    key = read_switches(LEVEL_CHANGE);
    if (key == MK_SW5)
    {
	val++;
    }
    if (val > 1000)
    {
      CLEAR_DISP_SCREEN;
      choose_flag = 2;
      val = 0;
    }
}

void Download_log()
{
    unsigned static char i=0,b=0;
    unsigned char down_array[15]={0};
    for (b =0; b < 10; b++)
    {
        for (i = 0; i< 14; i++)
        {
       	   down_array[i] = read_external_eeprom((b*14) + i);
        }
        puts("\n\r");	 
        puts(down_array);	
     }   
      
    clcd_print("Download completed",LINE2(0));
    for (unsigned int j = 59999; j--;)
        for (unsigned char k = 30; k--;);
       choose_flag = 2;    
}    

void set_time()
{
   

    unsigned char key,hr=0,sec=0,min=0,i=0;
    unsigned static char val=0; 
    unsigned static int cal=0,car=0;
    unsigned char *change_time = time;
    clcd_print(change_time,LINE2(0));
    clcd_print("Time (HH:MM:SS) ",LINE1(0));
    key = read_switches(LEVEL_CHANGE);
    if(key == MK_SW5)
	car++;
    if(key == MK_SW6)
	cal++;

    if(car < 1000 && car > 0 && key == ALL_RELEASED)
    {
        val++;
        val = val % 3;
        car = 0;
    }
    else if(car > 1000 && key == ALL_RELEASED)
    {
        clcd_print("Saved Time in RTC",LINE1(0));
        car = 0;
        hr = (((change_time[0] - '0') << 4) | (change_time[1] - '0'));
        min = (((change_time[3] - '0') << 4) | (change_time[4] - '0'));
        sec = (((change_time[6] - '0') << 4) | (change_time[7] - '0'));	
        write_ds1307(HOUR_ADDR,hr);
        write_ds1307(MIN_ADDR,min);
        write_ds1307(SEC_ADDR,sec);
        for(unsigned int j = 59999; j--;)
            for(unsigned char i = 20; i--;);	
            choose_flag = 0;
    }
    if(cal < 1000 && cal > 0 && key == ALL_RELEASED)
    {
        cal =0;
        if(val == 0)
        {
            change_time[1]++;

            if (change_time[1] > '9')
            {
                change_time[0]++;
                change_time[1] = '0';
            }
            if(change_time[0] == '2')
            {
                if (change_time[1] >'3')
                {
                    change_time[1] ='0';
                    change_time[0] = '0';
                }
	    }
	}
	else if(val == 1)
	{ 
	    change_time[4]++;
	    if (change_time[4] > '9')
	    {
		change_time[3]++;
		change_time[4] = '0';
	    }
	    if(change_time[3] == '6')
	    {
		change_time[3] ='0';
	    }
	}
	else if(val == 2)
	{ 
	    change_time[7]++;

	    if (change_time[7] > '9')
	    {
		change_time[6]++;
		change_time[7] = '0';
	    }
	    if(change_time[6] == '6')
	    {
		change_time[6] ='0';
	    }
	}
    }
    else if(cal > 1000 && key == ALL_RELEASED)
    {
	cal = 0;
	choose_flag = 2; //go to menu
    }
}

void change_password()
{
    unsigned static int re_pass = 0,choice = 0,i=0,j=0,psswd = 0;
    unsigned char key;

    if (choice < 4)
    {
	
	clcd_print("Enter Password",LINE1(0));
	key = read_switches(STATE_CHANGE);

	if (key == MK_SW5)
	{
	    psswd = psswd << 1 | 1;
	 
	    clcd_putch('*', LINE2(choice++));
	}
	if (key == MK_SW6)
	{
	   
	    psswd = psswd << 1;
	    clcd_putch('*', LINE2(choice++));
	}
    }	
    else if (choice >= 4 && choice <= 7)
    {
        if (choice == 4)
        {
            CLEAR_DISP_SCREEN;
        }
        clcd_print("Ree Enter password",LINE1(0));
        key = read_switches(STATE_CHANGE);

        if (key == MK_SW5)
        {
            re_pass = re_pass << 1 | 1;
            choice++;
            clcd_putch('*', LINE2(i++));
        }
        if (key == MK_SW6)
        {
            choice++;
            clcd_putch('*',LINE2 (i++)); 
            re_pass = re_pass << 1;
        }
    }

    if (choice == 8)
    {
        CLEAR_DISP_SCREEN;

       if (psswd == re_pass)
       {
           password = re_pass;
            write_external_eeprom(0xFF,re_pass);
            clcd_print("Password changed",LINE1(0));
            clcd_print("Successfully ",LINE2(0));
            for (unsigned int i = 59999; i--;)
                for (unsigned char j = 30; j--; );
                choose_flag = 0;
      }
      else
      {
         clcd_print("Wrong Password",LINE1(0));
         for (unsigned int i = 59999;i--;)
            for(unsigned char j = 30; j--;);
            choose_flag = 2;
      }
    choice = 0;
    i= 0;
    }
}

    

void Enter_menu()
{       
    switch (select_flag)
    {
	case 1 :
	    {
		view_log();
		break;
	    }
	case 2 :
	    {
		clear_log();
		break;
	    }
	case 3 :
	    {
		Download_log();
		break;
	    }
	case 4 :
	    {
		set_time();
		break;
	    }
	case 5 :
	    {
		password = 0;
		change_password();
		break;
	    }
    }
}
void store_event()
{
    

    store_data[0] = time [0];
    store_data[1] = time [1];
    store_data[2] = ':';
    store_data[3] = time [3];
    store_data[4] = time [4];
    store_data[5] = ':' ;
    store_data[6] = time [6];
    store_data[7] = time [7];
    store_data[8] = ':' ;
    store_data[9] = Event1[event][0];
    store_data[10] = Event1[event][1];
    store_data[11] = ' ' ;
    store_data[12] = '0' + (speed/10);
    store_data[13] = '0' + (speed%10);
    store_external_eeprom();

}
void store_external_eeprom()
{
    
    unsigned char i;
    for (i = 0; i< 14; i++)
    {
	write_external_eeprom(((count*14) + i),store_data[i]);
    }
    count++;
    if (count == 10)
	count=0;
}
void display_event()
{
         
    clcd_print("  TIME    EV  SP", LINE1(0));
    clcd_print(Event1[event] , LINE2(11));
}
void change_event(void)
{
    unsigned char key;
    key = read_switches(STATE_CHANGE);

    if (key == MK_SW1)
    {
	if (event < 6)
	{
	    event++;
	    store_event();
	}
	if (event == 8)
	{
	    event = 1;    

	}
    }
    else if(key == MK_SW2)
    {
	if (event == 8)
	{
	    event =1;
	    //store_event();
	}

	if (event > 1)
	{
	    event--;
	    store_event();
	}
    }
    else if (key == MK_SW3)
    {
	event = 8;
	store_event();
    }
    if (key == MK_SW4)
    {
	choose_flag = 1;
    }


}
void display_time(void)
{
   

    speed = (read_adc(CHANNEL4) / (10.3333));

    clcd_print(time, LINE2(0));
    clcd_putch( ((speed/10) +'0') , LINE2(14));
    clcd_putch( ((speed % 10) +'0') , LINE2(15));
}
static void get_time(void)
{
    clock_reg[0] = read_ds1307(HOUR_ADDR);
    clock_reg[1] = read_ds1307(MIN_ADDR);
    clock_reg[2] = read_ds1307(SEC_ADDR);
    if (clock_reg[0] & 0x40)
    {
        time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
        time[1] = '0' + (clock_reg[0] & 0x0F);
    }
    else
    {
        time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
        time[1] = '0' + (clock_reg[0] & 0x0F);
    }
    time[2] = ':';
    time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
    time[4] = '0' + (clock_reg[1] & 0x0F);
    time[5] = ':';
    time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
    time[7] = '0' + (clock_reg[2] & 0x0F);
    time[8] = '\0';
}

void init_config(void)
{
    init_clcd();		
                                 
    init_i2c();			
    init_ds1307();		
    init_adc();			
    init_matrix_keypad();	
    init_uart();		
    clcd_print("  TIME    EV  SP", LINE1(0));
    CLEAR_DISP_SCREEN;
}

void main(void)
{
   
    init_config();			
    unsigned  char choose_key = 0;	
    //write_external_eeprom(0xFF, 0x0F);
    //password = read_exterm
    
    while (1)				
    {
        choose_key = read_switches(STATE_CHANGE); 

        if (choose_flag == 0)	   
        {
            get_time();		  
            display_time();	   
            display_event();	   
            change_event();	   
        }
        else if (choose_flag == 1) 
        {
            Enter_password();	  
        }
        else if (choose_flag == 2) 
        {
            view_menu();	   
        }
        else if (choose_flag == 3) 
        {
            Enter_menu();	   
        }
    }
}