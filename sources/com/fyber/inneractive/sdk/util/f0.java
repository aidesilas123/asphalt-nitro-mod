package com.fyber.inneractive.sdk.util;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.json.k2;

/* JADX INFO: loaded from: classes2.dex */
public enum f0 {
    UNKNOWN(""),
    ETHERNET(k2.a),
    WIFI(k2.b),
    MOBILE_3G(k2.a),
    MOBILE_4G("4g");

    public final String key;

    f0(String str) {
        this.key = str;
    }

    public static f0 e() {
        NetworkInfo activeNetworkInfo;
        int type = (!l.b("android.permission.ACCESS_NETWORK_STATE") || (activeNetworkInfo = ((ConnectivityManager) l.a.getSystemService("connectivity")).getActiveNetworkInfo()) == null) ? 8 : activeNetworkInfo.getType();
        if (type == 9) {
            return ETHERNET;
        }
        if (type != 0) {
            if (type == 1) {
                return WIFI;
            }
            if (type != 2 && type != 3 && type != 4 && type != 5) {
                return UNKNOWN;
            }
        }
        return j.i() == 13 ? MOBILE_4G : MOBILE_3G;
    }
}
