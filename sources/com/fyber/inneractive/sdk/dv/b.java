package com.fyber.inneractive.sdk.dv;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.flow.h;
import com.fyber.inneractive.sdk.util.l;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.ads.query.QueryInfo;

/* JADX INFO: loaded from: classes2.dex */
public class b extends h<f, com.fyber.inneractive.sdk.dv.a> implements d {
    public final boolean m = !l.a("com.google.android.gms.ads.InterstitialAd");

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[UnitDisplayType.values().length];
            a = iArr;
            try {
                iArr[UnitDisplayType.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[UnitDisplayType.BANNER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[UnitDisplayType.MRECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[UnitDisplayType.REWARDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.h, com.fyber.inneractive.sdk.interfaces.a
    public void a() {
        Content content = this.c;
        if (content != 0) {
            ((com.fyber.inneractive.sdk.dv.a) content).a();
        }
        super.a();
    }

    @Override // com.fyber.inneractive.sdk.flow.h, com.fyber.inneractive.sdk.interfaces.a.b
    public void b() {
        Content content = this.c;
        if (content != 0) {
            ((com.fyber.inneractive.sdk.dv.a) content).a();
        }
        super.b();
    }

    @Override // com.fyber.inneractive.sdk.flow.h
    public String f() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.flow.h
    public void j() {
        Response response = this.b;
        if (response == 0 || ((f) response).s == null) {
            l();
            return;
        }
        InneractiveAdRequest inneractiveAdRequest = this.a;
        if (inneractiveAdRequest != null) {
            boolean muteVideo = inneractiveAdRequest.getMuteVideo();
            try {
                MobileAds.setAppMuted(muteVideo);
                MobileAds.setAppVolume(muteVideo ? 0.0f : 1.0f);
            } catch (Throwable unused) {
            }
        }
        f fVar = (f) this.b;
        UnitDisplayType unitDisplayType = fVar.n;
        QueryInfo queryInfo = fVar.s.a;
        int i = a.a[unitDisplayType.ordinal()];
        com.fyber.inneractive.sdk.dv.a aVar = i != 1 ? (i == 2 || i == 3) ? new com.fyber.inneractive.sdk.dv.banner.a(g(), this.f2008g, (f) this.b) : i != 4 ? null : this.m ? new com.fyber.inneractive.sdk.dv.rewarded.a(g(), this.f2008g, (f) this.b) : new com.fyber.inneractive.sdk.dv.rewarded.b(g(), this.f2008g, (f) this.b) : this.m ? new com.fyber.inneractive.sdk.dv.interstitial.b(g(), this.f2008g, (f) this.b) : new com.fyber.inneractive.sdk.dv.interstitial.c(g(), this.f2008g, (f) this.b);
        this.c = aVar;
        if (queryInfo == null || aVar == null || this.b == 0) {
            l();
            return;
        }
        try {
            AdRequest.Builder builder = new AdRequest.Builder();
            try {
                builder.getClass().getMethod("setAdString", String.class).invoke(builder, ((f) this.b).J);
            } catch (Exception unused2) {
                builder.setAdInfo(new AdInfo(queryInfo, ((f) this.b).J));
            }
            ((com.fyber.inneractive.sdk.dv.a) this.c).a(builder.build(), this);
        } catch (Throwable unused3) {
            l();
        }
    }

    public void l() {
        a(new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, com.fyber.inneractive.sdk.flow.g.NETWORK_ERROR));
    }
}
