unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, jpeg;

type
  TForm6 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    btn1: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
if DataModule2.tbl3.Modified then  DataModule2.tbl3.Post;
Form6.Close;
end;

end.
