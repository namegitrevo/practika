unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, jpeg;

type
  TForm5 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    dtp1: TDateTimePicker;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn1: TButton;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
var i:Integer;
begin
i:=cbb1.ItemIndex;
  case i of
   0: DataModule2.tbl2.Fields.Fields[1].Text:='1';
   1: DataModule2.tbl2.Fields.Fields[1].Text:='2';
   2: DataModule2.tbl2.Fields.Fields[1].Text:='3';
  end;
  i:=cbb2.ItemIndex;
  case i of
   0: DataModule2.tbl2.Fields.Fields[2].Text:='1';
   1: DataModule2.tbl2.Fields.Fields[2].Text:='2';
   2: DataModule2.tbl2.Fields.Fields[2].Text:='3';
   3: DataModule2.tbl2.Fields.Fields[2].Text:='4';
   4: DataModule2.tbl2.Fields.Fields[2].Text:='5';
   5: DataModule2.tbl2.Fields.Fields[2].Text:='6';
   6: DataModule2.tbl2.Fields.Fields[2].Text:='7';
   7: DataModule2.tbl2.Fields.Fields[2].Text:='8';
   8: DataModule2.tbl2.Fields.Fields[2].Text:='9';
  end;
i:=cbb3.ItemIndex;
  case i of

   0: DataModule2.tbl2.Fields.Fields[4].Text:='1';
   1: DataModule2.tbl2.Fields.Fields[4].Text:='2';
  end;
  DataModule2.tbl2.Fields.Fields[3].Text:=DateToStr(dtp1.Date);
if DataModule2.tbl2.Modified then DataModule2.tbl2.Post;
Form5.Close;
end;


end.
