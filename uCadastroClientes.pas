unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.SqlExpr;

type
  TFrmCadastroClientes = class(TForm)
    queClientes: TFDQuery;
    DataSource1: TDataSource;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBNavigator1: TDBNavigator;
    queClientesidCliente: TFDAutoIncField;
    queClientescpf: TLargeintField;
    queClientesdataNascimento: TDateField;
    queClientesnome: TStringField;
    queClientesendereco: TStringField;
    queClientesbairro: TStringField;
    queClientescidade: TStringField;
    queClientesestado: TStringField;
    queClientestelefone: TStringField;
    queClientescelular: TStringField;
    queClientesemail: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroClientes: TFrmCadastroClientes;

implementation

{$R *.dfm}

uses uBancoDados;

procedure TFrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmCadastroClientes.FormCreate(Sender: TObject);
begin
queClientes.Active := True;
queClientes.Open();
end;

procedure TFrmCadastroClientes.FormDestroy(Sender: TObject);
begin
FrmCadastroClientes := nil;
end;

end.
