   M S B A M L   `   `   `  ���� Q  MPlugins.Shared.Library, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulluOclr-namespace:Plugins.Shared.Library.Converters;assembly=Plugins.Shared.Library!Plugins.Shared.Library.Converters  e aSystem.Activities.Presentation, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35wTclr-namespace:System.Activities.Presentation;assembly=System.Activities.PresentationSystem.Activities.Presentation �Yclr-namespace:System.Activities.Presentation.View;assembly=System.Activities.Presentation#System.Activities.Presentation.View  RPA.Core.ActivitiesG   ARPA.Core.Activities.DataTableActivity.Dialog.BuildDataTableDialog   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     _srcOclr-namespace:Plugins.Shared.Library.Converters;assembly=Plugins.Shared.Library     dsapTclr-namespace:System.Activities.Presentation;assembly=System.Activities.Presentation     jsapvYclr-namespace:System.Activities.Presentation.View;assembly=System.Activities.Presentation       � Title$  构建数据表��$	��300��$	��400�� � 
ResizeMode$ CanResizeWithGrip=�$	��350��$	��500�� � WindowStartupLocation$ CenterScreen=� � DataContext ��  �� RelativeSource �� *Self+ � 	Resources F   @Plugins.Shared.Library.Converters.DataTableColumnToTypeConverter   dataTableColumnConverterL   FPlugins.Shared.Library.Converters.DataTableColumnToPropertiesConverter   dataTablePropertiesConverter  RemoveButtonStyle �� 
TargetType �� 	Resources  Key �� Color	 �� Property
 �� Value �� 
TargetType J� Opacity �� StrokeStartLineCap �� StrokeEndLineCap �� Stretch �� Path E� 
StartPoint �� Point �� Triggers P� Property P� Value �� 
TargetName + 'TabItemRemoveButtonHoverBackgroundBrush + 'TabItemRemoveButtonHoverForegroundBrush - )TabItemRemoveButtonPressedBackgroundBrush ) %TabItemRemoveButtonPressedBorderBrush - )TabItemRemoveButtonPressedForegroundBrush 	 AddButtonStyle �� Angle �� CenterX �� CenterY 
 ColumnHeaderStyle=  7System.Windows.Controls.Primitives.DataGridColumnHeader �� Mode �� AncestorType � RowDefinitions
 � Tag&   System.Windows.Controls.DataGrid � ColumnDefinitions `� 	Converter  �� ElementName! � ToolTip" H� Drawing# I� ClipGeometry$ �� Rect% � Geometry& � Brush' � Cursor  RowHeaderStyle:  4System.Windows.Controls.Primitives.DataGridRowHeader  DataGridStyle( �� Triggers) �� Padding* J� SnapsToDevicePixelsG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter+ �� CanContentScroll, �� ScrollableHeight- � Maximum. �� Orientation*/ �� #ComputedVerticalScrollBarVisibility0 �� ViewportHeight1 �� ViewportSize2 � Value3 �� Mode4 �� ScrollableWidth,5 �� %ComputedHorizontalScrollBarVisibility6 �� ViewportWidth��%�  &	        &	      &	 
     7  7  7  7  7  &		 	    7  7  7  7  7  &	
 .
    7   7  &	 0    7  &	 �    7  7 
 7 	 7      �� " �� ���� ,(TabItemRemoveButtonNormalBackgroundBrush $ 	#00000000���� ($TabItemRemoveButtonNormalBorderBrush $ 	#FFFFFFFF���� ,(TabItemRemoveButtonNormalForegroundBrush $ 	#FF8f949b���� +'TabItemRemoveButtonHoverBackgroundBrush $ 	#FFc13535���� +'TabItemRemoveButtonHoverForegroundBrush $ 	#FFf9ebeb���� -)TabItemRemoveButtonPressedBackgroundBrush $ 	#FF431e20���� )%TabItemRemoveButtonPressedBorderBrush $ 	#FF110033���� -)TabItemRemoveButtonPressedForegroundBrush $ 	#FFf9ebeb��.��� 	 �@J�SnapsToDevicePixels
 .  �� 	 �@�Cursor$

 Hand���� 	 � |�
 .  �� 	 � ��
 �� " ��.R�� 
������ .+�A� $��backgroundEllipse��F� $��
ButtonPath��$��3q�$	 0.5Q�$	��1.5��$ Square=�$ Square=�$ Uniform=�$��Center=�$��Center=�����  �� *Self+$ (TextElement.Foreground)���B� ��E� $	 0,0&�.���� $ 25,25&�E� $
 0,25&�.���� $
 25,0&� P�  �@J�IsMouseOver . . ��� $ backgroundEllipse��8
   	 � ���� $ 
ButtonPath��8
  	 � ��P�  � {� .  . ��� 	 � y�$
 	Collapsed=�P�  � �� . . ��� $ backgroundEllipse��8
  	 � ���� $ backgroundEllipse��8
  	 � ���� $ 
ButtonPath��8
  	 � ���� " �� ���� ,(TabItemRemoveButtonNormalBackgroundBrush $ 	#00000000���� ($TabItemRemoveButtonNormalBorderBrush $ 	#FFFFFFFF���� ,(TabItemRemoveButtonNormalForegroundBrush $ 	#FF8f949b���� +'TabItemRemoveButtonHoverBackgroundBrush $ 	#FFc13535���� +'TabItemRemoveButtonHoverForegroundBrush $ 	#FFf9ebeb���� -)TabItemRemoveButtonPressedBackgroundBrush $ 	#FF431e20���� )%TabItemRemoveButtonPressedBorderBrush $ 	#FF110033���� -)TabItemRemoveButtonPressedForegroundBrush $ 	#FFf9ebeb��.��� 	 �@J�SnapsToDevicePixels
 .  �� 	 �@�Cursor$

 Hand���� 	 � |�
 .  �� 	 � ��
 �� " ��.R�� 
������ .+�A� $��backgroundEllipse��F� $��
ButtonPath��$��2q�$	 0.5Q�$	��1.5��$ Square=�$ Square=�$ Uniform=�$��Center=�$��Center=�����  �� *Self+$ (TextElement.Foreground)�z��� $ 45Q�$	 3.5Q�$	 3.5Q���B� ��E� $	 0,0&�.���� $ 25,25&�E� $
 0,25&�.���� $
 25,0&� P�  �@J�IsMouseOver . . ��� $ backgroundEllipse��8
   	 � ���� $ 
ButtonPath��8
  	 � ��P�  � {� .  . ��� 	 � y�$
 	Collapsed=�P�  � �� . . ��� $ backgroundEllipse��8
  	 � ���� $ backgroundEllipse��8
  	 � ���� $ 
ButtonPath��8
  	 � ���� "   ���� ,(TabItemRemoveButtonNormalBackgroundBrush $ 	#00000000���� ($TabItemRemoveButtonNormalBorderBrush $ 	#FFFFFFFF���� ,(TabItemRemoveButtonNormalForegroundBrush $ 	#FF8f949b���� +'TabItemRemoveButtonHoverBackgroundBrush $ 	#FFc13535���� +'TabItemRemoveButtonHoverForegroundBrush $ 	#FFf9ebeb���� -)TabItemRemoveButtonPressedBackgroundBrush $ 	#FF431e20���� )%TabItemRemoveButtonPressedBorderBrush $ 	#FF110033���� -)TabItemRemoveButtonPressedForegroundBrush $ 	#FFf9ebeb��.��� 	 � ��
 �� "  .R�� #��z������  �� $ FindAncestor=�$
 GridL�$ 
Background� �� $��* ��� $
��Auto �.+��� $	��0.5q�# z��$��0������ *VerticalGridLinesBrush+ �� *FindAncestor+"  ����  �� $ FindAncestor=�$
 GridL�$ 
Background�._�� $	��5,0q� �� $��* ��� $
��Auto � �� $��* ��� $
��Auto �.+��� $��0��$��0��#��z��$��0,3,0,0q�$��Center=�$
��Wrap=��� $��0��$��1��$��Center=�$
��Wrap=�$	��0,3q���`� 8   .1��� �� $  TableDataGrid��$ DataContext��� $��RemoveColumnButton��-   8�� $��5,0,0,0q�$��1��$��0��$��12��$��12��$ ! Static RemoveColumnToolTip���� $��EditColumnButton��-   $��1��$��1��$��5,0,0,0q�$��12��$��12��$! Static EditColumnToolTip������ " ��.��� 	 � ��$
 0q�.���� ��H� " I� # �� $$ 0,0,47.945,48.289�.��� �% ������� ���Mb�0@Ȱ\�D�l���0@��^ш ��Ә� �8��$ �����/�$�?�����m ���8� HN�� h�����8������3�ȩ �?��Ȼ{ X��[�A �x�`xu���Vk����(#q�� ��7��o �h+�(Su X����S� @����� ИQȉ$�xB��y �����!^ ј� �=�8�� (1Eј��M.�,� (��Q��� ���x�V@@јk` 8oV��c �gc��l HSvXn� �B~�� ����8x���T �x�eh^% �� 8(�& ��  �� " ��$ (TextElement.Foreground)�n� $��PART_RightHeaderGripper��$��1��$��Right=�$��1��$��1q�$' SizeWE������ *VerticalGridLinesBrush+ �� *FindAncestor+"  �� "  .��� 	 � ��$
 25���� 	 � ��
 �� "  .R�� #��z�� �� $��* ��� $
��Auto �.+��� $��0,0,1,0q�
���   �$��0��._��� -   8��  $��2q�$��Center=�$��Center=�$! Static RemoveRowToolTip��$��12��$��12��n� $��PART_BottomHeaderGripper��$��1��$��Bottom=�$��1��$��1q�$' SizeNS������ *VerticalGridLinesBrush+ �� *FindAncestor+"  �� "   ���� ,(TabItemRemoveButtonNormalBackgroundBrush $ 	#00000000���� ($TabItemRemoveButtonNormalBorderBrush $ 	#FFFFFFFF���� ,(TabItemRemoveButtonNormalForegroundBrush $ 	#FF8f949b���� +'TabItemRemoveButtonHoverBackgroundBrush $ 	#FFc13535���� +'TabItemRemoveButtonHoverForegroundBrush $ 	#FFf9ebeb���� -)TabItemRemoveButtonPressedBackgroundBrush $ 	#FF431e20���� )%TabItemRemoveButtonPressedBorderBrush $ 	#FF110033���� -)TabItemRemoveButtonPressedForegroundBrush $ 	#FFf9ebeb��( P�  �@��
IsGrouping . . ��� 	 � ��
 .  .���  	 �@ RowDetailsVisibilityMode$
 VisibleWhenSelected=��� 	 � ��
 . �� 	 �@��PanningMode$

 Both=��� 	 �@��IsFlicksEnabled
 .  �� 	 � |�
 . �� 	 �@ SelectionMode$
 Single=��� 	 �@ CanUserAddRows
 . �� 	 �@ CanUserDeleteRows
 . �� 	 �@ 
IsReadOnly
 .  �� 	 �@ AutoGenerateColumns
 . �� 	 �@ CanUserResizeColumns
 . �� 	 �@ CanUserResizeRows
 . �� 	 �@ CanUserReorderColumns
 .  �� 	 �@ CanUserSortColumns
 .  ��  	 �@ AlternatingRowBackground

 ������� 	 �@ RowHeaderStyle8
   �� 	 �@ ColumnHeaderStyle8
  �� 	 � ��$
 1q��� 	 � ��
 �� "  .R��� #��z��#��z��#��z��#) z��* . ._��� $��DG_ScrollViewer��|�.  ���� " ��.R��  �� $��25 ��� $��* ��� $
��Auto � �� $
��Auto ��� $��* ��� $
��Auto �.+��� -   8�� $��Center=�$��Center=�$��Right=�$��12��$��12��$! Static AddColumnToolTip��8��   $!��PART_ColumnHeadersPresenter��$��1��$y�Visible=��� $!��PART_ScrollContentPresenter��#+ z��$��2��$��1���� $��PART_VerticalScrollBar��$��2��#- z, $. Vertical=�$��1��#y�z/ #1 z0 2 �� *VerticalOffset+$3 OneWay=� �� *TemplatedParent+� $��1��$��2�� �� ���� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� $��* �.+��� $��PART_HorizontalScrollBar��$��1��#- z4 $. 
Horizontal=�#y�z5 #1 z6 2 �� *HorizontalOffset+$3 OneWay=� �� *TemplatedParent+.���� #* z* .��]� ��. $��10q�.+�]� $��0,10,0,0q�$��Bottom=�$��Right=���. .+��� -   $��取消��$��Right=�$��65���� -   $��OKButton��$��确定��$��Right=�$��65��$
��10,0q�  -   $��TableDataGrid��$	��Top=�7   MinColumnWidth$7 70Q�8   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$8 * 9   MinRowHeight$9 25Q�$��Center=���. $:   HorizontalScrollBarVisibility$
: Auto=�";   VerticalScrollBarVisibility$
; Auto=�<   CanUserReorderColumns< . #��[ 