   M S B A M L   `   `   `  ����E  APing_Buddy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Ping_Buddy
Ping_Buddy  5   	       Ping_Buddy.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Ping_Buddy     5   	     � Title$  
Ping Buddy��5   	   $��135.248��6   $��257.245��6-    � 
ResizeMode$ NoResize=�6=    � Icon$ Ping_Buddy.bmp��6S    � WindowStartupLocation$ CenterScreen=�6i   .��5	      � ���	#FF4A94C7.+�5
   
   �� -   5         ��Name$ pingtextbox��5
      $��23��6'   $��
41,32,41,0q�63    �� TextWrapping$
 Wrap=�6G   $	��Top=�6[   �� 5   
   -   5         ��Name$ 	textBlock��5      $��
41,10,41,0q�6'   $
��Wrap=�6;   $��Enter IP Address To Ping��6O   $	��Top=�6o   $
��Bold"�6�    �� TextAlignment$ Center=�6�   ��6�   Z� 6�   �� 5   
   -   5         ��Name$ button��5      $��Ping IP Address��6!   $��
64,62,64,0q�6;   $	��Top=�6O   6g      Ping_Buddy.UserControl1  5   
   -   5        	  Name$	 status��5      $"��217.913,39.997,23.332,58.251q�6-   
 � ToolTip$d
 ^White = No IP Pinged Yet.   Green = Ping Success.   Yellow = IP Invalid.   Red = Ping Failure.��6S   �� 5   
   -   5         ��Name$ notification��5      $�� ��6)   $
��Left=�64   $��17.333,36.047,0,0q�6O   $	��Top=�6j   $�
 �Check this box if you want to get notifications of your ping requests status.  Leave this box unchecked if you do not want notifications.��6�   5      5      