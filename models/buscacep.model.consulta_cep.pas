unit buscacep.model.consulta_cep;

interface

uses
  buscacep.controller.consulta_cep;

type
  TModelConsultaCEP = class(TInterfacedObject,IControllerConsultaCEP)
    private
      FBairro: string;
      FCEP: string;
      FCidade: string;
      FEstado: string;
      FLatitude: string;
      FLogradouro: string;
      FLongitude: string;
      constructor Create;
      function GetBairro: string;
      function GetCEP: string;
      function GetCidade: string;
      function GetEstado: string;
      function GetLatitude: string;
      function GetLogradouro: string;
      function GetLongitude: string;
      procedure SetBairro(const Value: string);
      procedure SetCEP(const Value: string);
      procedure SetCidade(const Value: string);
      procedure SetEstado(const Value: string);
      procedure SetLatitude(const Value: string);
      procedure SetLogradouro(const Value: string);
      procedure SetLongitude(const Value: string);
      procedure ConsultaCEP(const Value: string);
      procedure ResponseErro404;
    public
      destructor Destroy; override;
      class function New: IControllerConsultaCEP;
      property CEP: string        read GetCEP         write SetCEP;
      property Estado: string     read GetEstado      write SetEstado;
      property Cidade: string     read GetCidade      write SetCidade;
      property Bairro: string     read GetBairro      write SetBairro;
      property Logradouro: string read GetLogradouro  write SetLogradouro;
      property Longitude: string  read GetLongitude   write SetLongitude;
      property Latitude: string   read GetLatitude    write SetLatitude;
  end;

implementation

uses
  buscacep.controller.internet, System.Net.HttpClient,
  System.Net.HttpClientComponent, System.JSON, System.SysUtils,
  System.Generics.Collections, buscacep.model.internet;

{ TModelConsultaCEP }

procedure TModelConsultaCEP.ConsultaCEP(const Value: string);
const
  BASE_URL = 'https://brasilapi.com.br/api/cep/v2/%s';
var
  HTTPClient: TNetHTTPClient;
  Response: IHTTPResponse;
  xCEP,JsonString: string;
  JsonObj, LocationObj, CoordinatesObj: TJSONObject;
begin
  if (Length(Value) < 8) then
      raise Exception.Create('CEP deve possuir 8 digitos numéricos!');
  HTTPClient := TNetHTTPClient.Create(nil);
  try
      try
          xCEP := Format(BASE_URL,[Value]);
          Response  := HTTPClient.Get(xCEP);
          case Response.StatusCode of
              200:
              begin
                  JsonString := Response.ContentAsString(TEncoding.UTF8);
                  JsonObj := TJSONObject.ParseJSONValue(JsonString) as TJSONObject;
                  try
                      if Assigned(JsonObj) then
                      begin
                          Self.SetCEP(JsonObj.GetValue('cep').Value);
                          Self.SetEstado(JsonObj.GetValue('state').Value);
                          Self.SetCidade(JsonObj.GetValue('city').Value);
                          if (JsonObj.GetValue('neighborhood').Value = 'null') then
                              Self.SetBairro('Centro')
                          else
                              Self.SetBairro(JsonObj.GetValue('neighborhood').Value);
                          if (JsonObj.GetValue('street').Value = 'null') then
                              Self.SetLogradouro('')
                          else
                              Self.SetLogradouro(JsonObj.GetValue('street').Value);
                          LocationObj := JsonObj.GetValue('location') as TJSONObject;
                          CoordinatesObj := LocationObj.GetValue('coordinates') as TJSONObject;
                          if Assigned(LocationObj) and Assigned(CoordinatesObj) then
                          begin
                              Self.SetLongitude(CoordinatesObj.GetValue('longitude').Value);
                              Self.SetLatitude(CoordinatesObj.GetValue('latitude').Value);
                          end;
                      end;
                  finally
                          JsonObj.Free;
                  end;
              end;
              404: Self.ResponseErro404;
              else
                  Self.ResponseErro404;
          end;
      except On E: Exception do
          Self.ResponseErro404;
      end;
  finally
      HTTPClient.Free;
  end;
end;

constructor TModelConsultaCEP.Create;
begin
end;

destructor TModelConsultaCEP.Destroy;
begin
  inherited;
end;

procedure TModelConsultaCEP.ResponseErro404;
const
  CODE_404 = 'Não encontrado!';
begin
  Self.SetCEP(CODE_404);
  Self.SetEstado(CODE_404);
  Self.SetCidade(CODE_404);
  Self.SetBairro(CODE_404);
  Self.SetLogradouro(CODE_404);
  Self.SetLongitude(CODE_404);
  Self.SetLatitude(CODE_404);
end;

function TModelConsultaCEP.GetBairro: string;
begin
  Result := Self.FBairro;
end;

function TModelConsultaCEP.GetCEP: string;
begin
  Result := Self.FCEP;
end;

function TModelConsultaCEP.GetCidade: string;
begin
  Result := Self.FCidade;
end;

function TModelConsultaCEP.GetEstado: string;
begin
  Result := Self.FEstado;
end;

function TModelConsultaCEP.GetLatitude: string;
begin
  Result := Self.FLatitude;
end;

function TModelConsultaCEP.GetLogradouro: string;
begin
  Result := Self.FLogradouro;
end;

function TModelConsultaCEP.GetLongitude: string;
begin
  Result := Self.FLongitude;
end;

class function TModelConsultaCEP.New: IControllerConsultaCEP;
begin
  Result := Self.Create;
end;

procedure TModelConsultaCEP.SetBairro(const Value: string);
begin
  Self.FBairro := Value;
end;

procedure TModelConsultaCEP.SetCEP(const Value: string);
begin
  Self.FCEP := Value;
end;

procedure TModelConsultaCEP.SetCidade(const Value: string);
begin
  Self.FCidade := Value;
end;

procedure TModelConsultaCEP.SetEstado(const Value: string);
begin
  Self.FEstado := Value;
end;

procedure TModelConsultaCEP.SetLatitude(const Value: string);
begin
  Self.FLatitude := Value;
end;

procedure TModelConsultaCEP.SetLogradouro(const Value: string);
begin
  Self.FLogradouro := Value;
end;

procedure TModelConsultaCEP.SetLongitude(const Value: string);
begin
  Self.FLongitude := Value;
end;

end.
