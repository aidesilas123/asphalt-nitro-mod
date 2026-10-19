package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2O, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C2O extends ED {
    public C2O(YA ya) {
        super(ya);
        setCarouselLayoutManager(ya);
    }

    private void setCarouselLayoutManager(YA ya) {
        ZC zc = new ZC(ya, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            zc.A1V(true);
        }
        super.setLayoutManager(zc);
    }

    public C1335Rz getFullscreenCarouselRecyclerViewAdapter() {
        if (getAdapter() instanceof C1335Rz) {
            return (C1335Rz) getAdapter();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public ZC getLayoutManager() {
        return (ZC) super.getLayoutManager();
    }

    public AbstractC07594h getOnScrollListener() {
        return new C1371Tk(this);
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public void setLayoutManager(AbstractC07544c abstractC07544c) {
    }
}
