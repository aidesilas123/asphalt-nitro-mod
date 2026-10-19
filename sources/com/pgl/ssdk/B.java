package com.pgl.ssdk;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public class B implements Runnable {
    private final D a;
    private final Context b;
    private A c;

    B(Context context, D d2) {
        this.a = d2;
        this.b = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        byte[] bArr;
        String.valueOf(System.currentTimeMillis());
        int i = j.a;
        String str = i != 0 ? i != 1 ? "" : "https://ssdk-va.pangle.io/ssdk/sd/token" : "https://ssdk-sg.pangle.io/ssdk/sd/token";
        try {
            bArr = (byte[]) com.pgl.ssdk.ces.a.meta(301, this.b, null);
        } catch (Throwable unused) {
            y.a = 501;
        }
        if (bArr != null && bArr.length > 0) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            A a = new A("request", this.b, str + "?os=android&app_id=" + y.b + "&did=" + com.pgl.ssdk.ces.e.b() + "&app_ver=" + C1643a.a(this.b) + "&platform=android&ver=1.0.0.3.overseas-rc.4&mode=1", bArr);
            this.c = a;
            a.start();
            this.c.f7704g = new Handler(this.c.getLooper(), this.c.h);
            this.c.f7704g.sendEmptyMessage(1);
            D d2 = this.a;
            if (d2 != null) {
                d2.a(y.a());
                return;
            }
            return;
        }
        y.a = 501;
    }
}
