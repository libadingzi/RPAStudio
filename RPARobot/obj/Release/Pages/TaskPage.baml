   M S B A M L   `   `   `  ���� C  ?RPARobot, Version=2.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:RPARobot.PagesRPARobot.Pages  7 clr-namespace:RPARobot.ViewModelRPARobot.ViewModel  =#clr-namespace:RPARobot.UserControlsRPARobot.UserControls  Q MPlugins.Shared.Library, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullqMclr-namespace:Plugins.Shared.Library.Controls;assembly=Plugins.Shared.LibraryPlugins.Shared.Library.Controls uOclr-namespace:Plugins.Shared.Library.Converters;assembly=Plugins.Shared.Library!Plugins.Shared.Library.Converters     RPARobot.Pages.TaskPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .localclr-namespace:RPARobot.Pages     /vm clr-namespace:RPARobot.ViewModel     2uc#clr-namespace:RPARobot.UserControls     bcontrolsMclr-namespace:Plugins.Shared.Library.Controls;assembly=Plugins.Shared.Library     f
convertersOclr-namespace:Plugins.Shared.Library.Converters;assembly=Plugins.Shared.Library     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1*cmd http://www.galasoft.ch/mvvmlight    N� Title$  TaskPage�� � DataContext �� *Task+   Locator �� Source# [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. /  )GalaSoft.MvvmLight.Command.EventToCommand     PassEventArgsToCommand .    Command �� *LoadedCommand+.���  � RowDefinitions �� $
��auto ��� $��8 ��� $��* �.+��� $
��Left=�	 �� Orientation$	 
Horizontal=�.+�0  *Plugins.Shared.Library.Controls.IconButton  
   Icon$

 Plus=�$��添加任务������ *
OpenForm+�� $��2��
������ $��0q�$
��-1,0q����� *Tasks+����  �� 
TargetType" ��.���  �� Property � �� �� Value �	#FFEFEFEF��  � �� ��  �� 
TargetType" ��.R���  �� Padding$ 8q�$��0,0,0,8q����	#FFFFFFFF$��1q�#��z��._���  �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �@�Cursor$
 Hand����  � �� �	#FF114DD8����  �� DataType*   $RPARobot.ViewModel.ScheduledTaskInfo"  .R��  � ColumnDefinitions �� $��* ��� $
��auto �.+��  �� $��* ��� $��8 ��� $
��auto �.+��� $��14(�$
��Bold"����� *
TaskName+�� $��2��$	 
Horizontal=�.+��� $��下次执行时间：���� $��0,0,8,0q����� *NextOccurrence+�� $��修改时间：���� ���� *ModificationTime+�� $��Right=�$	 
Horizontal=�$��Center=�.+�  $
 Delete=�$��0,0,8,0q�$��删除��$��0q����	#FFFB4621���	#FFFFFFFF���� *DeleteCommand+