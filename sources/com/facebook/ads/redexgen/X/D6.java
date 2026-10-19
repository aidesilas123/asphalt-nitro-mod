package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class D6 {
    public final String A00;
    public final boolean A01;

    public D6(String str, boolean z) {
        this.A00 = str;
        this.A01 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != D6.class) {
            return false;
        }
        D6 d6 = (D6) obj;
        return TextUtils.equals(this.A00, d6.A00) && this.A01 == d6.A01;
    }

    public final int hashCode() {
        int i = 1 * 31;
        String str = this.A00;
        return ((i + (str == null ? 0 : str.hashCode())) * 31) + (this.A01 ? 1231 : 1237);
    }
}
