package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9f, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08749f {
    public static final C08749f A04 = new C08749f(1.0f);
    public final float A00;
    public final float A01;
    public final boolean A02;
    public final int A03;

    public C08749f(float f2) {
        this(f2, 1.0f, false);
    }

    public C08749f(float f2, float f3, boolean z) {
        HI.A03(f2 > 0.0f);
        HI.A03(f3 > 0.0f);
        this.A01 = f2;
        this.A00 = f3;
        this.A02 = z;
        this.A03 = Math.round(1000.0f * f2);
    }

    public final long A00(long j) {
        return ((long) this.A03) * j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C08749f c08749f = (C08749f) obj;
        return this.A01 == c08749f.A01 && this.A00 == c08749f.A00 && this.A02 == c08749f.A02;
    }

    public final int hashCode() {
        return (((((17 * 31) + Float.floatToRawIntBits(this.A01)) * 31) + Float.floatToRawIntBits(this.A00)) * 31) + (this.A02 ? 1 : 0);
    }
}
