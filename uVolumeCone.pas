unit uVolumeCone;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TFrmVolumeCone = class(TForm)
    edtRaioCone: TEdit;
    edtAlturaCone: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnVolume: TBitBtn;
    btnLimpar: TBitBtn;
    Label3: TLabel;
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
  FrmVolumeCone: TFrmVolumeCone;

implementation

{$R *.dfm}

procedure TFrmVolumeCone.btnLimparClick(Sender: TObject);
begin
 edtRaioCone.Clear;
 edtAlturaCone.Clear;
 edtVolumeC.Clear;
end;

procedure TFrmVolumeCone.btnVolumeClick(Sender: TObject);
var
r, h, v : double;
begin
r := StrToInt(edtRaioCone.Text);
h := StrToInt(edtAlturaCone.Text);
v := (3.14 * (r*r) * h) / 3;
edtVolumeC.Text:= FloatToStr(v);
end;
end.
