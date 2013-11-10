#
# This policy configuration will be used by all products
#

BOARD_SEPOLICY_DIRS += \
    vendor/tripndroid/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    fs_use \
    seapp_contexts \
    mac_permissions.xml
