# Select To Select2 Plugin

This repository is deprecated.

`select_to_select2` was an older Redmine plugin that replaced Redmine select boxes with Select2. For current Redmine versions, use the successor plugin instead:

https://github.com/sf-cola/select_to_search

## Migration

1. Remove the old plugin from Redmine.

   ```sh
   rm -rf plugins/select_to_select2
   ```

2. Install the new plugin.

   ```sh
   git clone https://github.com/sf-cola/select_to_search.git plugins/select_to_search
   ```

3. Restart Redmine.

Do not install `select_to_select2` and `select_to_search` at the same time. Both plugins target the same Redmine select elements, so running both can duplicate or break select UI initialization.

## Status

This repository is kept for historical reference only. New fixes and Redmine compatibility work will be handled in `select_to_search`.
