import QtQuick 2.12
import Qt.labs.platform 1.1

Item {
    id: root

    property var obj: settings

    property Setting language: Setting {
        key: "language"
        def: "English"
        obj: root.obj
    }
    property Setting resultsColumnCount: Setting {
        key: "resultsColumnCount"
        def: 3
        obj: root.obj
    }
    property Setting save_filename: Setting {
        key: "Save/filename"
        def: "%md5%.%ext%"
        obj: root.obj
    }
    property Setting save_path: Setting {
        key: "Save/path"
        def: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
        obj: root.obj
    }
    property Setting save_separator: Setting {
        key: "Save/separator"
        def: " "
        obj: root.obj
    }
    property Setting save_replaceblanks: Setting {
        key: "Save/replaceblanks"
        def: false
        obj: root.obj
    }
    property Setting save_noJpeg: Setting {
        key: "Save/noJpeg"
        def: true
        obj: root.obj
    }
    property Setting save_md5Duplicates: Setting {
        key: "Save/md5Duplicates"
        def: "save"
        obj: root.obj
    }
    property Setting save_md5DuplicatesSameDir: Setting {
        key: "Save/md5DuplicatesSameDir"
        def: "save"
        obj: root.obj
    }
    property Setting save_keepDeletedMd5: Setting {
        key: "Save/keepDeletedMd5"
        def: false
        obj: root.obj
    }
    property var blacklist: Item {
        property string value: backend.getBlacklist()
        function setValue(val) {
            backend.setBlacklist(val)
        }
    }
    property Setting hideblacklisted: Setting {
        key: "hideblacklisted"
        def: false
        obj: root.obj
    }
    property Setting downloadblacklist: Setting {
        key: "downloadblacklist"
        def: false
        obj: root.obj
    }
    property Setting removedTags: Setting {
        key: "ignoredtags"
        def: ""
        obj: root.obj
    }
    property var ignoredTags: Item {
        property string value: backend.getIgnored()
        function setValue(val) {
            backend.setIgnored(val)
        }
    }

    // Proxy
    property Setting proxy_use: Setting {
        key: "Proxy/use"
        def: false
        obj: root.obj
    }
    property Setting proxy_useSystem: Setting {
        key: "Proxy/useSystem"
        def: false
        obj: root.obj
    }
    property Setting proxy_type: Setting {
        key: "Proxy/type"
        def: "http"
        obj: root.obj
    }
    property Setting proxy_hostName: Setting {
        key: "Proxy/hostName"
        def: ""
        obj: root.obj
    }
    property Setting proxy_port: Setting {
        key: "Proxy/port"
        def: ""
        obj: root.obj
    }
    property Setting proxy_user: Setting {
        key: "Proxy/user"
        def: ""
        obj: root.obj
    }
    property Setting proxy_password: Setting {
        key: "Proxy/password"
        def: ""
        obj: root.obj
    }
}