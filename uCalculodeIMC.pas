unit uCalculodeIMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFrmCalculoIMC = class(TForm)
    edtAltura: TEdit;
    edtPeso: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    edtIMC: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculoIMC: TFrmCalculoIMC;

implementation

{$R *.dfm}

procedure TFrmCalculoIMC.Button1Click(Sender: TObject);
var
altura, peso, imc : double;
begin
altura := StrToInt(edtAltura.Text);
peso := StrToInt(edtPeso.Text);
imc := (altura * altura) / peso;
edtIMC.Text := FloatToStr(imc);
end;

procedure TFrmCalculoIMC.Button2Click(Sender: TObject);
begin
  edtAltura.Clear;
  edtPeso.Clear;
  edtIMC.Clear;
end;
end.
