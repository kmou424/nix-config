let
  agePublicKey = "age12qffzrfvu5snvf0vn3g50gtrjax6pqxzwljma5d4fryeseze4q5srtdkgm";
in
{
  "id_ed25519.age" = {
    publicKeys = [
      agePublicKey
    ];
  };

  "id_ed25519_server.age" = {
    publicKeys = [
      agePublicKey
    ];
  };
}
