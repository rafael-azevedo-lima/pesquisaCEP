unit buscacep.controller.internet;

interface

type
  IControllerInternet = interface
    ['{47B07408-F785-46F8-9B79-32D5FBB73458}']
    procedure SetURI(const Value: string);

    function GetURI: string;
    function InternetConectada: Boolean;

    property URI : string read GetURI write SetURI;
  end;

implementation

end.
