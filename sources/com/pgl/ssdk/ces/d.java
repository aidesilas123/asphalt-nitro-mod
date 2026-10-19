package com.pgl.ssdk.ces;

import android.text.TextUtils;
import android.util.Log;
import com.pgl.ssdk.i;
import com.pgl.ssdk.j;
import java.util.Calendar;

/* JADX INFO: loaded from: classes4.dex */
class d implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ e b;

    d(e eVar, String str) {
        this.b = eVar;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            long timeInMillis = this.b.a ? Calendar.getInstance().getTimeInMillis() : 0L;
            byte[] bArr = (byte[]) a.meta(222, this.b.b, this.a);
            long timeInMillis2 = this.b.a ? Calendar.getInstance().getTimeInMillis() : 0L;
            if (this.b.a) {
                Log.d("CZL_Efficient", "[Efficient] report : " + (timeInMillis2 - timeInMillis));
            }
            if (bArr != null && bArr.length > 0) {
                int i = j.a;
                if (TextUtils.isEmpty(i != 0 ? i != 1 ? "" : "https://ssdk-va.pangle.io/ssdk/v2/r" : "https://ssdk-sg.pangle.io/ssdk/v2/r")) {
                    return;
                }
                new i(this.b.b, null).a(1, 2, bArr);
                return;
            }
            e.l = false;
        } catch (Throwable unused) {
        }
    }
}
