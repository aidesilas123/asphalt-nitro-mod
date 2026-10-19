package com.unity3d.scar.adapter.v2000.b;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: compiled from: ScarBannerAdListener.java */
/* JADX INFO: loaded from: classes4.dex */
public class d extends b {
    private final com.unity3d.scar.adapter.common.e b;
    private final c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AdListener f8077d = new a();

    /* JADX INFO: compiled from: ScarBannerAdListener.java */
    class a extends AdListener {
        a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClicked() {
            super.onAdClicked();
            d.this.b.onAdClicked();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            d.this.b.onAdClosed();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            d.this.c.d();
            d.this.b.onAdFailedToLoad(loadAdError.getCode(), loadAdError.getMessage());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            d.this.b.onAdImpression();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            d.this.b.onAdLoaded();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            d.this.b.onAdOpened();
        }
    }

    public d(com.unity3d.scar.adapter.common.e eVar, c cVar) {
        this.b = eVar;
        this.c = cVar;
    }

    public AdListener d() {
        return this.f8077d;
    }
}
