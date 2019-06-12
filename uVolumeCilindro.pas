unit uVolumeCilindro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmVolumeCilindro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtRaioC: TEdit;
    edtAlturaC: TEdit;
    btnVolume: TBitBtn;
    btnLimpar: TBitBtn;
    edtVolumeC: TEdit;
    Image1: TImage;
    procedure btnVolumeClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVolumeCilindro: TFrmVolumeCilindro;

implementation

{$R *.dfm}

procedure TFrmVolumeCilindro.btnLimparClick(Sender: TObject);
begin
 edtRaioC.Clear;
 edtAlturaC.Clear;
 edtVolumeC.Clear;
end;

procedure TFrmVolumeCilindro.btnVolumeClick(Sender: TObject);
var
r, h, v : double;
begin
r := StrToInt(edtRaioC.Text);
h := StrToInt(edtAlturaC.Text);
v := 3.14 * h  * (r*r);
edtVolumeC.Text := FloatToStr(v);
end;

end.
