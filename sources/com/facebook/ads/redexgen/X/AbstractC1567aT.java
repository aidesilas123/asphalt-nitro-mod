package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aT, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1567aT extends C4Q<C1370Tj> {
    public static final int A05 = (int) (C1148Ku.A02 * 4.0f);
    public AnonymousClass18 A00;
    public final List<UJ> A01;
    public final int A02;
    public final YA A03;
    public final AbstractC1284Qa A04 = new C1569aV(this);

    public AbstractC1567aT(C06730x c06730x, List<UJ> list, YA ya) {
        this.A03 = ya;
        this.A02 = c06730x.getChildSpacing();
        this.A01 = list;
    }

    private ViewGroup.MarginLayoutParams A02(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i2 = this.A02;
        if (i == 0) {
            i2 *= 2;
        }
        marginLayoutParams.setMargins(i2, 0, i >= this.A01.size() + (-1) ? this.A02 * 2 : this.A02, 0);
        return marginLayoutParams;
    }

    @Override // com.facebook.ads.redexgen.X.C4Q
    public final int A0D() {
        return this.A01.size();
    }

    public final void A0F(ImageView imageView, int i) {
        UJ uj = this.A01.get(i);
        J4 adCoverImage = uj.getAdCoverImage();
        if (adCoverImage != null) {
            T8 t8A04 = new T8(imageView, this.A03).A04();
            t8A04.A06(new C1568aU(this, i, uj));
            t8A04.A07(adCoverImage.getUrl());
        }
    }

    public final void A0G(AnonymousClass18 anonymousClass18) {
        this.A00 = anonymousClass18;
    }

    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A0H, reason: merged with bridge method [inline-methods] */
    public void A0E(C1370Tj c1370Tj, int i) {
        c1370Tj.A0l().setLayoutParams(A02(i));
    }
}
