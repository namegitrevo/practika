unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm9 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit2, Unit1;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
DataModule2.qry1.SQL.Clear;
  DataModule2.qry1.SQL.Add('SELECT Пароль FROM Авторизация WHERE Логин='''+edt1.Text+'''');
  DataModule2.qry1.Open;
    if DataModule2.qry1.IsEmpty  then MessageBox(Handle, 'Неверный логин!', 'Ошибка!', 0)
    else
      if DataModule2.qry1.FieldByName('Пароль').Value <> edt2.Text  then
        begin
          MessageBox(Handle, 'Неверный пароль!', 'Ошибка!', 0);
        end
      else
        begin
          ModalResult:=mrOK;
          form1.Show;
          form9.visible:=false;
        end;
end;

end.
