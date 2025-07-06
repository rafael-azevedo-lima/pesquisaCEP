unit buscacep.model.internet;

interface

uses
  buscacep.controller.internet,
  System.Net.HTTPClient;

type
  TModelInternet = class(TInterfacedObject,IControllerInternet)
    private
      FURI: string;
      constructor Create;
      procedure SetURI(const Value: string);
      function GetURI: string;
      function InternetConectada: Boolean;
      function InternetErrorResponse: string;
    public
      destructor Destroy; override;
      class function New: IControllerInternet;
      property URI : string read GetURI write SetURI;
  end;

implementation

{ TModelInternet }



constructor TModelInternet.Create;
begin
end;

destructor TModelInternet.Destroy;
begin
  inherited;
end;

function TModelInternet.GetURI: string;
begin
  Result := Self.FURI;
end;

function TModelInternet.InternetConectada: Boolean;
var
  HTTP: THTTPClient;
begin
  HTTP := THTTPClient.Create;
  try
      try
          if (HTTP.Head(Self.FURI).StatusCode < 400) then
          begin
              Result := True;
              Exit;
          end
          else
              Result := False;
      except
          Result := False;
      end;
  finally
      HTTP.Free;
  end;
end;

function TModelInternet.InternetErrorResponse: string;
begin
  Result := 'Internet limitada ou desconectada, por favor verifique!';
end;

class function TModelInternet.New: IControllerInternet;
begin
  Result := Self.Create;
end;

procedure TModelInternet.SetURI(const Value: string);
begin
  FURI := Value;
end;

end.
