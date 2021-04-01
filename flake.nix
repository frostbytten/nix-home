{
  description = "Frostbytten's Nix home-manager config";

  inputs = {
    nixpkgs.url = "github:frostbytten/nixpkgs/frostbytten-unstable";
  };

  outputs = { self, nixpkgs }: {
    darwinModules = {
      desktop = {
        imports = [ { 
          home = {
            sessionVariables = {
              EDITOR = "nvim";
              VISUAL = "nvim";
            };
            stateVersion = "21.03";
          };
        }
        ];
      };
    };
  };
}
