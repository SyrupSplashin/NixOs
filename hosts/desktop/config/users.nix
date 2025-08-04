{

  users = {
    groups.samba-users = { };
    users = {
      jenna = {
        isSystemUser = true;
        group = "samba-users";
        home = "/var/empty";
        shell = "/run/current-system/sw/bin/nologin";
      };
      vertex = {
        group = "samba-users";
      };
    };
  };
}
