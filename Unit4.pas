unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, ZAbstractConnection;

type
  TDM1 = class(TDataModule)
    con1: TZConnection;
    Gejala_zq: TZQuery;
    Penyakit_zq: TZQuery;
    Pertanyaan_zq: TZQuery;
    Rule_zq: TZQuery;
    pRule_zq: TZQuery;
    Gejala_ds: TDataSource;
    Penyakit_ds: TDataSource;
    Pertanyaan_ds: TDataSource;
    Rule_ds: TDataSource;
    pRule_ds: TDataSource;
    pRule_zqKodeRule: TStringField;
    pRule_zqkodepertanyaan1: TStringField;
    pRule_zqkodepenyakit: TStringField;
    pRule_zqrfNamaPenyakit: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TabelAktif(b:Boolean);
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

procedure TDM1.TabelAktif(b:Boolean);
begin
  Gejala_zq.Active := b;
  Penyakit_zq.Active := b;
  Pertanyaan_zq.Active := b;
  pRule_zq.Active := B;
end;

end.
