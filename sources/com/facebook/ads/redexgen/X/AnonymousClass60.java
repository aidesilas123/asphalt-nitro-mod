package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.60, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass60 {
    public final long A00;
    public final EnumC08025z A01;
    public final String A02;
    public final boolean A03;

    public AnonymousClass60(String str, boolean z, EnumC08025z enumC08025z) {
        this(str, z, enumC08025z, System.currentTimeMillis());
    }

    public AnonymousClass60(String str, boolean z, EnumC08025z enumC08025z, long j) {
        this.A02 = str;
        this.A03 = z;
        this.A01 = enumC08025z;
        this.A00 = j;
    }

    public static AnonymousClass60 A00() {
        return new AnonymousClass60("", true, EnumC08025z.A06, -1L);
    }

    public final long A01() {
        return this.A00;
    }

    public final EnumC08025z A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A03;
    }
}
