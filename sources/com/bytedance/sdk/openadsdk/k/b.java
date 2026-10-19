package com.bytedance.sdk.openadsdk.k;

import android.content.Context;
import android.location.Address;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.util.Map;

/* JADX INFO: compiled from: TTAdNetDepend.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements com.bytedance.sdk.component.f.c.b {
    public static String a = "sp_multi_ttadnet_config";
    private final Context b;

    public b(Context context) {
        this.b = context;
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public int a() {
        return Integer.parseInt("1371");
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public Address a(Context context) {
        return null;
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public String a(Context context, String str, String str2) {
        return com.bytedance.sdk.openadsdk.multipro.d.a.b(a, str, str2);
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public void a(Context context, Map<String, ?> map) {
        if (map != null) {
            try {
                for (Map.Entry<String, ?> entry : map.entrySet()) {
                    Object value = entry.getValue();
                    if (value instanceof Integer) {
                        com.bytedance.sdk.openadsdk.multipro.d.a.a(a, entry.getKey(), (Integer) value);
                    } else if (value instanceof Long) {
                        com.bytedance.sdk.openadsdk.multipro.d.a.a(a, entry.getKey(), (Long) value);
                    } else if (value instanceof Float) {
                        com.bytedance.sdk.openadsdk.multipro.d.a.a(a, entry.getKey(), (Float) value);
                    } else if (value instanceof Boolean) {
                        com.bytedance.sdk.openadsdk.multipro.d.a.a(a, entry.getKey(), (Boolean) value);
                    } else if (value instanceof String) {
                        com.bytedance.sdk.openadsdk.multipro.d.a.a(a, entry.getKey(), (String) value);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public String b() {
        return "pangle_sdk";
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public String c() {
        return "android";
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public int d() {
        return BuildConfig.VERSION_CODE;
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public String e() {
        return j.a(this.b);
    }

    @Override // com.bytedance.sdk.component.f.c.b
    public String[] f() {
        String[] strArr = {"tnc16-useast1a.isnssdk.com", "tnc16-useast1a.byteoversea.com", "tnc16-alisg.isnssdk.com", "tnc16-alisg.byteoversea.com"};
        String strM = o.d().M();
        if (!TextUtils.isEmpty(strM)) {
            return ("SG".equals(strM) || "CN".equals(strM)) ? new String[]{"tnc16-alisg.isnssdk.com", "tnc16-alisg.byteoversea.com", "tnc16-useast1a.isnssdk.com", "tnc16-useast1a.byteoversea.com"} : strArr;
        }
        int iP = ac.p();
        return (iP == 2 || iP == 1) ? new String[]{"tnc16-alisg.isnssdk.com", "tnc16-alisg.byteoversea.com", "tnc16-useast1a.isnssdk.com", "tnc16-useast1a.byteoversea.com"} : strArr;
    }
}
