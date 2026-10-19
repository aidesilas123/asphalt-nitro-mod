package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1512Yy extends C4Y {
    public static String[] A01 = {"ufm8s7LRmOM7", "sIBwdoM05ajejE", "0NxvrnR7UZDHrBy4xVhLU5lsqzWJ5R3x", "FsILnIqpIa8iE3wffvJrO4tNlZdDmpUd", "wKnqjXSh8f61FKWyknAGi8xlXXoDdiLA", "lpMPMGmveEx5YZPPZgDkriuB4nzdouJK", "fQPzW90JHWOApVaaQbndX59CGXgCnXlm", "Pp9SKBa6RS3IfLIGXA9e4oeVKGHa5CsE"};
    public boolean A00 = true;

    @Override // com.facebook.ads.redexgen.X.C4Y
    public final boolean A0D(AbstractC07714u abstractC07714u) {
        return !this.A00 || abstractC07714u.A0b();
    }

    @Override // com.facebook.ads.redexgen.X.C4Y
    public final boolean A0E(AbstractC07714u abstractC07714u, C4X c4x, C4X c4x2) {
        return (c4x == null || (c4x.A01 == c4x2.A01 && c4x.A03 == c4x2.A03)) ? A0R(abstractC07714u) : A0T(abstractC07714u, c4x.A01, c4x.A03, c4x2.A01, c4x2.A03);
    }

    @Override // com.facebook.ads.redexgen.X.C4Y
    public final boolean A0F(AbstractC07714u abstractC07714u, C4X c4x, C4X c4x2) {
        int i = c4x.A01;
        int i2 = c4x.A03;
        View view = abstractC07714u.A0H;
        int left = c4x2 == null ? view.getLeft() : c4x2.A01;
        int top = c4x2 == null ? view.getTop() : c4x2.A03;
        if (abstractC07714u.A0c() || (i == left && i2 == top)) {
            return A0S(abstractC07714u);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return A0T(abstractC07714u, i, i2, left, top);
    }

    @Override // com.facebook.ads.redexgen.X.C4Y
    public final boolean A0G(AbstractC07714u abstractC07714u, C4X c4x, C4X c4x2) {
        if (c4x.A01 != c4x2.A01 || c4x.A03 != c4x2.A03) {
            return A0T(abstractC07714u, c4x.A01, c4x.A03, c4x2.A01, c4x2.A03);
        }
        A0O(abstractC07714u);
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C4Y
    public final boolean A0H(AbstractC07714u abstractC07714u, AbstractC07714u abstractC07714u2, C4X c4x, C4X c4x2) {
        int i;
        int i2;
        int i3 = c4x.A01;
        int i4 = c4x.A03;
        if (abstractC07714u2.A0h()) {
            i = c4x.A01;
            i2 = c4x.A03;
        } else {
            i = c4x2.A01;
            i2 = c4x2.A03;
        }
        if (A01[1].length() != 14) {
            throw new RuntimeException();
        }
        A01[1] = "7F8ns227Orjao7";
        return A0U(abstractC07714u, abstractC07714u2, i3, i4, i, i2);
    }

    public final void A0N(AbstractC07714u abstractC07714u) {
        A0C(abstractC07714u);
    }

    public final void A0O(AbstractC07714u abstractC07714u) {
        A0C(abstractC07714u);
    }

    public final void A0P(AbstractC07714u abstractC07714u) {
        A0C(abstractC07714u);
    }

    public final void A0Q(AbstractC07714u abstractC07714u, boolean z) {
        A0C(abstractC07714u);
    }

    public abstract boolean A0R(AbstractC07714u abstractC07714u);

    public abstract boolean A0S(AbstractC07714u abstractC07714u);

    public abstract boolean A0T(AbstractC07714u abstractC07714u, int i, int i2, int i3, int i4);

    public abstract boolean A0U(AbstractC07714u abstractC07714u, AbstractC07714u abstractC07714u2, int i, int i2, int i3, int i4);
}
