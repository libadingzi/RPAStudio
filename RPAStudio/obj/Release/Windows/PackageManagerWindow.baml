   M S B A M L   `   `   `  ���� c  _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  D @RPAStudio, Version=2.0.0.3, Culture=neutral, PublicKeyToken=null7 clr-namespace:RPAStudio.LibrarysRPAStudio.Librarys ,   &RPAStudio.Windows.PackageManagerWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0ignorehttp://www.galasoft.ch/ignore     ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1*cmd http://www.galasoft.ch/mvvmlight  +libs clr-namespace:RPAStudio.Librarys  X TXceed.Wpf.Toolkit, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  J	 FWpfAnimatedGif, Version=1.4.18.0, Culture=neutral, PublicKeyToken=null,gif"http://wpfanimatedgif.codeplex.com 	 !  RPAStudio.Librarys.WindowEx    ShowMinimizeBox  .   � Title$ 包管理器�� � Icon$ /Resources/Ico/logo.ico��$	��900��$	��500��$	��720��$	��400�� � DataContext �� *PackageManager+   Locator �� Source# [  .   (System.Windows.Interactivity.Interaction   Triggers /   )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.   (System.Windows.Interactivity.TriggerBase   Actions. /  )GalaSoft.MvvmLight.Command.EventToCommand     PassEventArgsToCommand . 	   Command	 �� *LoadedCommand+
 � 	Resources
 (  "Xceed.Wpf.Toolkit.WatermarkTextBox �� 
TargetType �� Triggers �� Binding �� RelativeSource �� Value �� Property �� Value  ListBoxItemStyle # ListBoxSettingsItemDataTemplate �� Orientation �� Mode  BoolVisibilityConverter �� 	Converter ^� InitialShowDelay � ToolTip J� IsHitTestVisible ( $ListBoxPackageSourceItemDataTemplate d� 	IsChecked ' #ListBoxSearchResultItemDataTemplate � ColumnDefinitions!  RPAStudio.Librarys.ImageExt   DefaultSource   	UrlSource � RowDefinitions��%  '        &	 �     &	 �     7  &	 �    &	 �    �� "   ��  �� *
IsReadOnly+ �� *Self+ True.a���  � �� �#FCFCFC��  � �� �#A3A3A3�� " ��.���  � ��$ Stretch=���  �@��
IsSelected �� *
IsSelected+�� .R�� 
������ .+��� $ 
Horizontal=�$��30��.+�� $��0,0,5,0q�$��20��$��20��.+��� y��� *	IsHasIcon+$ OneWay=�8   ���� *Icon+� 
������ $	 500�� �� *	ToolTip+.+��� $��12(� .  $��Center=����� *Name+�� .R�� 
������ .+��� $ 
Horizontal=�$��40��.+�� $��0,0,0,0q�$��20��$��20��.+���  �� *	IsChecked+� .+��� $��Center=�.+��� $��12(� .  $��Center=����� *Name+�� $��12(� .  $��Center=����� *Source+�� .R�� 
������  �� $
��Auto ��� $��* ��� $
��Auto � _� .���� .+��� $��Center=�$
��Bold"����� *Title+�� $
��Wrap=�$	��500������ *Description+.+�� $��0��$��48��.+�  $��32��$��32��$M Gpack://application:,,,/Resources/Image/Windows/PackageManager/nuget.png��$	��Top=�$
��Left=�$��5,5,0,0q� �� *	IconUrl+� $��1�� �� $
��Auto ��� $��* � �� $��20 ��� $��* �$��60��.+��� $��Center=�$
��Bold"�$
��Left=����� *Title+�� $ 
Horizontal=�$��1��.+��� $	��由��$��Center=�$��5,0,0,0q��� $��Center=�$��5,0,0,0q����� *	Authors+�� $	��400��$��70��$��1��$��2�����#4D4D4D$	 500��$
��Wrap=�$��WordEllipsis=�$
��Left=����� *Description+� $��2��$��50�� �� $��20 ��� $��20 ��� $��* �.+��� $ 
Horizontal=�$��Center=�.+��� $��v���� ���� *InstalledVersion+�� $ 
Horizontal=�$��1��$��Center=�.+��� ���� *LatestVersion+.���  �� $��* ��� $��35 �.+��  �� $
��250* �$	��150���� $��5 ��� $
��500* �$	��200���� $��5 ��� $
��350* �$	��150��.+�� $��0��.+��� $��1q����#F0F0F0$��Disabled=� �� SelectionMode$ Single=�#��[ #��[ ���� *SettingItems+�� $��1��$��Center=�$��3�����#F0F0F0� $��2�� �� $��* ��� $
��Auto � �� $��30 ��� $��* �.+��� $��0,1,0,1q����#F0F0F0$��2��$��2��     KeepWatermarkOnGotFocus .    	Watermark$$ 此处输入要搜索的内容��$��Center=�$��5,0,0,0q����� *
SearchText+$ TwoWay=�  �� UpdateSourceTrigger$  PropertyChanged=��� $��1��$��Center=�$��Center=�$	��5,0q� �� *IsIncludePrerelease+.��包含预发布版本�� $��1��$��2��$��0q�$��Disabled=�$ Single=���.  #��[ #��[ ���� * PackageSourceSearchResultItems+   $ Loaded��.    . 	 �� *" ListBoxSearchResultLoadedCommand+� $��1��$��2��y��� *IsSearchResultLoading+$ OneWay=�# [ .+��� $��40��$��40��" 	 WpfAnimatedGif.ImageBehavior!   AnimatedSource$?! 9pack://application:,,,/Resources/Image/Ribbon/loading.gif���� $��3��$��Center=�$��3�����#F0F0F0� $��4��y��� *)'IsPackageSourceSearchResultItemSelected+$ OneWay=�# [  �� $
��Auto ��� $��* �.+��� $��1q����#F0F0F0$��0,0,-0.4,0.2q�$��2��� $��0�� �� $��60 ��� $��* ��� $��* � �� $
��Auto ��� $
��Auto ��� $��32 ��� $��32 �.+��� $ 
Horizontal=�$��0��$��0��$��3��.+�� .+�  $��5,0,0,0q�$��32��$��32��$��Center=�$
��Left=� �� *SelectedItemIconDefault+ �� *SelectedItemIconUrl+�� " �� 
IsReadOnly" . $��0q�$��Center=�$��7,0,0,0q����� *SelectedItemTitle+� $��1��$��32��y��� *SelectedItemIsInstalled+$ OneWay=�  BoolCollapsedConverter# [ �� $��1��$��Center=�$��5,0,0,0q�$
��Left=�$
��Bold"�y��� *SelectedItemIsInstalled+$ OneWay=�# [ 	已安装�� $��1��$��1��$	��5,0q�$��Center=�$
��Left=����� *SelectedItemInstalledVersion+y��� *SelectedItemIsInstalled+$ OneWay=�# [ �� $��1��$��2��$��20��$	��5,0q�$��Stretch=�y��� *SelectedItemIsInstalled+$ OneWay=�# [ .��卸载�� $��2��$��5,0,0,0q�$��Center=�$
��Left=�$
��Bold"�版本�� $��2��$��1��$��20��$	��5,0q�$��Center=����� *SelectedItemVersionList+# �� SelectedIndex# �� *&$SelectedItemVersionListSelectedIndex+$ �� SelectedValue$ �� *(&SelectedItemVersionListSelectedVersion+�� $��2��$��2��$��20��$	��5,0q�$��Stretch=�{��� *SelectedItemIsNeedUpdate+y��� *SelectedItemIsInstalled+$ OneWay=�# [ .��更新�� $��2��$��2��$��20��$	��5,0q�$��Stretch=�y��� *SelectedItemIsInstalled+$ OneWay=�  BoolNotVisibilityConverter# [ ���� *SelectedItemInstallCommand+.��
安装�� $��3��$��5,0,0,0q�$��Center=�$
��Left=�$
��Bold"�运行规则�� $��3��$��1��$��2��$��20��$	��5,0q�$��Center=�# �� **(SelectedItemRuntimeRuleListSelectedIndex+.@��� .��严格�� .��最低适用� $��1��.+��� $��1�����#c7c8c9$	��5,0q�$	��Top=��� $
��5,10q�" . % �� IsDocumentEnabled% . $��0q�"& �� VerticalScrollBarVisibility$
& Auto=�   $ Loaded��.    . 	 �� *RichTextBoxLoadedCommand+. �/� � $��2��$��3��
�������y��� *IsSettingsShow+$ OneWay=�# [    $ MouseLeftButtonDown��.    . 	 �� *MouseLeftButtonDownCommand+ �� $��* ��� $��* ��� $��80 �.+��� $��1q����#F0F0F0$��	0,0,0,0.2q�$��3���  �� $��40 ��� $��* �.+�� $��
10,10,10,0q�.+��� $��Center=�$
��Left=�默认包源地址�� $��1��$��1q����#ABABAB$��Disabled=�$ Single=�$��	10,0,10,0q���.  #��[ #��[ ���� *DefaultPackageSourceItems+� $��1�� �� $��40 ��� $��* �.+�� $��
10,10,10,0q�.+��� $��Center=�$
��Left=�用户自定义包源地址�� $ 
Horizontal=�$��Right=�.+��� $ 新建包源��$	 500��  ToolBarButtonStyle#��[ $��20��$��20��{��� *IsAddPackageSourceEnabled+���� *AddPackageSourceCommand+.��+�� $ 删除包源��$	 500��#��[ $��20��$��20��$��5,0,0,0q�{��� *IsRemovePackageSourceEnabled+���� *RemovePackageSourceCommand+.��-�� $ 上移包源��$	 500��#��[ $��20��$��20��$��5,0,0,0q�{��� *IsMoveUpPackageSourceEnabled+���� *MoveUpPackageSourceCommand+.��∧�� $ 下移包源��$	 500��#��[ $��20��$��20��$��5,0,0,0q�{��� * IsMoveDownPackageSourceEnabled+���� *MoveDownPackageSourceCommand+.��∨�� $��1��$��1q����#ABABAB$��Disabled=�$ Single=�$��	10,0,10,0q���.  #��[ #��[ ���� *UserDefinePackageSourceItems+   $ Loaded��.    . 	 �� *ListBoxLoadedCommand+� $��2��$��
0,10,10,10q� �� $��60 ��� $��* ��� $	��120 � �� $��* ��� $��* �.+��� $��Center=�$��Center=�包源名称�� $��1��$��Center=�$��Center=�包源地址   . $ 此处输入包源名称��$��1��$��Center=�" �� *IsOperatePackageSourceEnabled+$ OneWay=� 	 BoolNotConverter# [	 ���� *PackageSourceName+$ TwoWay=�$  PropertyChanged=�   . $ 此处输入包源地址��$��1��$��1��$��Center=�" �� *IsOperatePackageSourceEnabled+$ OneWay=�# [	 ���� *PackageSourceUri+$ TwoWay=�$  PropertyChanged=��� $��2��$��1��$ 
Horizontal=�$��Right=�.+��� $! 选择一个本地源路径��$	 500��#��[ $��35��$��23��{��� *IsOperatePackageSourceEnabled+���� * BrowserPackageSourceDirCommand+.��...�� $] W将用户设置的包源名称和地址信息存到用户自定义包源地址列表中��$	 500��#��[ $��60��$��23��$��10,0,0,0q�{��� *IsOperatePackageSourceEnabled+y��� *IsShowUpdatePackageSourceBtn+$ OneWay=� 
 BoolNotCollapsedConverter# [
 ���� *%#AddPackageSourceToConfigFileCommand+.��添加�� $6 0更新用户设置的包源名称和地址信息��$	 500��#��[ $��60��$��23��$��10,0,0,0q�{��� *IsOperatePackageSourceEnabled+y��� *IsShowUpdatePackageSourceBtn+$ OneWay=�# [ ���� *(&UpdatePackageSourceToConfigFileCommand+.��更新� y��� *IsOperateBusy+$ OneWay=�# [ .+�� ���	#FFCCCCCC' J� Opacity$	' 0.5Q�$y�Visible=��� ���#ababab$��1q�$��Center=�$��Center=�$	��360��$	��120��
�������._��� $��Center=�$��Center=�.+��� $��40��$��40��$?! 9pack://application:,,,/Resources/Image/Ribbon/loading.gif���� $��15(�$��0,10,0,0q�正在操作……� $��1�����#F8F8F8.+��� $ 
Horizontal=�$��Right=�.+��� #��[ $��80��$��25��$��关闭��$��	15,0,10,0q����� *CancelCommand+