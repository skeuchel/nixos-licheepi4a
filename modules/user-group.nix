{ security.sudo.wheelNeedsPassword = false;

  users.groups.steve = {
    gid = 1000;
    members = [ "steve" ];
  };

  users.users.steve = {
    description  = "Steven Keuchel";
    extraGroups = [ "wheel" ];
    group = "steve";
    hashedPassword = "$6$rounds=50000$Atoslo2l3cJC3eNs$EoZCimDS28YwbS0abrg1y8PVhPqPqrh8g4/vekg5.GukzoIYcTCXRe0yk4kw.MoF4wRHNgzlA.fAGy0.vLk9L0";
    isNormalUser = true;
    openssh.authorizedKeys.keys  = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDdlkYzOaUkz8+8UfMHrEoPicxSUSZbdxIZWALt18OXj steve-20181214"
    ];
    uid = 1000;
  };

  users.users.root = {
    hashedPassword = "$6$rounds=50000$CDrYMi4KyY3Q2uI8$aGUb1sf7jUHjlKgFUqOQsWkitfiNLjk53FuYWJDa8usLZNVF7LsnkYpUzgrhZ4wMOEZeuOOor68ZvvTPUdHVb0";
    openssh.authorizedKeys.keys  = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDdlkYzOaUkz8+8UfMHrEoPicxSUSZbdxIZWALt18OXj steve-20181214"
    ];
  };

  networking.hostName = "lp4a";
}
