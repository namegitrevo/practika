unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ToolWin, ComCtrls, Grids, DBGrids, DBCtrls,
  ImgList,ComObj, Menus, Mask,ShellAPI, jpeg;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pnl3: TPanel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl1: TLabel;
    edt1: TEdit;
    btn4: TButton;
    btn5: TButton;
    img1: TImage;
    procedure btn3Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3, Unit7, Unit9;

{$R *.dfm}

procedure TForm1.btn3Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.edt1Change(Sender: TObject);
begin
 if Length(edt1.Text) > 0 then
begin
DataModule2.tbl5.Filtered:=false;
DataModule2.tbl5.Filter:='Название LIKE '+ #39 + edt1.Text + '%' + #39;
DataModule2.tbl5.Filtered:=true;
end
 else DataModule2.tbl5.Filtered:=false;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form9.Close;
end;

procedure TForm1.btn5Click(Sender: TObject);
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
 Colum.Rows[2].Font.Size:=20;
 Colum.Rows[3].Font.Size:=12;
 Colum.Rows[4].Font.Size:=12;
 Colum.Rows[5].Font.Size:=12;
 Colum.Rows[6].Font.Size:=12;
 Colum.Rows[7].Font.Size:=12;
 Colum.Rows[8].Font.Size:=12;
 Colum.Rows[9].Font.Size:=12;
 Colum.Rows.Font.Name:=' Times New Roman';
 
 Sheet:=XLApp.Workbooks[1].WorkSheets['Отчёт'];
  Sheet.cells[2,5]:='Остатки по складу';
  Sheet.cells[2,1]:=date;
  Sheet.cells[2,2]:='Склад';
  Sheet.cells[2,3]:='Продукция';
  Sheet.cells[2,4]:='Количество';
  Sheet.cells[2,5]:='Тип продукции';
  index:=4;
DataModule2.tbl5.First;
for i:=0 to DataModule2. tbl5.RecordCount-1 do
begin
  Sheet.cells[index,2]:=DataModule2. tbl5.Fields.Fields[7].AsString;
  Sheet.cells[index,3]:=DataModule2. tbl5.Fields.Fields[1].AsString;
  Sheet.cells[index,4]:=DataModule2.tbl5.Fields.Fields[6].AsString;
  Sheet.cells[index,5]:=DataModule2.tbl5.Fields.Fields[8].AsString;
    inc(index);
    DataModule2.tbl5.Next;
    end;
end;

end.
