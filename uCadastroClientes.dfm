object FrmCadastroClientes: TFrmCadastroClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 458
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 80
    Top = 512
    Width = 24
    Height = 13
    Caption = 'email'
    FocusControl = DBEdit11
  end
  object Label1: TLabel
    Left = 56
    Top = 56
    Width = 41
    Height = 13
    Caption = 'idCliente'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 96
    Width = 15
    Height = 13
    Caption = 'cpf'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 136
    Width = 77
    Height = 13
    Caption = 'dataNascimento'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 56
    Top = 176
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 56
    Top = 216
    Width = 45
    Height = 13
    Caption = 'endereco'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 56
    Top = 256
    Width = 28
    Height = 13
    Caption = 'bairro'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 56
    Top = 296
    Width = 31
    Height = 13
    Caption = 'cidade'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 56
    Top = 336
    Width = 33
    Height = 13
    Caption = 'estado'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 56
    Top = 376
    Width = 40
    Height = 13
    Caption = 'telefone'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 80
    Top = 464
    Width = 31
    Height = 13
    Caption = 'celular'
    FocusControl = DBEdit10
  end
  object Label12: TLabel
    Left = 80
    Top = 504
    Width = 24
    Height = 13
    Caption = 'email'
    FocusControl = DBEdit12
  end
  object DBEdit11: TDBEdit
    Left = 80
    Top = 528
    Width = 654
    Height = 21
    DataField = 'email'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 309
    Top = 8
    Width = 440
    Height = 53
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 72
    Width = 134
    Height = 21
    DataField = 'idCliente'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 112
    Width = 199
    Height = 21
    DataField = 'cpf'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 152
    Width = 134
    Height = 21
    DataField = 'dataNascimento'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 56
    Top = 189
    Width = 480
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 56
    Top = 232
    Width = 654
    Height = 21
    DataField = 'endereco'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 56
    Top = 272
    Width = 524
    Height = 21
    DataField = 'bairro'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 56
    Top = 312
    Width = 524
    Height = 21
    DataField = 'cidade'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 56
    Top = 352
    Width = 30
    Height = 21
    DataField = 'estado'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 56
    Top = 392
    Width = 160
    Height = 21
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit10: TDBEdit
    Left = 80
    Top = 480
    Width = 160
    Height = 21
    DataField = 'celular'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit12: TDBEdit
    Left = 80
    Top = 520
    Width = 654
    Height = 21
    DataField = 'email'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBGrid1: TDBGrid
    Left = 296
    Top = 330
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object queClientes: TFDQuery
    Connection = conexao.conection
    SQL.Strings = (
      'select * from clientes ')
    Left = 400
    Top = 80
    object queClientesidCliente: TFDAutoIncField
      FieldName = 'idCliente'
      Origin = 'idCliente'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object queClientescpf: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object queClientesdataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
    object queClientesnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object queClientesendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object queClientesbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object queClientescidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 40
    end
    object queClientesestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      FixedChar = True
      Size = 2
    end
    object queClientestelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 12
    end
    object queClientescelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 12
    end
    object queClientesemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = queClientes
    Left = 464
    Top = 80
  end
end
