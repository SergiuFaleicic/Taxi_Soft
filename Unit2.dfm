object DataModule2: TDataModule2
  Height = 670
  Width = 972
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DataSource=BDTAXI'
      'DriverID=ODBC')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 13
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '  select * FROM OPERATOR')
    Left = 127
    Top = 13
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 180
    Top = 13
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM'
      'RAION R INNER JOIN LOCALITATEA L ON R.RAION_ID=L.RAION_ID'
      #9#9'INNER JOIN STRADA S ON S.LOCALITATE_ID=L.LOCALITATE_ID')
    Left = 120
    Top = 87
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 180
    Top = 87
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 180
    Top = 167
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CAROSERIE')
    Left = 120
    Top = 167
  end
  object DataSource4: TDataSource
    DataSet = FDQuery4
    Left = 180
    Top = 255
  end
  object FDQuery4: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CULOAREA')
    Left = 120
    Top = 255
  end
  object DataSource5: TDataSource
    DataSet = FDQuery5
    Left = 180
    Top = 335
  end
  object FDQuery5: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM MARCA')
    Left = 120
    Top = 335
  end
  object DataSource6: TDataSource
    DataSet = FDQuery6
    Left = 180
    Top = 415
  end
  object FDQuery6: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM MODEL WHERE MARCA_ID=:MARCA_ID')
    Left = 120
    Top = 415
    ParamData = <
      item
        Name = 'MARCA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DataSource7: TDataSource
    DataSet = FDQuery7
    Left = 180
    Top = 487
  end
  object FDQuery7: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT * FROM AUTOMOBIL A INNER JOIN CAROSERIE C ON A.CAROSERIE_' +
        'ID=C.CAROSERIE_ID'
      #9#9#9#9#9#9'  INNER JOIN MODEL M ON M.MODEL_ID=A.MODEL_ID'
      #9#9#9#9#9#9'  INNER JOIN MARCA MM ON MM.MARCA_ID=M.MARCA_ID'
      #9#9#9#9#9#9'  INNER JOIN TIP ON TIP.TIP_ID=A.TIP_ID'
      #9#9#9#9#9#9'  INNER JOIN CULOAREA CC ON CC.CULOARE_ID=A.CULOARE_ID;')
    Left = 120
    Top = 487
  end
  object DataSource8: TDataSource
    DataSet = FDQuery8
    Left = 388
    Top = 23
  end
  object FDQuery8: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM TIP')
    Left = 328
    Top = 23
  end
  object INSAUTO: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO AUTOMOBIL(MODEL_ID,CULOARE_ID,CAROSERIE_ID,TIP_ID,NR' +
        '_AUTO,MOTOR,COMBUSTIBIL)'
      
        #9'VALUES(:MODEL_ID,:CULOARE_ID,:CAROSERIE_ID,:TIP_ID,:NR_AUTO,:MO' +
        'TOR,:COMBUSTIBIL)')
    Left = 328
    Top = 111
    ParamData = <
      item
        Name = 'MODEL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CULOARE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CAROSERIE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIP_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NR_AUTO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MOTOR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COMBUSTIBIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object UPDAUTO: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'UPDATE  AUTOMOBIL SET '
      #9'MODEL_ID=:MODEL_ID,'
      #9'CULOARE_ID=:CULOARE_ID,'
      #9'CAROSERIE_ID =:CAROSERIE_ID,'
      #9'NR_AUTO=:NR_AUTO,'
      #9'MOTOR=:MOTOR,'
      #9'COMBUSTIBIL=:COMBUSTIBIL'
      #9'WHERE AUTOMOBIL_ID=:AUTOMOBIL_ID;'
      '')
    Left = 328
    Top = 199
    ParamData = <
      item
        Name = 'MODEL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CULOARE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CAROSERIE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NR_AUTO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MOTOR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COMBUSTIBIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'AUTOMOBIL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DELAUTO: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'DELETE  AUTOMOBIL '
      #9'WHERE AUTOMOBIL_ID=:AUTOMOBIL_ID;'
      '')
    Left = 328
    Top = 295
    ParamData = <
      item
        Name = 'AUTOMOBIL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object INSCOMANDA: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Insert into COMANDA(AUTOMOBIL_ID,LOCALITATE_ID,OPERATOR_ID,NOTA,' +
        'ADRESA_DESTINATIE,PRET,KM,COST_KM)'
      
        'VALUES(:AUTOMOBIL_ID,:LOCALITATE_ID,:OPERATOR_ID,:NOTA,:ADRESA_D' +
        'ESTINATIE,:PRET,:KM,:COST_KM)')
    Left = 328
    Top = 391
    ParamData = <
      item
        Name = 'AUTOMOBIL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOCALITATE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'OPERATOR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NOTA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ADRESA_DESTINATIE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PRET'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'KM'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COST_KM'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end>
  end
end
