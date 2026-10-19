package com.tapjoy;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

/* JADX INFO: loaded from: classes4.dex */
public class a0 {
    public final Context a;
    public String b;
    public boolean c;

    public a0(Context context) {
        this.a = context;
    }

    public String a() {
        return this.b;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        try {
            this.b = AdvertisingIdClient.getAdvertisingIdInfo(this.a).getId();
            this.c = !r1.isLimitAdTrackingEnabled();
            return true;
        } catch (Error | Exception unused) {
            return false;
        }
    }
}
