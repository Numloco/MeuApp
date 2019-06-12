unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Winapi.ShellAPI, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ToolWin, Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TFrmPrincipal = class(TForm)
    mmMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Usurios1: TMenuItem;
    Produtos1: TMenuItem;
    Aplicaes1: TMenuItem;
    Clculodevolumes1: TMenuItem;
    ringulo1: TMenuItem;
    abuada1: TMenuItem;
    Utilitrios1: TMenuItem;
    Calendrio1: TMenuItem;
    Calculadora1: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    ToolBar1: TToolBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Prisma1: TMenuItem;
    Cilindro1: TMenuItem;
    Cone1: TMenuItem;
    N1: TMenuItem;
    ClculodeIMC1: TMenuItem;
    PrismaRetangular1: TMenuItem;
    PrismaTriangulas1: TMenuItem;
    Clientes1: TMenuItem;
    procedure Calculadora1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure abuada1Click(Sender: TObject);
    procedure ringulo1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ClculodeIMC1Click(Sender: TObject);
    procedure Cilindro1Click(Sender: TObject);
    procedure Cone1Click(Sender: TObject);
    procedure PrismaRetangular1Click(Sender: TObject);
    procedure PrismaTriangulas1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uCalendario, uTabuadas, uTriangulo, uCalculodeIMC, uVolumeCilindro,
  uVolumeCone, uVolumePrisma, uVolumePrismaR, uVolumePrismaT, uCadastroClientes;

{$R *.dfm}

procedure TFrmPrincipal.abuada1Click(Sender: TObject);
begin
  if FrmTabuadas = nil then
  begin
    Application.CreateForm(TFrmTabuadas,FrmTabuadas);
  end;
  FrmTabuadas.Show;
end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Deseja sair da aplicação?', mtConfirmation, [mbYes, mbNo],0)= mrYes then
  begin
    MessageDlg('Sua aplicação está sendo encerrada.', mtInformation, [mbOK],0);
  end;
  Close;
end;

procedure TFrmPrincipal.BitBtn2Click(Sender: TObject);
begin
if  FrmCadastroClientes = nil then
  begin
    Application.CreateForm(TFrmCadastroClientes, FrmCadastroClientes);
  end;
  FrmCadastroClientes.Show;
end;

procedure TFrmPrincipal.BitBtn3Click(Sender: TObject);
begin
  if FrmTabuadas = nil then
  begin
    Application.CreateForm(TFrmTabuadas,FrmTabuadas);
  end;
  FrmTabuadas.Show;
end;

procedure TFrmPrincipal.BitBtn4Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'calc.exe', '', nil, SW_SHOWNORMAL);
end;

procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'calc.exe', '', nil, SW_SHOWNORMAL);
end;

procedure TFrmPrincipal.Calendrio1Click(Sender: TObject);
begin
if FrmCalendario = nil then
  begin
    Application.CreateForm(TFrmCalendario,FrmCalendario);
  end;
  FrmCalendario.Show;
end;

procedure TFrmPrincipal.Cilindro1Click(Sender: TObject);
begin
  if FrmVolumeCilindro= nil then
  begin
    Application.CreateForm(TFrmVolumeCilindro, FrmVolumeCilindro);
  end;
  FrmVolumeCilindro.Show;
end;

procedure TFrmPrincipal.ClculodeIMC1Click(Sender: TObject);
begin
  if FrmCalculoIMC = nil then
  begin
    Application.CreateForm(TFrmCalculoIMC, FrmCalculoIMC);
  end;
  FrmCalculoIMC.Show;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  if FrmCadastroClientes = nil then
  begin
    Application.CreateForm(TFrmCadastroClientes, FrmCadastroClientes);
  end;
   FrmCadastroClientes.Show;
end;

procedure TFrmPrincipal.Cone1Click(Sender: TObject);
begin
    if FrmVolumeCone = nil then
  begin
    Application.CreateForm(TFrmVolumeCone, FrmVolumeCone);
  end;
  FrmVolumeCone.Show;
end;

procedure TFrmPrincipal.PrismaRetangular1Click(Sender: TObject);
begin
 if FrmVolumePrismaR = nil then
  begin
    Application.CreateForm(TFrmVolumePrismaR, FrmVolumePrismaR);
  end;
  FrmVolumePrismaR.Show;
end;

procedure TFrmPrincipal.PrismaTriangulas1Click(Sender: TObject);
begin
if FrmVolumePrismaTriangular= nil then
  begin
    Application.CreateForm(TFrmVolumePrismaTriangular, FrmVolumePrismaTriangular);
  end;
  FrmVolumePrismaTriangular.Show;
end;

procedure TFrmPrincipal.ringulo1Click(Sender: TObject);
begin
  if FrmTriangulo = nil then
  begin
    Application.CreateForm(TFrmTriangulo, FrmTriangulo);
  end;
  FrmTriangulo.Show;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  if MessageDlg('Deseja sair da aplicação?', mtConfirmation, [mbYes, mbNo],0)= mrYes then
  begin
    MessageDlg('Sua aplicação está sendo encerrada.', mtInformation, [mbOK],0);
    Close;
  end;
end;

end.
