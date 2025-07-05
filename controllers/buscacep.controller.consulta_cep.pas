unit buscacep.controller.consulta_cep;

interface

type
  IControllerConsultaCEP = interface
    ['{0320DD5E-A1FF-48D7-AB97-5D9747BF5F9C}']
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

    property CEP: string        read GetCEP         write SetCEP;
    property Estado: string     read GetEstado      write SetEstado;
    property Cidade: string     read GetCidade      write SetCidade;
    property Bairro: string     read GetBairro      write SetBairro;
    property Logradouro: string read GetLogradouro  write SetLogradouro;
    property Longitude: string  read GetLongitude   write SetLongitude;
    property Latitude: string   read GetLatitude    write SetLatitude;
  end;

implementation

end.
