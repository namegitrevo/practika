unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    con1: TADOConnection;
    tbl1: TADOTable;
    tbl2: TADOTable;
    tbl3: TADOTable;
    tbl4: TADOTable;
    tbl5: TADOTable;
    tbl6: TADOTable;
    tbl7: TADOTable;
    tbl8: TADOTable;
    ds1: TDataSource;
    ds2: TDataSource;
    ds3: TDataSource;
    ds4: TDataSource;
    ds5: TDataSource;
    ds6: TDataSource;
    ds7: TDataSource;
    ds8: TDataSource;
    qry1: TADOQuery;
    atncfldtbl5ID_1: TAutoIncField;
    wdstrngfldtbl5DSDesigner: TWideStringField;
    intgrfldtbl5Id__1: TIntegerField;
    intgrfldtbl5Id_2: TIntegerField;
    wdstrngfldtbl5DSDesigner2: TWideStringField;
    intgrfldtbl5Id_3: TIntegerField;
    intgrfldtbl5DSDesigner3: TIntegerField;
    strngfldtbl5Field: TStringField;
    strngfldtbl5Field1: TStringField;
    atncfldtbl2ID_1: TAutoIncField;
    intgrfldtbl2Id_2: TIntegerField;
    intgrfldtbl2Id_3: TIntegerField;
    dtmfldtbl2DSDesigner: TDateTimeField;
    intgrfldtbl2Id_4: TIntegerField;
    strngfldtbl2Field: TStringField;
    strngfldtbl2Field1: TStringField;
    strngfldtbl2Field2: TStringField;
    atncfldtbl3ID_1: TAutoIncField;
    wdstrngfldtbl3DSDesigner: TWideStringField;
    wdstrngfldtbl3DSDesigner2: TWideStringField;
    wdstrngfldtbl3DSDesigner3: TWideStringField;
    atncfldtbl4ID_1: TAutoIncField;
    intgrfldtbl4Id_2: TIntegerField;
    intgrfldtbl4Id_3: TIntegerField;
    intgrfldtbl4DSDesigner: TIntegerField;
    dtmfldtbl4DSDesigner2: TDateTimeField;
    strngfldtbl4Field: TStringField;
    strngfldtbl4Field1: TStringField;
    atncfldtbl6ID_1: TAutoIncField;
    wdstrngfldtbl6DSDesigner: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
