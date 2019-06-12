program MeuApp;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uCalendario in 'uCalendario.pas' {FrmCalendario},
  uTabuadas in 'uTabuadas.pas' {FrmTabuadas},
  uTriangulo in 'uTriangulo.pas' {FrmTriangulo},
  uCalculodeIMC in 'uCalculodeIMC.pas' {FrmCalculoIMC},
  uBancoDados in 'uBancoDados.pas' {conexao: TDataModule},
  uCadastroClientes in 'uCadastroClientes.pas' {FrmCadastroClientes},
  uVolumeCilindro in 'uVolumeCilindro.pas' {FrmVolumeCilindro},
  uVolumeCone in 'uVolumeCone.pas' {FrmVolumeCone},
  uVolumePrismaR in 'uVolumePrismaR.pas' {FrmVolumePrismaR},
  uVolumePrismaT in 'uVolumePrismaT.pas' {FrmVolumePrismaTriangular};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tconexao, conexao);
  Application.Run;
end.
