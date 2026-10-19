package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.os.Bundle;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3i, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C07353i {
    public static final InterfaceC07343h A01;
    public final Object A00;

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            A01 = new EH();
        } else if (Build.VERSION.SDK_INT >= 16) {
            A01 = new EI();
        } else {
            A01 = new ZG();
        }
    }

    public C07353i() {
        this.A00 = A01.AAC(this);
    }

    public C07353i(Object obj) {
        this.A00 = obj;
    }

    public final C07333g A00(int i) {
        return null;
    }

    public final C07333g A01(int i) {
        return null;
    }

    public final Object A02() {
        return this.A00;
    }

    public final List<C07333g> A03(String str, int i) {
        return null;
    }

    public final boolean A04(int i, int i2, Bundle bundle) {
        return false;
    }
}
