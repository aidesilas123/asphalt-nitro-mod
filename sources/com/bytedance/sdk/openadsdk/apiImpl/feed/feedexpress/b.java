package com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.adexpress.b.c;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.apiImpl.feed.h;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: PAGFeedExpressView.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends h {
    protected final Context h;
    protected AdSlot i;
    protected NativeExpressView j;
    protected String k;
    private boolean l;

    public b(@NonNull Context context, q qVar, AdSlot adSlot) {
        super(context, qVar, 5, true);
        this.k = "embeded_ad";
        this.l = false;
        this.b.h(1);
        this.f1155d.a(this);
        this.h = context;
        this.i = adSlot;
        a();
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f2, float f3) {
        int iB = ad.b(this.h, f2);
        int iB2 = ad.b(this.h, f3);
        ViewGroup.LayoutParams layoutParams = this.j.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(iB, iB2);
        }
        layoutParams.width = iB;
        layoutParams.height = iB2;
        this.j.setLayoutParams(layoutParams);
    }

    private void b() {
        NativeExpressView nativeExpressView = this.j;
        if (nativeExpressView != null) {
            nativeExpressView.setBackupListener(new c() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b.1
                @Override // com.bytedance.sdk.component.adexpress.b.c
                public boolean a(ViewGroup viewGroup, int i) {
                    PAGFeedExpressBackupView pAGFeedExpressBackupView = new PAGFeedExpressBackupView(b.this.j.getContext());
                    pAGFeedExpressBackupView.setExtraFuncationHelper(((h) b.this).f1155d);
                    pAGFeedExpressBackupView.a(b.this.j);
                    return true;
                }
            });
        }
    }

    protected void a() {
        this.j = new NativeExpressView(this.h, this.b, this.i, this.k);
        c();
    }

    public void a(boolean z) {
        this.l = z;
    }

    protected void c() {
        NativeExpressView nativeExpressView = this.j;
        if (nativeExpressView != null) {
            nativeExpressView.setExpressInteractionListener(new PAGBannerAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b.2
                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onAdClicked(View view, int i) {
                }

                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onAdDismissed() {
                }

                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onAdShow(View view, int i) {
                }

                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onRenderFail(View view, String str, int i) {
                }

                @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
                public void onRenderSuccess(View view, float f2, float f3) {
                    if (!b.this.j.n()) {
                        b.this.a(f2, f3);
                        if (b.this.l) {
                            b.this.j.i();
                            return;
                        }
                        return;
                    }
                    b bVar = b.this;
                    Context context = bVar.h;
                    q qVar = ((h) bVar).b;
                    b bVar2 = b.this;
                    com.bytedance.sdk.openadsdk.apiImpl.feed.b bVar3 = new com.bytedance.sdk.openadsdk.apiImpl.feed.b(context, qVar, 5, bVar2.i, ((h) bVar2).f1155d, ((h) b.this).a);
                    b bVar4 = b.this;
                    if (bVar4 instanceof a) {
                        bVar3.a(((NativeExpressVideoView) bVar4.d()).getVideoAdListener());
                    }
                    ((h) b.this).f1155d.a((com.bytedance.sdk.openadsdk.core.b.a) b.this.j.getClickCreativeListener());
                    PAGMediaView pAGMediaViewI = ((h) b.this).f1155d.i();
                    if (pAGMediaViewI == null) {
                        pAGMediaViewI = new PAGMediaView(b.this.h);
                    }
                    b.this.j.addView(pAGMediaViewI);
                }
            });
        }
    }

    public NativeExpressView d() {
        return this.j;
    }

    public void e() {
        NativeExpressView nativeExpressView = this.j;
        if (nativeExpressView != null) {
            nativeExpressView.j();
        }
    }
}
