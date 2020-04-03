--- xPERIODICx_zfsnap_delete.sh.orig	2016-08-29 16:31:44.000000000 +0900
+++ xPERIODICx_zfsnap_delete.sh	2020-04-03 15:51:02.507848000 +0900
@@ -11,6 +11,8 @@
 
 # xPERIODICx_zfsnap_delete_enable   - Delete old snapshots periodicaly (values: YES | NO)
 # xPERIODICx_zfsnap_delete_flags    - `zfsnap destroy` flags
+# xPERIODICx_zfsnap_delete_fs       - Space-separated ZFS filesystems to delete non-recursive snapshots
+# xPERIODICx_zfsnap_delete_recursive_fs - Space-separated ZFS filesystems to delete recursive snapshots
 # xPERIODICx_zfsnap_delete_verbose  - Verbose output (values: YES | NO)
 # xPERIODICx_zfsnap_delete_prefixes - Space-separated list of prefixes of expired zfsnap snapshots to delete
 #                                     'hourly-', 'daily-', 'weekly-', 'monthly-', and 'reboot-' prefixes are hardcoded
@@ -23,7 +25,7 @@
             [Yy][Ee][Ss]) OPTIONS="$OPTIONS -v" ;;
         esac
 
-        xPREFIXx/zfsnap destroy $OPTIONS -p "hourly- daily- weekly- monthly- reboot- $xPERIODICx_zfsnap_delete_prefixes"
+        xPREFIXx/zfsnap destroy $OPTIONS -p "hourly- daily- weekly- monthly- reboot- $xPERIODICx_zfsnap_delete_prefixes" $xPERIODICx_zfsnap_delete_fs -r $xPERIODICx_zfsnap_delete_recursive_fs
         exit $?
         ;;
 
