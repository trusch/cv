{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }: {
    devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
      packages = [
        (nixpkgs.legacyPackages.x86_64-linux.texliveSmall.withPackages (
          ps: with ps; [
            enumitem
            ifmtarg
            sourcesanspro
            tcolorbox
            tikzfill
            xifthen
          ]
        ))
      ];
    };
  };
}
