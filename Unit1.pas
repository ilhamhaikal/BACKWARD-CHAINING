unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls;

type
  TFormKonsultasi = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    btnYa: TBitBtn;
    btnTidak: TBitBtn;
    lbl3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    SMDBGrid1: TSMDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnYaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPertanyaan;
  public
    { Public declarations }
  end;

var
  FormKonsultasi: TFormKonsultasi;

implementation
  uses Unit2,Unit4;

{$R *.dfm}

procedure TFormKonsultasi.BitBtn1Click(Sender: TObject);
begin
FormKonsultasi.Hide;
FormTabel.Show;
end;

procedure TFormKonsultasi.FormActivate(Sender: TObject);
begin
DM1.TabelAktif(True);
Memo1.Lines.Clear;
end;

procedure TFormKonsultasi.ShowPertanyaan;
begin
  lbl3.Caption := DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
end;

procedure TFormKonsultasi.btnYaClick(Sender: TObject);
var
  s,s2,s3 : string;
  i : Integer;
  tag : Integer;

begin
tag := (Sender as TBitBtn).Tag;
  if tag = 0 then
  s := 'Y :'
  else
  s := 'T :';

  s := s+DM1.Pertanyaan_zq.FieldByName('KodePertanyaan').AsString + ' - ' +
  DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
  Memo1.Lines.Add(s);

  s := 'SELECT * FROM tabelrule ';
  s2 := '';

  for i := 0 to Memo1.Lines.Count-1 do begin
    s3 := QuotedStr('%'+Trim(Copy(Memo1.Lines[i],4,5))+'%');
    if Pos('Y :', Memo1.Lines[i]) > 0 then begin
      s2:= s2+' AND kodepertanyaan1 LIKE '+ s3;
    end
    else
    s2:= s2+' AND kodepertanyaan1 not LIKE '+s3
  end;

  if Length(s2) > 0 then begin
    Delete(s2,1,5);
    s2:= s + ' WHERE '+s2;
  end
  else
  s2:= s;

  DM1.pRule_zq.Active := False;
  DM1.pRule_zq.SQL.Text := s2;
  DM1.pRule_zq.Active := True;

  if DM1.pRule_zq.RecordCount = 0 then begin
    Application.MessageBox('Maaf, tidak ada penyakit yang terdeteksi',
    'Keterangan', MB_OK + MB_ICONWARNING);
  end;

  DM1.Pertanyaan_zq.Next;
  ShowPertanyaan;
  btnYa.Enabled := not (DM1.pRule_zq.RecordCount<2);
  btnTidak.Enabled := btnYa.Enabled;
end;


procedure TFormKonsultasi.BitBtn2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  DM1.Pertanyaan_zq.First;
  ShowPertanyaan;
  btnYa.Visible := True;
  btnTidak.Visible := True;
  DM1.pRule_zq.Active := False;
  DM1.pRule_zq.SQL.Text := 'select * from tabelrule';
  DM1.pRule_zq.Active := True;
  btnYa.Enabled := True;
  btnTidak.Enabled := btnYa.Enabled;
end;

end.
