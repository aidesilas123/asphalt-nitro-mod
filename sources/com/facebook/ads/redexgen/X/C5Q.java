package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5Q, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C5Q {
    public static C0S A00(Context context, C7U c7u) {
        C0V c0vA70 = c7u.A70(A07(context));
        return c0vA70 != null ? c0vA70.A9y() : new C1598ay();
    }

    public static YA A01(Activity activity) {
        return new YA(activity, (C7U) A08(), A00(activity, A08()));
    }

    public static YA A02(Context context) {
        return new YA(context, A08(), new C1598ay());
    }

    public static YA A03(Context context) {
        return new YA(context, A08(), A00(context, A08()));
    }

    public static YA A04(Context context) {
        return IP.A0s(context) ? new YA(context, A08(), A00(context, A08())) : A02(context);
    }

    public static YA A05(Context context) {
        return new YA(context, A08(), A00(context, A08()));
    }

    public static C0978Dz A06(Context context) {
        return new C0978Dz(context, A08(), A08().A70(A07(context)));
    }

    public static Y9 A07(Context context) {
        return new Y9(context, A08());
    }

    public static synchronized C1470Xi A08() {
        return C1470Xi.A02();
    }
}
