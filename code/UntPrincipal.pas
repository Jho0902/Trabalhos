unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

  // HABILITAR IMAGEM
  Image1.Visible := true;

  // CARREGAR IMAGEM
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'Windows.bmp');
  // DESABILITAR BOTÕES
  BitBtn2.Enabled := false;
  BitBtn3.Enabled := false;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin

  // HABILITAR IMAGEM
  Image1.Visible := true;

  // CARREGAR IMAGEM
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'linux.bmp');
  // DESABILITAR BOTÕES
  BitBtn1.Enabled := false;
  BitBtn3.Enabled := false;

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin

  // HABILITAR IMAGEM
  Image1.Visible := true;

  // CARREGAR IMAGEM
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'OSX.bmp');
  // DESABILITAR BOTÕES
  BitBtn1.Enabled := false;
  BitBtn2.Enabled := false;

end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin

  // HABILITAR BOTÕES
  BitBtn1.Enabled := true;
  BitBtn2.Enabled := true;
  BitBtn3.Enabled := true;

  // RETIRAR IMAGEM
  Image1.Visible := false;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + 'OSX.bmp');

end;

end.
