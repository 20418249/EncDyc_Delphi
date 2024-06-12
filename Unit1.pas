unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  sText, sNew, sEnc, sDec : String;
  cChr : Char;
  iLength : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var iLoop : integer;
begin
  sText := Edit1.Text;
  iLength := LENGTH(sText);
  sNew := '';
  FOR iLoop := 1 TO iLength DO
    Begin
      cChr := sText[iLoop];
      cChr := CHR(ORD(cChr) + 20);
      sNew := sNew + cChr;
    end;
  Panel1.Caption := sNew;
  sEnc := sNew;
end;

procedure TForm1.Button2Click(Sender: TObject);
var iLoop : integer;
begin
  sNew := '';
  sDec := '';
  FOR iLoop := 1 TO iLength DO
    Begin
      cChr := sEnc[iLoop];
      cChr := CHR(ORD(cChr) - 20);
      sDec := sDec + cChr;
    end;
  Panel2.Caption := sDec;
end;

end.
