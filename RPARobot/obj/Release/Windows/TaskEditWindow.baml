   M S B A M L   `   `   `  ���� C  ?RPARobot, Version=2.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:RPARobot.WindowsRPARobot.Windows  7 clr-namespace:RPARobot.ViewModelRPARobot.ViewModel  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5clr-namespace:RPARobot.LibrarysRPARobot.Librarys  =#clr-namespace:RPARobot.UserControlsRPARobot.UserControls  %    RPARobot.Windows.TaskEditWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:RPARobot.Windows     /vm clr-namespace:RPARobot.ViewModel     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1*cmd http://www.galasoft.ch/mvvmlight  X TXceed.Wpf.Toolkit, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  3system&clr-namespace:System;assembly=mscorlib  .librarysclr-namespace:RPARobot.Librarys  6usercontrols#clr-namespace:RPARobot.UserControls    � WindowStartupLocation$  CenterOwner=� � Title$ 任务调度��$	��400��$	��500��$	��480��$	��600�����#F7F7F9 � 	Resources    ButtonBaseStyle �� 
TargetType �� Property �� Value  DefaultButton �� BasedOn  PrimaryButton  	FieldName  ColWidth��%3  &	        &	 =     7   &	 d     7   &	 �     &	 �     �� " ��.���  � ��$
 16,4q���  � ��
 ���� �� 8   " ��.���  � ��$ 1q��� 8   " ��.���  � �� �	#FF1976D2��  � �� �	#FFFFFFFF�� " ��.���  � ��$	 0,8q���  � ��$ 14(��100 �.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 /  )GalaSoft.MvvmLight.Command.EventToCommand  
   PassEventArgsToCommand
 .    Command �� *LoadedCommand+.��� $��8q� � RowDefinitions �� $
��auto ��� $��24 ��� $��* �.+��� $��添加计划任务��$
��Bold"�$��16(� �� TextAlignment$ Center=�� $��2�� �� $
��auto ��� $��8 ��� $
��auto ��� $��8 ��� $
��auto ��� $��8 ��� $
��auto ��� $��8 ��� $
��auto ��� $��* ��� $
��auto � � ColumnDefinitions �� #��[ �� $��* �.+��� $��创建方式：��#��[ ��  �� Orientation$ 
Horizontal=�$��Center=�$��1��.+�	� $��快捷创建�� 	� 	GroupName$ CreatingMode��$��0,0,16,0q� d� 	IsChecked �� *CreatingMode+  CreatingModeToBoolConverter �� 	Converter# [  �� ConverterParameter$ 0��	� $ CreatingMode��$��自定义创建�� �� *CreatingMode+# [ $ 1���� $��任务名称：��$��2��#��[ �� $��2��$��1��$��Center=�$	��4,0q�$��25������ *
TaskName+�� $��选择流程：��$��4��#��[ �� $��1��$��4�� �� SelectedValuePath$
 Name�� �� DisplayMemberPath$
 Name��$��Center=�$��25������ *Flows+ �� SelectedValue �� *PackageName+� $��6��$��2��y��� *CreatingMode+ " VisibilityIfQuickModeConverter# [  �� #��[ �� $��* � �� $��* ��� $
��auto ��� $��* �.+��� #��[ $��选择周期：����  �� 
IsReadOnly . $��1��$	 Key��$
 Name��$��Center=�$��25������ *Cycles+ �� *Cycle+�� $��1��$��1������ *
CheckBoxes+����  �� 
TargetType" ��.R��� ._���  �� Triggers ��  �� Value$ False�� �� Binding �� *Cycle+ # CycleIsMonthlyOrWeeklyConverter# [ .a���  � y�$ Hidden=����� .R��  � Orientation$ 
Horizontal=�����  �� DataType&    RPARobot.ViewModel.CheckBoxProps"  .R��� $��0,0,4,0q����� *Text+ �� *	IsChecked+�� #��[ $��执行时间：��$��2��&   Xceed.Wpf.Toolkit.TimeSpanUpDown  $��2��$��1��$��Center=�$��25��$	��180��,  &Xceed.Wpf.Toolkit.Primitives.InputBase   AllowTextInput .  $
��Left=��  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.TimeSpan, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value$ 00:00:00X�y��� *Cycle+  �� Mode$  OneWay=� ) %VisibilityCycleIfNotOnlyOnceConverter# [    $ ValueChanged��.	   
 .  �� *ExecutionTimeChangedCommand+&	   Xceed.Wpf.Toolkit.DateTimePicker	  $��2��$��1��$��Center=�$
��Left=�$��25��$	��180��y��� *Cycle+$  OneWay=� &	 "VisibilityCycleIfOnlyOnceConverter# [	    $ ValueChanged��.	   
 .  �� *StartTimeChangedCommand+� $��6��$��2��y��� *CreatingMode+ #
 VisibilityIfCustomModeConverter# [
  �� #��[ �� $��* �.+��� #��[ $��Cron表达式：��$��6��� $��6��$��1�� ��%�   '��       '�� A     �� " ��.���  � ��$ Center=���  � ��$ Center=��� " ��.���  �@��TextAlignment$ Center=���  � ��$ Center=���  � ��$ 25�� �� $��* ��� $��* � �� $��* ��� $��8 ��� $��* ��� $��8 ��� $��* ��� $��8 ��� $��* ��� $��8 ��� $��* ��� $��8 ��� $��* �.+��� $	��秒���� $	��分��$��2���� $	��时��$��4���� $	��日��$��6���� $	��月��$��8���� $	��周��$��10���� $��1������ *
CronSecond+�� $��1��$��2������ *
CronMinute+�� $��1��$��4������ *
CronHour+�� $��1��$��6������ *CronDayOfMonth+�� $��1��$��8������ *	CronMonth+�� $��1��$��10������ *CronDayOfWeek+�� #��[ $��有效时间：��$��8��$	��Top=�� $��8��$��1�� �� $��* ��� $��8 ��� $��* ��� $
��auto �.+�	� $ EffectiveTime��$��永久有效�� �� *EffectiveTimeType+   EffectiveTimeToBoolConverter# [ $ 0��	� $ EffectiveTime��$��设置时间��$��2��$��Center=�$��0,0,8,0q� �� *EffectiveTimeType+# [ $ 1��	  $��3��$��0,4,0,0q�$	��180��$��25��$
��Left=�   $ ValueChanged��.	   
 .  �� *EffectiveTimeChangedCommand+�� $��10��$��3��$ 
Horizontal=�$��Right=�.+��� #��[ ���� *SaveCommand+.��保存�� $��16,0,0,0q�#��[ ���� *CancelCommand+.��取消