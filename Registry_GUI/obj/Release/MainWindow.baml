   M S B A M L   `   `   `  ���� H  DSimpleRegedit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Registry_GUIRegistry_GUI      Registry_GUI.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:Registry_GUI     -     �Name$  MainWindowGUI��$	��450��$	��800�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=� � AllowsTransparency . 
������  � Icon$ ./assets/icon.ico�� � 	Resources    FocusVisual �� Property �� Value J� SnapsToDevicePixels	 �� StrokeDashArray  Button.Static.Background
 �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 MinimizeButtonStyle �� 
TargetType �� 
TargetType ��Name ��Name �� Triggers P� Property P� Value �� 
TargetName  CloseButtonStyle  ApplyButtonStyle �� CornerRadius��%�
  &	        &	 N     &	 c     &	 x     &	 �     &	 �     &	 �     &	 �     &	 �     &		 �     &	
     7   7  7  7  7  7 	 &	 
    7   7  7  7  7  7 	 &	 	    7   7  7  7 	 �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$		 1 2R��� $
 	#FFDDDDDD���� $
 	#FF707070���� $
 	#FFBEE6FD���� $
 	#FF3C7FB1���� $
 	#FFC4E5F6���� $
 	#FF2C628B���� $
 	#FFF4F4F4���� $
 	#FFADB2B5���� $
 	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �#3C464A�� $ border�� � �� �#3C464AP�  � �� . . ��� $ border�� � �� �#4A5461�� $ border�� � �� �#4A5461P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �#ED4245�� $ border�� � �� �#ED4245P�  � �� . . ��� $ border�� � �� �#F08B8D�� $ border�� � �� �#F08B8DP�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� " ��.���  �@�FocusVisualStyle8   ��  � �� �#202225��  � �� �#202225��  � ��# � ����  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��$ 5�����#202225#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �#3C464A�� $ border�� � �� �#3C464AP�  � �� . . ��� $ border�� � �� �#4A5461�� $ border�� � �� �#4A5461P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ��.��� 
������  � RowDefinitions �� $��30 ��� $
��187* � � ColumnDefinitions �� $	��200 ��� .+��� $��0��$��3��$��0��$��3��.���� $,��&./assets/lbl_background_mainwindow.png���� -   $��0��$��2��$ 
5, 5, 0, 0�����#202225$��	0,0,0,0.4q�._�� $��Stretch=�.+��� $��SimpleRegedit��$��10,2,0,2q�
�������$��SemiBold"��� $��Right=� �� Orientation$ 
Horizontal=�.+��� -   $��25��$��20��$	��‒��
������ $��0q�
�������$��SemiBold"�#��� 
 �� -    ��Name$ CloseButton��$��25��$��20��$��
0, 0, 5, 0q�$	��✕��
������ $��0q�
�������$��SemiBold"�#���  �� $��1��$��2��$ 
0, 0, 5, 5�����#2C2F33._�� .+��� -    ��Name$% DisableAcrylicBackgroundOnLogon��$��Disable blured lockscreen�� � ToolTip$C =Disables the lock screen blur when logging on to the computer��$��50,50,589,355.2q�
�������$��DemiBold"�{�.  �� -   $ DisallowShaking��$!��Disable "Shake to Minimize"��$. (Disables the "Shake to Minimize" feature��$��50,100,578,305q�
�������$��DemiBold"�{�.  �� -   $ ShowSecondsInSystemClock��$+��%Show the seconds in the taskbar clock��$A ;Shows also the seconds in the taskbar clock
Reboot required��$��50,150,524,255.2q�
�������$��DemiBold"�{�.  �� -   $ NoLockScreen��$��Disable the lock screen��$N HDisables the Windows Lock Screen and directly prompts the sign in window��$��50,200,606,205q�
�������$��DemiBold"�{�.  �� -	   $ ApplyButton��$��50��$��50��$��730,349,20,20q�$��
5, 5, 5, 5q�$��Apply��
�������$��SemiBold"�#���  {�.  