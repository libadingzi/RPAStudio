   M S B A M L   `   `   `  ���� e  aSystem.Activities.Presentation, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35wTclr-namespace:System.Activities.Presentation;assembly=System.Activities.PresentationSystem.Activities.Presentation  �Yclr-namespace:System.Activities.Presentation.View;assembly=System.Activities.Presentation#System.Activities.Presentation.View  �_clr-namespace:System.Activities.Presentation.Converters;assembly=System.Activities.Presentation)System.Activities.Presentation.Converters  R NSystem.Data, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089>.clr-namespace:System.Data;assembly=System.DataSystem.Data N JRPA.Core.Activities, Version=1.0.0.6, Culture=neutral, PublicKeyToken=null]3clr-namespace:RPA.Core.Activities.DataTableActivity%RPA.Core.Activities.DataTableActivity O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem Q MPlugins.Shared.Library, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulluOclr-namespace:Plugins.Shared.Library.Converters;assembly=Plugins.Shared.Library!Plugins.Shared.Library.Converters q=clr-namespace:RPA.Core.Activities.DataTableActivity.Operators/RPA.Core.Activities.DataTableActivity.Operators qMclr-namespace:Plugins.Shared.Library.Controls;assembly=Plugins.Shared.LibraryPlugins.Shared.Library.Controls H   BRPA.Core.Activities.DataTableActivity.Dialog.FilterDataTableWizard   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     dsapTclr-namespace:System.Activities.Presentation;assembly=System.Activities.Presentation     jsapvYclr-namespace:System.Activities.Presentation.View;assembly=System.Activities.Presentation     psapc_clr-namespace:System.Activities.Presentation.Converters;assembly=System.Activities.Presentation     =sd.clr-namespace:System.Data;assembly=System.Data     Elocal3clr-namespace:RPA.Core.Activities.DataTableActivity     Gthemes4http://schemas.actiprosoftware.com/winfx/xaml/themes     6sys&clr-namespace:System;assembly=mscorlib     _srcOclr-namespace:Plugins.Shared.Library.Converters;assembly=Plugins.Shared.Library     Nsrc2=clr-namespace:RPA.Core.Activities.DataTableActivity.Operators     ^pslcMclr-namespace:Plugins.Shared.Library.Controls;assembly=Plugins.Shared.Library     $��0q�:   4System.Activities.Presentation.WorkflowElementDialog    WindowResizeMode$  CanResizeWithGrip=�   WindowSizeToContent$ Manual=�$	��540��$	��380��   Title$ 配置向导�� � DataContext ��  �� RelativeSource �� *Self+ � 	Resources    OperatorEnum S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters	 M� TypeName>  8Plugins.Shared.Library.Converters.EnumOperationConverter  EnumOperationConverterI  CPlugins.Shared.Library.Converters.LogicalOperatorToBooleanConverter % !LogicalOperatorToBooleanConverter\  VRPA.Core.Activities.DataTableActivity.Operators.EmptyFilterOperationToBooleanConverter * &EmptyFilterOperationToBooleanConverterC  =Plugins.Shared.Library.Converters.EnumsToDisplayNameConverter  EnumsToDisplayNameConverterM   GSystem.Activities.Presentation.Converters.ArgumentToExpressionConverter ! ArgumentToExpressionConverter
 �� BasedOn �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value;   5System.Activities.Presentation.View.ExpressionTextBox��%�  &	        &	 >     &	 C     &	 H     &	 M     &	 R     '_� W     7_�'  �     '�� ;    S� $ 	GetValues��"   M� $	 local:FilterOperator��          �� 8
   " _� P�  � ��$ Static Empty��. ���  � y�$ 	Collapsed=�P�  � ��$
 Null��. ���  � y�$ 	Collapsed=��� "  .���  � ��$ 23����  �@ MaxLines$ 1����  � ��
 ������� " ��.���  � ��$ 23����  � ��$ 20��.���  � RowDefinitions �� $
��Auto ��� .+�]� $��1q���.  .+��� $
��Left=�$��数据表(输入)��  $
��Left=�$	��120��   MaxLines$ 1��   HintText$ 数据表(输入)��   ExpressionType	  System.Data.DataTable" 	    
Expression ��  �� Path$ ModelItem.DataTable� �� 	Converter# [  �� ConverterParameter$ In�� �� Mode$ TwoWay=�   OwnerActivity �� $ 	ModelItem�  $��Right=�$	��120��   UseLocationExpression . $ 1��$ 数据表(输出)��" 	  �� $ ModelItem.OutputDataTable�# [ $	 Out��$ TwoWay=� �� $ 	ModelItem��� $��Right=�$��数据表(输出)���� $��1��$��1,10,1,0q�.@��� $��	过滤行��.���� $
��Auto=�.���  � IsSharedSizeScope . $��0,5,0,5q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � � ColumnDefinitions �� $��* �.+��� $��1q�$��行过滤模式���� $��1��$��1q� �� Orientation$ 
Horizontal=�$��Stretch=�.+�	� -    	�Name$ KeepRowsRadio��  	� 	GroupName$  RowSelection��$��保留��! d� 	IsChecked$
! TrueY�$��6,2,2,2q�	� -   $ RemoveRowsRadio��$  RowSelection��$��删除��$��10,2,2,2q�� $��2��$��1q� �� $��35 �" z� SharedSizeGroup$
" Col1���� $	��120 �$
" Col2���� $	��150 �$
" Col3���� $��* �.+��� $��1��$	��列���� $��2��$��操作���� $��3��$	��值���� $��3������ $ Filters�$ TwoWay=����� .R��  �� $��35 �$
" Col1���� $	��120 �$
" Col2���� $	��150 �$
" Col3���� $��* ��� $
��Auto �$
" Col5���� $
��Auto �$
" Col6��.+�]� ��. $��1q�.+�d� |�.  $��23��! �� *LogicalOperator+# [ $ TwoWay=����� *LogicalOperator+$ OneWay=����� " d� �� # �� Binding# �� *Index+$ �� Value$ 0.a���  � y�$ 	Collapsed=�.���  � �� �� % �� 
TargetType"% d�& �� Triggers& .R��� #��z��$��1q�#��z��._��� $��Center=�$��Center=�  $��1��$	 列��$��1q� �� *Column+# [ $ In��$ TwoWay=� �� $ 	ModelItem� �� ' �� AncestorType"'  �� $��2��$��Center=�$��1q����� ( �� Source#( [  # [ ) �� SelectedItem) �� *
Operator+# [   $��3��$	 值��$��1q� �� *	Operand+# [ $ In��$ TwoWay=� �� $ 	ModelItem� �� "'  {��� $ Operator�# [ �� -   $��4��|�.  $��1,1,0,1q�
* � Tag* �� $ Index�.��F� $��4q�+����        �@B @B �    @B �@B     	+ �� Stretch$+ Uniform=�$	��1.5��
��������� -   $��5��|�.  $��0,1,1,1q�* �� $ Index�.��F� $��4q�+����        �@B @B �    @B �@B     	$+ Uniform=�$	��1.5��
�������z��� , �� Angle$, 45Q�- �� CenterX$	- 3.5Q�. �� CenterY$	. 3.5Q��� $��	输出列��$	��Top=�.���� $
��Auto=�.���  . $��0,5,0,5q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � �� $��* �.+��� $��1q�$��列选择模式���� $��1��$��1q�$��Stretch=�$ 
Horizontal=�.+�	� -   $ KeepColumnsRadio��$  ColSelection��$��保留��$
! TrueY�$��6,2,2,2q�	� -   $ RemoveColumnsRadio��$  ColSelection��$��删除��$��10,2,2,2q�� $��2��$��1q� �� $��* ��� $
��Auto �$
" Col3���� $
��Auto �$
" Col4��.+��� $	��列��$��Center=��� $��3������ $ SelectColumns����� .R��  �� $��* ��� $
��Auto �$
" Col3���� $
��Auto �$
" Col4��.+�  $	 列��$��1q�{�.  �� *Column+# [ $ In��$ TwoWay=� �� $ 	ModelItem� �� "'  �� -   $��1��|�.  $��1,1,0,1q�* �� $ Index�.��F� $��4q�+����        �@B @B �    @B �@B     	$+ Uniform=�$	��1.5��
��������� -   $��2��|�.  $��0,1,1,1q�* �� $ Index�.��F� $��4q�+����        �@B @B �    @B �@B     	$+ Uniform=�$	��1.5��
�������z��� $, 45Q�$	- 3.5Q�$	. 3.5Q�