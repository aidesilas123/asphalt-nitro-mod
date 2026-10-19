package com.com.bytedance.overseas.sdk.b;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.o;
import com.json.v4;

/* JADX INFO: compiled from: AdvertisingIdHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a b;
    private String a = "";

    private a() {
    }

    public static a a() {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    b = new a();
                }
            }
        }
        return b;
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c.a(o.a()).a(v4.w0, str);
    }

    public String b() {
        if (!o.d().A(v4.w0)) {
            return "";
        }
        if (!TextUtils.isEmpty(this.a)) {
            return this.a;
        }
        String strB = c.a(o.a()).b(v4.w0, "");
        this.a = strB;
        return strB;
    }

    public void b(String str) {
        this.a = str;
    }
}
