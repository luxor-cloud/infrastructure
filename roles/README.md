Notes
=====

Nginx
-----

* Removed `sub_filter` template magic from templates/http/default.conf.j2 because it was causing errors for no reason
  and I did not have the nerves to fix it. We won't use `sub_filters` anyway, so it doesn't matter.
