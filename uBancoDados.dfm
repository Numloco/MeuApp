object conexao: Tconexao
  OldCreateOrder = False
  Height = 150
  Width = 244
  object conection: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'Server=localhost'
      'Database=siscom'
      'User_Name=root')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Aluno\Desktop\MeuApp_V1\libmysql.dll'
    Left = 144
    Top = 32
  end
end
