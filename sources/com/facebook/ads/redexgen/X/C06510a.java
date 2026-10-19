package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.WindowInsets;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0a, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C06510a extends C06530c {
    @Override // com.facebook.ads.redexgen.X.C3G
    public final C3Y A08(View view, C3Y c3y) {
        WindowInsets windowInsets = (WindowInsets) C3Y.A01(c3y);
        WindowInsets windowInsetsDispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
        if (windowInsetsDispatchApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(windowInsetsDispatchApplyWindowInsets);
        }
        return C3Y.A00(windowInsets);
    }

    @Override // com.facebook.ads.redexgen.X.C3G
    public final C3Y A09(View view, C3Y c3y) {
        WindowInsets windowInsets = (WindowInsets) C3Y.A01(c3y);
        WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (windowInsetsOnApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(windowInsetsOnApplyWindowInsets);
        }
        return C3Y.A00(windowInsets);
    }

    @Override // com.facebook.ads.redexgen.X.C3G
    public final void A0B(View view) {
        view.stopNestedScroll();
    }

    @Override // com.facebook.ads.redexgen.X.C3G
    public final void A0F(View view, final AnonymousClass31 anonymousClass31) {
        if (anonymousClass31 == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.facebook.ads.redexgen.X.3F
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return (WindowInsets) C3Y.A01(anonymousClass31.AAV(view2, C3Y.A00(windowInsets)));
                }
            });
        }
    }
}
