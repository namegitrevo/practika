object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 194
  Top = 125
  Height = 508
  Width = 293
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='#1041#1044'.accdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 30
    Top = 16
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
    Left = 13
    Top = 67
  end
  object tbl2: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1047#1072#1103#1074#1082#1072
    Left = 13
    Top = 128
    object atncfldtbl2ID_1: TAutoIncField
      FieldName = 'ID_'#1079#1072#1103#1074#1082#1080
      ReadOnly = True
      Visible = False
    end
    object intgrfldtbl2Id_2: TIntegerField
      FieldName = 'Id_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Visible = False
    end
    object intgrfldtbl2Id_3: TIntegerField
      FieldName = 'Id_'#1087#1088#1086#1076#1091#1082#1094#1080#1080
      Visible = False
    end
    object dtmfldtbl2DSDesigner: TDateTimeField
      FieldName = #1044#1072#1090#1072
    end
    object intgrfldtbl2Id_4: TIntegerField
      FieldName = 'Id_'#1089#1090#1072#1090#1091#1089#1072
      Visible = False
    end
    object strngfldtbl2Field: TStringField
      FieldKind = fkLookup
      FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      LookupDataSet = tbl3
      LookupKeyFields = 'ID_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      LookupResultField = #1060#1072#1084#1080#1083#1080#1103
      KeyFields = 'Id_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Lookup = True
    end
    object strngfldtbl2Field1: TStringField
      FieldKind = fkLookup
      FieldName = #1055#1088#1086#1076#1091#1082#1094#1080#1103
      LookupDataSet = tbl5
      LookupKeyFields = 'ID_'#1087#1088#1086#1076#1091#1082#1090#1072
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077
      KeyFields = 'Id_'#1087#1088#1086#1076#1091#1082#1094#1080#1080
      Size = 40
      Lookup = True
    end
    object strngfldtbl2Field2: TStringField
      FieldKind = fkLookup
      FieldName = #1057#1090#1072#1090#1091#1089
      LookupDataSet = tbl7
      LookupKeyFields = 'ID_'#1089#1090#1072#1090#1091#1089#1072
      LookupResultField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      KeyFields = 'Id_'#1089#1090#1072#1090#1091#1089#1072
      Lookup = True
    end
  end
  object tbl3: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    IndexFieldNames = 'ID_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
    TableName = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
    Left = 19
    Top = 199
    object atncfldtbl3ID_1: TAutoIncField
      FieldName = 'ID_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      ReadOnly = True
      Visible = False
    end
    object wdstrngfldtbl3DSDesigner: TWideStringField
      FieldName = #1060#1072#1084#1080#1083#1080#1103
    end
    object wdstrngfldtbl3DSDesigner2: TWideStringField
      FieldName = #1048#1084#1103
    end
    object wdstrngfldtbl3DSDesigner3: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      Size = 12
    end
  end
  object tbl4: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077'_'#1085#1072'_'#1089#1082#1083#1072#1076
    Left = 29
    Top = 257
    object atncfldtbl4ID_1: TAutoIncField
      FieldName = 'ID_'#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
      ReadOnly = True
      Visible = False
    end
    object intgrfldtbl4Id_2: TIntegerField
      FieldName = 'Id_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Visible = False
    end
    object intgrfldtbl4Id_3: TIntegerField
      FieldName = 'Id_'#1087#1088#1086#1076#1091#1082#1094#1080#1080
      Visible = False
    end
    object dtmfldtbl4DSDesigner2: TDateTimeField
      FieldName = #1044#1072#1090#1072
    end
    object strngfldtbl4Field1: TStringField
      FieldKind = fkLookup
      FieldName = #1055#1088#1086#1076#1091#1082#1094#1080#1103
      LookupDataSet = tbl5
      LookupKeyFields = 'ID_'#1087#1088#1086#1076#1091#1082#1090#1072
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077
      KeyFields = 'Id_'#1087#1088#1086#1076#1091#1082#1094#1080#1080
      Size = 40
      Lookup = True
    end
    object intgrfldtbl4DSDesigner: TIntegerField
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object strngfldtbl4Field: TStringField
      FieldKind = fkLookup
      FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      LookupDataSet = tbl3
      LookupKeyFields = 'ID_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      LookupResultField = #1060#1072#1084#1080#1083#1080#1103
      KeyFields = 'Id_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Lookup = True
    end
  end
  object tbl5: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1055#1088#1086#1076#1091#1082#1094#1080#1103
    Left = 18
    Top = 330
    object atncfldtbl5ID_1: TAutoIncField
      FieldName = 'ID_'#1087#1088#1086#1076#1091#1082#1090#1072
      ReadOnly = True
      Visible = False
    end
    object wdstrngfldtbl5DSDesigner: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Size = 50
    end
    object intgrfldtbl5Id__1: TIntegerField
      FieldName = 'Id_'#1090#1080#1087#1072'_'#1087#1088#1086#1076#1091#1082#1094#1080#1080
      Visible = False
    end
    object intgrfldtbl5Id_2: TIntegerField
      FieldName = 'Id_'#1089#1082#1083#1072#1076#1072
      Visible = False
    end
    object wdstrngfldtbl5DSDesigner2: TWideStringField
      FieldName = #1062#1077#1085#1072
      Visible = False
      Size = 255
    end
    object intgrfldtbl5Id_3: TIntegerField
      FieldName = 'Id_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Visible = False
    end
    object intgrfldtbl5DSDesigner3: TIntegerField
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object strngfldtbl5Field: TStringField
      FieldKind = fkLookup
      FieldName = #1057#1082#1083#1072#1076
      LookupDataSet = tbl6
      LookupKeyFields = 'ID_'#1089#1082#1083#1072#1076#1072
      LookupResultField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      KeyFields = 'Id_'#1089#1082#1083#1072#1076#1072
      Lookup = True
    end
    object strngfldtbl5Field1: TStringField
      FieldKind = fkLookup
      FieldName = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      LookupDataSet = tbl8
      LookupKeyFields = 'ID_'#1090#1080#1087'_'#1087#1088#1086#1076#1091#1082#1094#1080#1080
      LookupResultField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      KeyFields = 'Id_'#1090#1080#1087#1072'_'#1087#1088#1086#1076#1091#1082#1094#1080#1080
      Size = 35
      Lookup = True
    end
  end
  object tbl6: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1057#1082#1083#1072#1076#1099
    Left = 30
    Top = 400
    object atncfldtbl6ID_1: TAutoIncField
      FieldName = 'ID_'#1089#1082#1083#1072#1076#1072
      ReadOnly = True
    end
    object wdstrngfldtbl6DSDesigner: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 255
    end
  end
  object tbl7: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1057#1090#1072#1090#1091#1089'_'#1079#1072#1103#1074#1082#1080
    Left = 124
    Top = 17
  end
  object tbl8: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = #1058#1080#1087'_'#1087#1088#1086#1076#1091#1082#1094#1080#1080
    Left = 139
    Top = 77
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 59
    Top = 82
  end
  object ds2: TDataSource
    DataSet = tbl2
    Left = 65
    Top = 145
  end
  object ds3: TDataSource
    DataSet = tbl3
    Left = 77
    Top = 204
  end
  object ds4: TDataSource
    DataSet = tbl4
    Left = 78
    Top = 269
  end
  object ds5: TDataSource
    DataSet = tbl5
    Left = 74
    Top = 339
  end
  object ds6: TDataSource
    DataSet = tbl6
    Left = 88
    Top = 395
  end
  object ds7: TDataSource
    DataSet = tbl7
    Left = 182
    Top = 24
  end
  object ds8: TDataSource
    DataSet = tbl8
    Left = 186
    Top = 74
  end
  object qry1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 150
    Top = 166
  end
end
