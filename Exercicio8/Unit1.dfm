object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 489
  ClientWidth = 1041
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 41
    Top = 8
    Width = 992
    Height = 1403
    DataSource = DBFonte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = []
    object RLBCabecalho: TRLBand
      Left = 47
      Top = 47
      Width = 898
      Height = 34
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 16
        Top = 9
        Width = 51
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 368
        Top = 9
        Width = 126
        Height = 19
        Caption = 'SEO SISTEMAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 784
        Top = 9
        Width = 52
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = ''
      end
    end
    object RLBTitulo: TRLBand
      Left = 47
      Top = 81
      Width = 898
      Height = 103
      BandType = btTitle
      object RLLabel2: TRLLabel
        Left = 3
        Top = 35
        Width = 898
        Height = 38
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -33
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBColunas: TRLBand
      Left = 47
      Top = 184
      Width = 898
      Height = 44
      Background.Align = faNone
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel3: TRLLabel
        Left = 25
        Top = 6
        Width = 57
        Height = 19
        Caption = 'C'#243'digo'
        HoldStyle = hsVertically
      end
      object RLLabel4: TRLLabel
        Left = 107
        Top = 6
        Width = 47
        Height = 19
        Caption = 'Nome'
        HoldStyle = hsVertically
      end
      object RLLabel5: TRLLabel
        Left = 394
        Top = 0
        Width = 57
        Height = 19
        Caption = 'Cidade'
        HoldStyle = hsVertically
      end
      object RLLabel6: TRLLabel
        Left = 580
        Top = 3
        Width = 26
        Height = 19
        Caption = 'UF'
        HoldStyle = hsVertically
      end
      object RLLabel7: TRLLabel
        Left = 695
        Top = 3
        Width = 42
        Height = 19
        Caption = 'Fone'
        HoldStyle = hsVertically
      end
    end
    object RLBDetail: TRLBand
      Left = 47
      Top = 228
      Width = 898
      Height = 37
      object RLDBText1: TRLDBText
        Left = 25
        Top = 3
        Width = 129
        Height = 19
        DataField = 'CD_CODIGOCLI'
        DataSource = DBFonte
        HoldStyle = hsVertically
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 107
        Top = 3
        Width = 84
        Height = 19
        DataField = 'DS_NOME'
        DataSource = DBFonte
        HoldStyle = hsVertically
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 394
        Top = 3
        Width = 100
        Height = 19
        DataField = 'DS_CIDADE'
        DataSource = DBFonte
        HoldStyle = hsVertically
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 580
        Top = 3
        Width = 58
        Height = 19
        DataField = 'DS_UF'
        DataSource = DBFonte
        HoldStyle = hsVertically
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 695
        Top = 3
        Width = 81
        Height = 19
        DataField = 'DS_FONE'
        DataSource = DBFonte
        HoldStyle = hsVertically
        Text = ''
      end
    end
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=avaliacao'
      'User_Name=root'
      'Password=admin'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Top = 40
  end
  object DriverMySQL: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Pichau\Documents\Embarcadero\Studio\Projects\Exercicio7' +
      '\libmariadb.dll'
    Top = 88
  end
  object DBFonte: TDataSource
    DataSet = FDQuery1
    Top = 192
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM avaliacao.cliente;')
    Left = 1
    Top = 144
  end
end
