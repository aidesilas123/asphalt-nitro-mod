package com.pgl.ssdk;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class i extends l {
    private Context p;

    public i(Context context, String str) {
        super(context, null);
        this.p = null;
        this.p = context;
        this.b = j.a() + b();
    }

    public String b() {
        String str = "?os=0&ver=1.0.0.3.overseas-rc.4&mode=1&app_ver=" + String.valueOf(C1643a.a(this.p));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("&region=");
        sb.append((Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault()).getLanguage());
        return (sb.toString() + "&did=" + com.pgl.ssdk.ces.e.b()) + "&aid=" + com.pgl.ssdk.ces.e.a();
    }
}
