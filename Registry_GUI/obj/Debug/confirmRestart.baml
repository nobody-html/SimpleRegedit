   M S B A M L   `   `   `  ����H  DSimpleRegedit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Registry_GUIRegistry_GUI  5   	   !    Registry_GUI.confirmRestart   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Registry_GUI     5   	   -   5          �Name$  ConfirmRestartGUI��5   	   $	��150��5	   	   $	��350��6    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	    � AllowsTransparency . 
������  � 	Resources 5         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background	 �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 confirmRestart_ButtonStyle
 �� 
TargetType �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%p  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  7 	 �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $	 	#FFDDDDDD��6;   �� 5   
   $	 	#FF707070��67   �� 5   
   $	 	#FFBEE6FD��6>   �� 5   
   $	 	#FF3C7FB1��6:   �� 5   
   $	 	#FFC4E5F6��6<   �� 5   
   $	 	#FF2C628B��68   �� 5   
   $	 	#FFF4F4F4��6=   �� 5   
   $	 	#FFADB2B5��69   �� 5    
   $	 	#FF838383��6=   �� 5!   
   "
 ��63   .�5"      ��  �@�FocusVisualStyle8   61   �� 5#       � �� �#2022256+   �� 5$       � �� �#2022256,   �� 5%       � ��# � ��6+   �� 5&       � ��$ 0q�60   �� 5'       � ��$ Center=�6;   �� 5(       � ��$ Center=�69   �� 5)       � ��$ 1q�6(   �� 5*       � �� 5+      �� 5,      " ��6&   .R�5-      �� $ border��6!   $ 3��61   ���#202225#��z��6X   #��z��6�    . ._�5.      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5/       50      P� 51       �@��IsDefaulted . . �52   "   �� $ border��6@   # � ��6T    � ��53      P� 54       �@J�IsMouseOver . . �55   "   �� $ border��6?    � �� �#3C464A6S   �� 56   "   $ border��6@    � �� �#3C464A6T   57      P� 58       � �� . . �59   "   �� $ border��6?    � �� �#4A54616S   �� 5:   "   $ border��6@    � �� �#4A54616T   5;      P� 5<       � {� .  . �5=   "   �� $ border��6?   8   � ��6S   �� 5>   "   $ border��6@   8   � ��6T   �� 5?   "   $ contentPresenter��6K   8   � ��6i   5@      5B      5D      5E      5F      .��5I      � 
������  � RowDefinitions 5J   
   �� 5K      $��30 �6   �� 5L      $
��187* �6    � ColumnDefinitions 5O   
   �� 5P      .+�5T   
   �� $��0��6   $��3��6   $��0��5U      $��3��6    .��5V      �� $0��*./assets/lbl_background_confirmrestart.png��6   5W      �� 5Z   
   -   5        $��0��5Z      $ 
5, 5, 0, 0��5[      ���#202225$��	0,0,0,0.4q�5]      ._�5`      � $��Stretch=�6   .+�5b      �� $��SimpleRegedit��6   $��10,2,0,2q�5c      
�������$��SemiBold"�5e      5f      5g      �� 5j   
   $��1��6   $��2��6   $ 
0, 0, 5, 5��5k      ���#2C2F33._�5n      � 
������  5o      �� 5p      $	��175 �6'   �� 5q      .+�5t      �� $H��BA restart is required for the changes to take effect.
Restart now?��6   $��2��5u      $��10,10,56.4,67q�5v      
�������$��DemiBold"�5x      �� 5z      -   5         ��Name$ confirmRestart_Yes��5z      $��0��5|      $��50��5}      $��25��6$   $��62.5,70,62.5,25q�5~      $	��Yes��5      
�������$��SemiBold"�5�      #��� 
 6/   �� 5�      -   5        $ confirmRestart_No��5�      $��1��5�      $��50��5�      $��25��6$   $��62.5,70,62.5,25q�5�      $��No��5�      
�������$��SemiBold"�5�      #��� 
 6/   5�      5�      5�      5�      