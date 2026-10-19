package com.bytedance.sdk.openadsdk.apiImpl.feed;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.List;

/* JADX INFO: compiled from: PAGFeedNativeVideoAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends h implements c.InterfaceC0092c, c.d, a.InterfaceC0147a {
    private c h;
    private final com.bytedance.sdk.openadsdk.multipro.b.a i;
    private boolean j;
    private boolean k;
    private AdSlot l;
    private long m;

    public b(@NonNull Context context, @NonNull q qVar, int i, AdSlot adSlot) {
        super(context, qVar, i, true);
        this.j = false;
        this.k = true;
        this.f1156e = i;
        this.l = adSlot;
        this.i = new com.bytedance.sdk.openadsdk.multipro.b.a();
        a(this.f1157f);
        a("embeded_ad");
        this.f1155d.a(this);
    }

    public b(@NonNull Context context, @NonNull q qVar, int i, AdSlot adSlot, a aVar, n nVar) {
        super(context, qVar, i, false);
        this.j = false;
        this.k = true;
        this.f1155d = aVar;
        this.a = nVar;
        this.f1156e = i;
        this.l = adSlot;
        this.i = new com.bytedance.sdk.openadsdk.multipro.b.a();
        a(this.f1157f);
        a("embeded_ad");
        aVar.a(this);
    }

    private void a(int i) {
        int iB = o.d().b(i);
        int iC = com.bytedance.sdk.component.utils.o.c(o.a());
        if (3 == iB) {
            this.j = false;
            this.k = false;
        } else if (1 == iB && ac.d(iC)) {
            this.j = false;
            this.k = true;
        } else if (2 == iB) {
            if (ac.e(iC) || ac.d(iC) || ac.f(iC)) {
                this.j = false;
                this.k = true;
            }
        } else if (4 == iB) {
            this.j = true;
        } else if (5 == iB && (ac.d(iC) || ac.f(iC))) {
            this.k = true;
        }
        a aVar = this.f1155d;
        if (aVar != null) {
            aVar.a(this.j);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.d
    public void a(int i, int i2) {
        c cVar = this.h;
        if (cVar != null) {
            cVar.a(i, i2);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void a(long j, long j2) {
        this.m = j;
        c cVar = this.h;
        if (cVar != null) {
            cVar.a(j, j2);
        }
    }

    public void a(c cVar) {
        this.h = cVar;
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.h
    protected void a(String str) {
        super.a(str);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void a_() {
        c cVar = this.h;
        if (cVar != null) {
            cVar.b(this);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void d_() {
        c cVar = this.h;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void e_() {
        c cVar = this.h;
        if (cVar != null) {
            cVar.d(this);
        }
    }

    public View f() {
        NativeVideoTsView nativeVideoTsView;
        q qVar = this.b;
        if (qVar != null && this.c != null) {
            if (q.c(qVar)) {
                try {
                    nativeVideoTsView = new NativeVideoTsView(this.c, this.b, this.a.a());
                    q qVar2 = this.b;
                    if (qVar2 != null && qVar2.at()) {
                        com.bytedance.sdk.openadsdk.core.g.f fVarA = nativeVideoTsView.a((List<Pair<View, FriendlyObstructionPurpose>>) null);
                        a aVar = this.f1155d;
                        if (aVar != null) {
                            aVar.a(fVarA);
                        }
                    }
                    this.a.a(nativeVideoTsView.getNativeVideoController());
                    a aVar2 = this.f1155d;
                    if (aVar2 != null) {
                        aVar2.a(nativeVideoTsView);
                    }
                    nativeVideoTsView.setVideoAdClickListenerTTNativeAd(this);
                    nativeVideoTsView.setAdCreativeClickListener(new NativeVideoTsView.a() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.b.1
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.a
                        public void a(View view, int i) {
                            n nVar = b.this.a;
                            if (nVar != null) {
                                nVar.a(view, i);
                            }
                        }
                    });
                    nativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.b() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.b.2
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.b
                        public void a(boolean z, long j, long j2, long j3, boolean z2) {
                            b.this.i.a = z;
                            b.this.i.f1842e = j;
                            b.this.i.f1843f = j2;
                            b.this.i.f1844g = j3;
                            b.this.i.f1841d = z2;
                        }
                    });
                    nativeVideoTsView.setVideoAdLoadListener(this);
                    nativeVideoTsView.setVideoAdInteractionListener(this);
                    if (5 == this.f1156e) {
                        nativeVideoTsView.setIsAutoPlay(this.j ? this.l.isAutoPlay() : this.k);
                    } else {
                        nativeVideoTsView.setIsAutoPlay(this.k);
                    }
                    nativeVideoTsView.setIsQuiet(o.d().c(String.valueOf(this.f1157f)));
                } catch (Exception e2) {
                    ApmHelper.reportCustomError("", "getAdView null", e2);
                    nativeVideoTsView = null;
                }
                if (!q.c(this.b) && nativeVideoTsView != null && nativeVideoTsView.a(0L, true, false)) {
                    return nativeVideoTsView;
                }
                ApmHelper.reportCustomError(this.b.ad() + "," + nativeVideoTsView, "getAdView null", new RuntimeException());
            } else {
                nativeVideoTsView = null;
                if (!q.c(this.b)) {
                }
                ApmHelper.reportCustomError(this.b.ad() + "," + nativeVideoTsView, "getAdView null", new RuntimeException());
            }
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.InterfaceC0092c
    public void f_() {
        c cVar = this.h;
        if (cVar != null) {
            cVar.e(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.b.a.InterfaceC0147a
    public com.bytedance.sdk.openadsdk.multipro.b.a g() {
        return this.i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.d
    public void g_() {
        c cVar = this.h;
        if (cVar != null) {
            cVar.a(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.h, com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void showPrivacyActivity() {
        a aVar = this.f1155d;
        if (aVar != null) {
            aVar.l();
        }
    }
}
