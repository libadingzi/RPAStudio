   M S B A M L   `   `   `  ���� C  ?RPARobot, Version=2.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:RPARobot.WindowsRPARobot.Windows  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity %    RPARobot.Windows.RegisterWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:RPARobot.Windows     ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1*cmd http://www.galasoft.ch/mvvmlight    � Title$  注册产品��$	��300��$	��400�� � Icon$! /Resources/Ico/RPARobot.ico�� � ShowInTaskbar .   � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� J� 	AllowDrop .  � DataContext �� *
Register+   Locator �� Source# [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger  	   	EventName$	 Loaded��.  (System.Windows.Interactivity.TriggerBase
   Actions.
 /  )GalaSoft.MvvmLight.Command.EventToCommand     PassEventArgsToCommand .    Command �� *LoadedCommand+  $	 MouseLeftButtonDown��.
    �� *MouseLeftButtonDownCommand+  $	 Closing��.
    .  �� *ClosingCommand+  $
	 Drop��.
    .  �� *DropCommand+.���  � RowDefinitions �� $	��130 ��� $��50 ��� $��* ��� $��50 �.+�� .+��� $��注册信息��$��10q�.��� $��10q� �� $��30 ��� $��30 ��� $��* � � ColumnDefinitions �� $��75 ��� $��* �.+�� $��0��$��0��$��Center=�.+��� $��Right=�	状态：� $��1��$��0��$��Center=�y��� *IsRegistered+ �� Mode$ OneWay=�  BoolVisibilityConverter �� 	Converter# [ .+��� $��Right=�有效期：� $��0��$��1��$��Center=�.+��� $��程序未注册��
���  ��$
��Left=�y��� *IsRegistered+$ OneWay=�  BoolNotVisibilityConverter# [ �� $��程序已注册��
��� � �$
��Left=�y��� *IsRegistered+$ OneWay=�# [ � $��1��$��1��$��Center=�y��� *IsRegistered+$ OneWay=�# [ .+���  �� Orientation$ 
Horizontal=�y��� *IsNeverExpires+$ OneWay=�# [ .+��� $��
截止到 ���� 
����  ����� *ExpiresDate+�� $��永久有效 ��
����  �y��� *IsNeverExpires+$ OneWay=�# [ � $��1��$��10q�.+��� $ 
Horizontal=�$
��Left=�.+��� $	��100��$��25�� � ToolTip$B <请将机器码文件导出并发送给授权方完成授权������ *ExportMachineCodeFileCommand+.��导出机器码文件…�� $	��100��$��25��$] W选择授权码文件来完成导入，也可直接拖拽授权码文件到当前窗口��$��	20,0,10,0q����� * ImportAuthorizationFileCommand+.��导入授权码文件…� $��3��.+��� $ 
Horizontal=�$��Right=�.+��� $��80��$��25��$��	10,0,10,0q����� *CloseCommand+.��关闭