   M S B A M L   `   `   `  ����B  >CafeWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:CafeWPF.PagesCafeWPF.Pages  5          CafeWPF.Pages.SmenaPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:CafeWPF.Pages     5        N� Title$  	SmenaPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      .+�5   
   �� -   5         ��Name$
 smen��5      $��Center=�62   $��
Смена��6N   $	��150��6^   ���#b24e26$��16(�6�   
�������$��30��5      $��5q�6&   $��Right=�61   $��Comic Sans MS)�6N   $��0��6i   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DataGridSmena��5       $��1��6      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Сотрудник��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 69   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5      `� 5      	 �� StringFormat$	  {0} {1} {2}��6'   .1�5      �� 
 �� Path$
 WorkTable.Fname�6&   �� 5      $
 WorkTable.Name�6&   �� 5      $
 WorkTable.Lname�6&   5      5        5      $ Дата��6%   $
 auto 6P    63   �� *
DateExit+6P     5      $ 
Время��6%   $
 auto 6M    64   �� *Time+6M   5       5!      5"      