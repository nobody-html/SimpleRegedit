   M S B A M L   `   `   `  ���� H  DSimpleRegedit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Registry_GUIRegistry_GUI  !    Registry_GUI.confirmRestart   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:Registry_GUI     -     �Name$  ConfirmRestartGUI��$	��150��$	��350�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=� � AllowsTransparency . 
������  � 	Resources    FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background	 �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 confirmRestart_ButtonStyle
 �� 
TargetType �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	        &	 N     &	 c     &	 x     &	 �     &	 �     &	 �     &	 �     &	 �     &		 �     &	
     7   7  7  7 	 �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� $	 	#FFDDDDDD���� $	 	#FF707070���� $	 	#FFBEE6FD���� $	 	#FF3C7FB1���� $	 	#FFC4E5F6���� $	 	#FF2C628B���� $	 	#FFF4F4F4���� $	 	#FFADB2B5���� $	 	#FF838383���� "
 ��.���  �@�FocusVisualStyle8   ��  � �� �#202225��  � �� �#202225��  � ��# � ����  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��$ 3�����#202225#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �#3C464A�� $ border�� � �� �#3C464AP�  � �� . . ��� $ border�� � �� �#4A5461�� $ border�� � �� �#4A5461P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ��.��� 
������  � RowDefinitions �� $��30 ��� $
��187* � � ColumnDefinitions �� .+��� $��0��$��3��$��0��$��3��.���� $0��*./assets/lbl_background_confirmrestart.png���� -   $��0��$ 
5, 5, 0, 0�����#202225$��	0,0,0,0.4q�._�� $��Stretch=�.+��� $��SimpleRegedit��$��10,2,0,2q�
�������$��SemiBold"��� $��1��$��2��$ 
0, 0, 5, 5�����#2C2F33._�� 
������  �� $	��175 ��� .+��� $H��BA restart is required for the changes to take effect.
Restart now?��$��2��$��10,10,56.4,67q�
�������$��DemiBold"��� -    ��Name$ confirmRestart_Yes��$��0��$��50��$��25��$��62.5,70,62.5,25q�$	��Yes��
�������$��SemiBold"�#��� 
 �� -   $ confirmRestart_No��$��1��$��50��$��25��$��62.5,70,62.5,25q�$��No��
�������$��SemiBold"�#��� 
 