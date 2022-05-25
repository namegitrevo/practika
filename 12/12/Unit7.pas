unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ToolWin, ComCtrls, Grids, DBGrids, DBCtrls,
  ImgList,ComObj, Menus, Mask,ShellAPI, jpeg;

type
  TForm7 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses
  Unit2, Unit8;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
DataModule2.tbl4.Insert;
Form8.Show;
end;

procedure TForm7.btn2Click(Sender: TObject);
var XLApp,Sheet,Colum:Variant;
index,i,j,k:Integer;
begin
 XLApp:= CreateOleObject('Excel.Application');
 XLApp.Visible:=true;
 XLApp.Workbooks.Add(-4167);
 XLApp.Workbooks[1].WorkSheets[1].Name:='Отчёт';
 Colum:=XLApp.Workbooks[1].WorkSheets['Отчёт'].Columns;

 Colum.Columns[1].ColumnWidth:=35;
 Colum.Columns[2].ColumnWidth:=20;
 Colum.Columns[3].ColumnWidth:=25;
 Colum.Columns[4].ColumnWidth:=27;
 Colum.Columns[5].ColumnWidth:=15;
 Colum.Columns[6].ColumnWidth:=30;
 Colum.Columns[7].ColumnWidth:=30;
 Colum.Columns[8].ColumnWidth:=40;
 Colum.Columns[9].ColumnWidth:=18;

 Colum:=XLApp.Workbooks[1].WorkSheets['Отчёт'].Rows;
 Colum.Rows[2].Font.Bold:=true;
 Colum.Rows[1].Font.Bold:=true;
 Colum.Rows[1].Font.Color:=clBlue;
 Colum.Rows[1].Font.Size:=12;
 Colum.Rows[2].Font.Size:=12;
 Colum.Rows[3].Font.Size:=12;
 Colum.Rows[4].Font.Size:=12;
 Colum.Rows[5].Font.Size:=12;
 Colum.Rows[6].Font.Size:=12;
 Colum.Rows[7].Font.Size:=12;
 Colum.Rows[8].Font.Size:=12;
 Colum.Rows[9].Font.Size:=12;
 Colum.Rows.Font.Name:=' Times New Roman';

 Sheet:=XLApp.Workbooks[1].WorkSheets['Отчёт'];
  Sheet.cells[2,5]:='Отчет о поступлениях';
  Sheet.cells[2,1]:=date;
  Sheet.cells[2,2]:='Продукция';
  Sheet.cells[2,3]:='Количество';
  Sheet.cells[2,4]:='Поставщик';
  Sheet.cells[2,5]:='Дата';
  index:=4;
DataModule2.tbl4.First;
for i:=0 to DataModule2. tbl4.RecordCount-1 do
begin
  Sheet.cells[index,2]:=DataModule2. tbl4.Fields.Fields[4].AsString;
  Sheet.cells[index,3]:=DataModule2. tbl4.Fields.Fields[5].AsString;
  Sheet.cells[index,4]:=DataModule2.tbl4.Fields.Fields[6].AsString;
  Sheet.cells[index,5]:=DataModule2.tbl4.Fields.Fields[3].AsString;
    inc(index);
    DataModule2.tbl4.Next;
    end;
end;

end.
