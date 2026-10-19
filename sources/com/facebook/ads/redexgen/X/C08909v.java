package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9v, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08909v {
    public static final C08909v A02;
    public static final C08909v A03;
    public static final C08909v A04;
    public static final C08909v A05;
    public static final C08909v A06;
    public final long A00;
    public final long A01;

    static {
        C08909v c08909v = new C08909v(0L, 0L);
        A04 = c08909v;
        A02 = new C08909v(Long.MAX_VALUE, Long.MAX_VALUE);
        A06 = new C08909v(Long.MAX_VALUE, 0L);
        A05 = new C08909v(0L, Long.MAX_VALUE);
        A03 = c08909v;
    }

    public C08909v(long j, long j2) {
        HI.A03(j >= 0);
        HI.A03(j2 >= 0);
        this.A01 = j;
        this.A00 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C08909v c08909v = (C08909v) obj;
        return this.A01 == c08909v.A01 && this.A00 == c08909v.A00;
    }

    public final int hashCode() {
        return (((int) this.A01) * 31) + ((int) this.A00);
    }
}
