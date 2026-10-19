package com.applovin.impl.sdk;

import android.util.Log;
import com.applovin.impl.sdk.utils.StringUtils;
import com.json.o2;

/* JADX INFO: loaded from: classes.dex */
public class x {
    private static n aFm;
    private final n sdk;

    x(n nVar) {
        this.sdk = nVar;
        if (nVar.Bq()) {
            return;
        }
        aFm = nVar;
        cJ("SDK Session Begin");
    }

    public static void D(String str, String str2) {
        Log.d("AppLovinSdk", o2.i.f6490d + str + "] " + str2);
    }

    public static void E(String str, String str2) {
        Log.i("AppLovinSdk", o2.i.f6490d + str + "] " + str2);
    }

    public static void F(String str, String str2) {
        Log.w("AppLovinSdk", o2.i.f6490d + str + "] " + str2);
    }

    public static boolean Fn() {
        n nVar = aFm;
        return nVar == null || y(nVar);
    }

    public static void G(String str, String str2) {
        n nVar = aFm;
        if (nVar == null) {
            return;
        }
        nVar.BN();
        if (Fn()) {
            aFm.BN().h(str, str2);
        }
    }

    public static void H(String str, String str2) {
        e(str, str2, null);
    }

    private void b(String str, String str2, boolean z) {
        int iIntValue;
        if (StringUtils.isValidString(str2) && (iIntValue = ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aKy)).intValue()) > 0) {
            int length = str2.length();
            int i = ((length + iIntValue) - 1) / iIntValue;
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = i2 * iIntValue;
                int iMin = Math.min(length, i3 + iIntValue);
                if (z) {
                    Log.d(str, str2.substring(i3, iMin));
                } else {
                    f(str, str2.substring(i3, iMin));
                }
            }
        }
    }

    private void cJ(String str) {
        com.applovin.impl.sdk.utils.n nVar = new com.applovin.impl.sdk.utils.n();
        nVar.Lo().dz(str).Lo();
        D("AppLovinSdk", nVar.toString());
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e("AppLovinSdk", o2.i.f6490d + str + "] " + str2, th);
    }

    public static void f(String str, String str2, Throwable th) {
        n nVar = aFm;
        if (nVar == null) {
            return;
        }
        nVar.BN();
        if (Fn()) {
            aFm.BN().c(str, str2, th);
        }
    }

    public static void logApiCall(String str, String str2) {
        D(str, str2);
    }

    public static boolean y(n nVar) {
        return nVar != null && nVar.BP().isVerboseLoggingEnabled();
    }

    public void C(String str, String str2) {
        if (y(this.sdk)) {
            b(str, str2, false);
        }
    }

    public void b(String str, String str2, Throwable th) {
        Log.w("AppLovinSdk", o2.i.f6490d + str + "] " + str2, th);
    }

    public void c(String str, String str2, Throwable th) {
        Log.e("AppLovinSdk", o2.i.f6490d + str + "] " + str2, th);
    }

    public void f(String str, String str2) {
        Log.d("AppLovinSdk", o2.i.f6490d + str + "] " + str2);
    }

    public void g(String str, String str2) {
        Log.i("AppLovinSdk", o2.i.f6490d + str + "] " + str2);
    }

    public void h(String str, String str2) {
        b(str, str2, (Throwable) null);
    }

    public void i(String str, String str2) {
        c(str, str2, null);
    }
}
