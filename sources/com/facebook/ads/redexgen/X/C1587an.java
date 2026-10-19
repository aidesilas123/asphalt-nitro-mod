package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.an, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1587an implements OW {
    public final /* synthetic */ C1584ak A00;

    public C1587an(C1584ak c1584ak) {
        this.A00 = c1584ak;
    }

    @Override // com.facebook.ads.redexgen.X.OW
    public final void A97() {
        String strA00 = this.A00.A02.A0z().A00();
        if (TextUtils.isEmpty(strA00)) {
            return;
        }
        KZ.A0L(new KZ(), this.A00.A03, C1132Kc.A00(strA00), this.A00.A6N());
    }

    @Override // com.facebook.ads.redexgen.X.OW
    public final void ABE(AnonymousClass95 anonymousClass95) {
        new Handler(Looper.getMainLooper()).postDelayed(new C1588ao(this, anonymousClass95), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.OW
    public final void ABT() {
    }

    @Override // com.facebook.ads.redexgen.X.OW
    public final void ADB(View view, MotionEvent motionEvent) {
    }
}
