unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids,
  Vcl.WinXCtrls;

type
  TTForm1 = class(TForm)
    Conexao: TFDConnection;
    DriverMySQL: TFDPhysMySQLDriverLink;
    FDTable1: TFDTable;
    FDTable1CD_CODIGOCLI: TIntegerField;
    FDTable1DS_NOME: TStringField;
    FDTable1DS_ENDERECO: TStringField;
    FDTable1DS_BAIRRO: TStringField;
    FDTable1NR_CEP: TStringField;
    FDTable1DS_CIDADE: TStringField;
    FDTable1DS_UF: TStringField;
    FDTable1DS_FONE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
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
    StaticText1: TStaticText;
    btnIncluir: TButton;
    DBGrid1: TDBGrid;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnAtualizar: TButton;
    edtPesquisar: TSearchBox;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TForm1: TTForm1;

implementation

{$R *.dfm}

procedure TTForm1.btnAlterarClick(Sender: TObject);
begin
  FDTable1.Edit; // permite editar as colunas da tabela
  // coloca a visualização das colunas embaixo do form
  DBGrid1.Top := 280;
  DBGrid1.Height := 310;
  btnSalvar.Visible := True;
  btnCancelar.Visible := True;
end;

procedure TTForm1.btnAtualizarClick(Sender: TObject);
begin
  Atualizar; // chama o metodo para atualizar as informacoes
  // abre visualização das colunas no form
  DBGrid1.Top := 75;
  DBGrid1.Height := 510;
  btnSalvar.Visible := False;
  btnCancelar.Visible := False;
end;

procedure TTForm1.btnCancelarClick(Sender: TObject);
begin
  FDTable1.Cancel; // permite cancelar o input
  // abre visualização das colunas no form
  DBGrid1.Top := 75;
  DBGrid1.Height := 510;
  btnSalvar.Visible := False;
  btnCancelar.Visible := False;
end;

procedure TTForm1.btnExcluirClick(Sender: TObject);
begin
  FDTable1.delete; // permite deletar as colunas da tabela
end;

procedure TTForm1.btnIncluirClick(Sender: TObject);
begin
  FDTable1.Append; // deixa uma linha de campos em branco
  // coloca a visualização das colunas embaixo do form
  DBGrid1.Top := 280;
  DBGrid1.Height := 310;
  btnSalvar.Visible := True;
  btnCancelar.Visible := True;

end;

procedure TTForm1.btnSalvarClick(Sender: TObject);
begin
  FDTable1.Post;
  // abre visualização das colunas no form
  DBGrid1.Top := 75;
  DBGrid1.Height := 510;
  btnSalvar.Visible := False;
  btnCancelar.Visible := False;
end;

procedure TTForm1.edtPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  FDTable1.Locate('DS_NOME', edtPesquisar.Text, [TLocateOption.loCaseInsensitive, TLocateOption.loPartialKey]); // localiza o string do nome do cliente, e passa parametros para ignorar case sensitive e para dar match em buscas incompletas
//  FDTable1.Locate('CD_CODIGOCLI', StrToInt(edtPesquisar.Text), [TLocateOption.loCaseInsensitive, TLocateOption.loPartialKey]); - nao consegui fazer pesquisar por somente código
end;

procedure TTForm1.FormShow(Sender: TObject);
begin
  // abre visualização das colunas no form
  DBGrid1.Top := 75;
  DBGrid1.Height := 510;
  btnSalvar.Visible := False;
  btnCancelar.Visible := False;
end;

procedure TTForm1.Atualizar; // metodo para fechar e abrir o frame das colunas (atualizar)
begin
  FDTable1.Close;
  FDTable1.Open;
end;

end.
