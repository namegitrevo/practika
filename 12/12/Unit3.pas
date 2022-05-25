unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ToolWin, ComCtrls, Grids, DBGrids, DBCtrls,
  ImgList,ComObj, Menus, Mask,ShellAPI, jpeg;

type
  TForm3 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    img1: TImage;
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit2, Unit4, Unit5;

{$R *.dfm}

procedure TForm3.btn3Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule2.tbl2.Insert;
Form5.Show;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule2.tbl2.Edit;
DataModule2.tbl2.Fields.Fields[4].Text:='1';
DataModule2.tbl2.Post;
end;

procedure TForm3.btn4Click(Sender: TObject);
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
  Sheet.cells[2,5]:='Отчет о заявках';
  Sheet.cells[2,1]:=date;
  Sheet.cells[2,2]:='Поставщик';
  Sheet.cells[2,3]:='Продукция';
  Sheet.cells[2,4]:='Статус';
  Sheet.cells[2,5]:='Дата';
  index:=4;
DataModule2.tbl2.First;
for i:=0 to DataModule2. tbl2.RecordCount-1 do
begin
  Sheet.cells[index,2]:=DataModule2. tbl2.Fields.Fields[5].AsString;
  Sheet.cells[index,3]:=DataModule2. tbl2.Fields.Fields[6].AsString;
  Sheet.cells[index,4]:=DataModule2.tbl2.Fields.Fields[7].AsString;
  Sheet.cells[index,5]:=DataModule2.tbl2.Fields.Fields[3].AsString;
    inc(index);
    DataModule2.tbl2.Next;
    end;
end;

end.
