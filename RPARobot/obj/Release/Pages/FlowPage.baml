   M S B A M L   `   `   `  ���� C  ?RPARobot, Version=2.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:RPARobot.PagesRPARobot.Pages  7 clr-namespace:RPARobot.ViewModelRPARobot.ViewModel  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity ] YHighlightableTextBlock, Version=1.0.1.1, Culture=neutral, PublicKeyToken=b1ed94db70ba498d_Dclr-namespace:HighlightableTextBlock;assembly=HighlightableTextBlockHighlightableTextBlock 5clr-namespace:RPARobot.LibrarysRPARobot.Librarys  =#clr-namespace:RPARobot.UserControlsRPARobot.UserControls  Q MPlugins.Shared.Library, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullqMclr-namespace:Plugins.Shared.Library.Controls;assembly=Plugins.Shared.LibraryPlugins.Shared.Library.Controls     RPARobot.Pages.FlowPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .localclr-namespace:RPARobot.Pages     /vm clr-namespace:RPARobot.ViewModel     ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1*cmd http://www.galasoft.ch/mvvmlight  ScontrolsDclr-namespace:HighlightableTextBlock;assembly=HighlightableTextBlock  *libsclr-namespace:RPARobot.Librarys  ,uc#clr-namespace:RPARobot.UserControls  ]	controls1Mclr-namespace:Plugins.Shared.Library.Controls;assembly=Plugins.Shared.Library    N� Title$  FlowPage�� � DataContext �� *Flow+   Locator �� Source# [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. /  )GalaSoft.MvvmLight.Command.EventToCommand     PassEventArgsToCommand .    Command �� *
OnLoaded+.���  � RowDefinitions �� $
��auto ��� $
��auto ��� $��* �.+��� $
��Left=�	 �� Orientation$	 
Horizontal=�$��0,0,0,8q�.+�0  *Plugins.Shared.Library.Controls.IconButton  $��0,0,8,0q�
   Icon$
 Refresh=�$��刷新列表������ *RefreshCommand+  $��0,0,8,0q�$

 Stop=�$��0q����	#FFFFFFFF���	#FFFB4621$��停止运行������ *StopCommand+y��� *IsWorkflowRunning+  BoolVisibilityConverter �� 	Converter# [ 0   *RPARobot.UserControls.SearchTextBoxControl  $��1��   HintText$ 搜索��   
SearchText �� *
SearchText+�� $��2��$��	-1,8,-1,0q�
������ $��0q����� *PackageItems+����  �� 
TargetType" ��.���  �� Property � �� �� Value �	#FFEFEFEF��  � �� ��  �� 
TargetType" ��.R��� ���	#FFFFFFFF#��z��$��1q� �� Padding$ 8q�$��0,0,0,8q�._���  �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �@�Cursor$
 Hand����  � �� �	#FF114DD8����  �� DataType$   RPARobot.ViewModel.PackageItem"  .R�� $��0q� � ColumnDefinitions �� $��* ��� $
��auto �.+��� $
��Left=�.+���  J� IsHitTestVisible .  3  -HighlightableTextBlock.HighlightableTextBlock   HighlightBrush
 ����    HighlightTextBrush �#ff9052$��Center=�$
��Left=�$��0,0,0,8q�$��14(�$
��Bold"�   HightlightText �� *
SearchText+���� *Name+��  �� 
IsReadOnly . $	��180������ *VersionList+ �� SelectedItem �� *	Version+� $��Right=�$��Center=�$��1��$��30�� �� $
��auto ��� $
��auto �.+�  ���	#FFFFFFFF���	#FFFB4621$��0q�$
 Delete=�$��删除��$��0,0,8,0q����� *RemoveItemCommand+  $��0,0,8,0q�$��1��$

 Play=�$��0q����	#FFFFFFFF���	#FF2E5BCA$��开始运行������ *StartCommand+y��� *IsNeedUpdate+ �� Mode$ OneWay=�  BoolNotVisibilityConverter# [   $��0,0,8,0q�$��1��$
 Refresh=�$��0q����	#FFFFFFFF���	#FF39C1E0$��更新依赖������ *UpdateCommand+y��� *IsNeedUpdate+$ OneWay=�# [ 