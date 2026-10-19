package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class GE {
    public final int A00;
    public final int A01;
    public final String A02;

    public GE(int i, int i2, String str) {
        this.A00 = i;
        this.A01 = i2;
        this.A02 = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GE ge = (GE) obj;
        return this.A00 == ge.A00 && this.A01 == ge.A01 && TextUtils.equals(this.A02, ge.A02);
    }

    public final int hashCode() {
        int i = ((this.A00 * 31) + this.A01) * 31;
        String str = this.A02;
        return i + (str != null ? str.hashCode() : 0);
    }
}
