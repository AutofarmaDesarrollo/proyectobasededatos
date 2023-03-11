unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IBX.IBCustomDataSet,
  IBX.IBQuery, Data.DB, IBX.IBDatabase, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    CDS: TClientDataSet;
    BASE: TIBDatabase;
    DS: TDataSource;
    QUERY: TIBQuery;
    Button1: TButton;
    CDScod_alfabeta: TStringField;
    CDSpepito: TStringField;
    CDSdamian: TStringField;
    transaccion: TIBTransaction;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
base.Close;
base.DatabaseName:='\\maxi-pc\C:\NET\DATA\fwdat.fdb';
BASE.Params.Values['User_Name']:='SYSDBA';
BASE.Params.Values['Password']:='nmpnet';
base.LoginPrompt:=false;
base.Open;
query.SQL.Add('select * from prmaproducto a where a.cod_laboratorio=:labo');
query.ParamByName('labo').AsString:='AF00';
query.Open;





While not query.Eof do
begin
   if cds.Active = false then
   begin
      cds.CreateDataSet;
      cds.Active := true;
   end;
   cds.Append;
   cdscod_alfabeta.AsString:= query.FieldByName('cod_alfabeta').AsString;
   cdspepito.AsString:='nombre_largo';
   cdsdamian.AsString:='des_alfabeta';
   query.Next;
end;

end;

end.
