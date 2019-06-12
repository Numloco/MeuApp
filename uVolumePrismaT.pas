unit uVolumePrismaT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TFrmVolumePrismaTriangular = class(TForm)
    edtRaio: TEdit;
    edtAltura: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnVolume: TBitBtn;
    btnLimpar: TBitBtn;
    Label3: TLabel;
    edtVolumePT: TEdit;
    Image1: TImage;
    procedure btnVolumeClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVolumePrismaTriangular: TFrmVolumePrismaTriangular;

implementation

{$R *.dfm}

procedure TFrmVolumePrismaTriangular.btnLimparClick(Sender: TObject);
begin
 edtRaio.Clear;
 edtAltura.Clear;
 edtVolumePT.Clear;
end;

procedure TFrmVolumePrismaTriangular.btnVolumeClick(Sender: TObject);
var
r, h, v : double;
begin
r := StrToInt(edtRaio.Text);
h := StrToInt(edtAltura.Text);
v := (3.14 * (r*r) * h) / 2;
edtVolumePT.Text := FloatToStr(v);
end;

end.
