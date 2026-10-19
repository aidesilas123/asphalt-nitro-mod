package com.fyber.marketplace.fairbid.impl;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.dv.g;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b implements com.fyber.marketplace.fairbid.bridge.b {
    public HashMap<String, s> a = new HashMap<>();
    public final HashMap<String, g> b = new HashMap<>();
    public final com.fyber.inneractive.sdk.serverapi.c c;

    public enum a {
        KEY_AVAILABLE_DISK_SPACE("available_disk", "dsk_a", Integer.class),
        KEY_HEADSET("headset", "headset", Boolean.class),
        KEY_BATTERY_CONNECTED("battery_charging", "btry_c", Boolean.class),
        KEY_BATTERY_LEVEL("battery_level", "btry_l", Integer.class),
        KEY_BLUETOOTH_CONNECTED("bluetooth_connected", "bt_con", Boolean.class),
        KEY_ANDROID_LEVEL("d_api", "d_api", Integer.class),
        KEY_AIRPLANE_MODE("apnm", "apnm", Boolean.class),
        KEY_DO_NOT_DISTURB("dnd", "dnd", Boolean.class),
        KEY_IS_MUTED("is_muted", "is_muted", Boolean.class),
        KEY_TOTAL_DISK_SPACE("total_disk", "dsk_t", Integer.class),
        KEY_TIME_OF_DAY("time_difference", "tod", Integer.class),
        KEY_LOW_POWER_MODE("low_power_mode", "low_power_mode", Boolean.class),
        KEY_DARK_MODE("dark_mode", "dark_mode", Boolean.class),
        KEY_LAST_DOMAIN_SHOWED("last_adomain", "ldomain", String.class),
        KEY_LAST_BUNDLE_SHOWED("last_bundle", "lbundle", String.class),
        KEY_IGNITE_VERSION("version", "ignitev", String.class),
        KEY_IGNITE_PACKAGE_NAME("package_name", "ignitep", String.class);

        public String s;
        public String t;
        public Object u;

        a(String str, String str2, Object obj) {
            this.s = str;
            this.t = str2;
            this.u = obj;
        }
    }

    public b(com.fyber.inneractive.sdk.serverapi.c cVar) {
        this.c = cVar;
    }

    public static Object a(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String string = obj.toString();
        if (TextUtils.equals(string, Integer.class.toString())) {
            try {
                return Integer.valueOf(str);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        if (TextUtils.equals(string, String.class.toString())) {
            return str;
        }
        if (TextUtils.equals(string, Boolean.class.toString())) {
            if (str.equalsIgnoreCase("1")) {
                return Boolean.TRUE;
            }
            if (str.equalsIgnoreCase("0")) {
                return Boolean.FALSE;
            }
        }
        return null;
    }

    @Override // com.fyber.marketplace.fairbid.bridge.b
    public s a(String str) {
        return this.a.get(str);
    }
}
