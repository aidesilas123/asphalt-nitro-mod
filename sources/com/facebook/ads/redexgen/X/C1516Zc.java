package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1516Zc implements C2M {
    public final SharedPreferences A00;

    public C1516Zc(SharedPreferences sharedPreferences) {
        this.A00 = sharedPreferences;
    }

    @Override // com.facebook.ads.redexgen.X.C2M
    public final C1517Zd A5N() {
        return new C1517Zd(this.A00.edit());
    }

    @Override // com.facebook.ads.redexgen.X.C2M
    public final long A7C(String str, long j) {
        return this.A00.getLong(str, j);
    }

    @Override // com.facebook.ads.redexgen.X.C2M
    public final String A7x(String str, String str2) {
        return this.A00.getString(str, str2);
    }
}
