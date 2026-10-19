package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import com.json.adqualitysdk.sdk.i.hz;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class hx {
    private Context a;
    private hz b;
    private Cif c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5744d;

    public hx(Context context, String str, String str2) {
        this.a = context.getApplicationContext();
        this.f5744d = str2;
        this.c = new Cif(this.a, str);
        this.b = new hz(hw.f66, this.a.getPackageName(), ic.m826(this.a), this.f5744d);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String m817(String str) {
        try {
            String strM838 = this.c.m838(str);
            if (strM838 == null || TextUtils.isEmpty(strM838)) {
                return strM838;
            }
            try {
                return this.b.m822(strM838);
            } catch (hz.d unused) {
                return "";
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m818(String str) {
        try {
            this.c.m837(str);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final HashMap<String, String> m819(String str, int i) {
        try {
            HashMap<String, String> mapM839 = this.c.m839(str, i);
            HashMap<String, String> map = new HashMap<>();
            for (String str2 : mapM839.keySet()) {
                String str3 = mapM839.get(str2);
                if (str3 != null && !TextUtils.isEmpty(str3)) {
                    try {
                        map.put(str2, this.b.m822(str3));
                    } catch (hz.d unused) {
                    }
                }
            }
            return map;
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m820(String str, String str2) {
        try {
            this.c.m840(str, this.b.m823(str2));
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int m821(String str) {
        try {
            return this.c.m836(str);
        } catch (Throwable unused) {
            return 0;
        }
    }
}
