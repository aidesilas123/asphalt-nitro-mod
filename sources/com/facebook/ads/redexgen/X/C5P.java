package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.internal.api.BidderTokenProviderApi;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5P, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C5P implements BidderTokenProviderApi {
    public final C6H A00 = new C6H();

    public final C6H A00() {
        return this.A00;
    }

    @Override // com.facebook.ads.internal.api.BidderTokenProviderApi
    public final String getBidderToken(Context context) {
        return this.A00.A06(C5Q.A07(context));
    }
}
