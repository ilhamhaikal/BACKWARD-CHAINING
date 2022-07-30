object DM1: TDM1
  OldCreateOrder = False
  Left = 712
  Top = 123
  Height = 263
  Width = 334
  object con1: TZConnection
    UTF8StringsAsWideField = False
    PreprepareSQL = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sistempakar_db'
    User = 'root'
    Protocol = 'mysql'
    Left = 16
    Top = 24
  end
  object Gejala_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*From tabelgejala'
      'order by KodeGejala')
    Params = <>
    Left = 16
    Top = 88
  end
  object Penyakit_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelpenyakit'
      'order by KodePenyakit')
    Params = <>
    Left = 80
    Top = 88
  end
  object Pertanyaan_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelpertanyaan '
      'order by KodePertanyaan')
    Params = <>
    Left = 152
    Top = 88
  end
  object Rule_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelrule'
      'order by KodeRule')
    Params = <>
    Left = 216
    Top = 88
  end
  object pRule_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelrule')
    Params = <>
    Left = 264
    Top = 88
    object pRule_zqKodeRule: TStringField
      FieldName = 'KodeRule'
      Required = True
      Size = 6
    end
    object pRule_zqkodepertanyaan1: TStringField
      FieldName = 'kodepertanyaan1'
      Size = 50
    end
    object pRule_zqkodepenyakit: TStringField
      FieldName = 'kodepenyakit'
      Size = 6
    end
    object pRule_zqrfNamaPenyakit: TStringField
      FieldKind = fkLookup
      FieldName = 'rfNamaPenyakit'
      LookupDataSet = Penyakit_zq
      LookupKeyFields = 'KodePenyakit'
      LookupResultField = 'NamaPenyakit'
      KeyFields = 'kodepenyakit'
      Lookup = True
    end
  end
  object Gejala_ds: TDataSource
    DataSet = Gejala_zq
    Left = 16
    Top = 152
  end
  object Penyakit_ds: TDataSource
    DataSet = Penyakit_zq
    Left = 80
    Top = 152
  end
  object Pertanyaan_ds: TDataSource
    DataSet = Pertanyaan_zq
    Left = 152
    Top = 152
  end
  object Rule_ds: TDataSource
    DataSet = Rule_zq
    Left = 216
    Top = 152
  end
  object pRule_ds: TDataSource
    DataSet = pRule_zq
    Left = 264
    Top = 152
  end
end
