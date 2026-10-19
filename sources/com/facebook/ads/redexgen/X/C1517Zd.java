package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1517Zd implements C2L {
    public final SharedPreferences.Editor A00;

    public C1517Zd(SharedPreferences.Editor editor) {
        this.A00 = editor;
    }

    public final C1517Zd A00(String str, long j) {
        this.A00.putLong(str, j);
        return this;
    }

    public final C1517Zd A01(String str, String str2) {
        this.A00.putString(str, str2);
        return this;
    }

    public final void A02() {
        this.A00.apply();
    }
}
