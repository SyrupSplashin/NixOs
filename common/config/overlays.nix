{
  inputs,
  ...
}:
{
  nixpkgs.overlays = [
    (final: prev: {
      stormy = inputs.stormy.packages.x86_64-linux.stormy;
    })
  ];
}
