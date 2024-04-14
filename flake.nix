{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11";
  };

  outputs = { self, nixpkgs }: 
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        agusdmb-laptop = lib.nixosSystem {
          system = "x86_64-linux";
	  modules = [ ./configuration.nix ];
        };
      };
    };
}
