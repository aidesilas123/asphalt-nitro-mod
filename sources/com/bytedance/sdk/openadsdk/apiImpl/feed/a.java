package com.bytedance.sdk.openadsdk.apiImpl.feed;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGImageItem;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: compiled from: PAGExtraFuncationHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    protected final q a;
    private final Context b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WeakReference<NativeVideoTsView> f1152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f1153f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b f1154g;
    private PAGMediaView h;
    private NativeExpressView i;
    private PAGMediaView j;
    private com.bytedance.sdk.openadsdk.core.b.a k;
    private com.bytedance.sdk.openadsdk.core.b.b l;
    private boolean m = false;
    private WeakReference<com.bytedance.sdk.openadsdk.core.g.f> n;

    public a(Context context, q qVar, String str) {
        this.b = context;
        this.a = qVar;
        this.c = str;
    }

    private PAGMediaView a(final View view) {
        int i;
        if (view == null) {
            return null;
        }
        if (view.getParent() instanceof ViewGroup) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        NativeExpressView nativeExpressView = this.i;
        if (nativeExpressView != null) {
            nativeExpressView.setClickListener(null);
            this.i.setClickCreativeListener(null);
        }
        com.bytedance.sdk.openadsdk.core.b.b bVar = this.l;
        if (bVar != null && (bVar instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.g) && (view instanceof NativeExpressView)) {
            ((NativeExpressView) view).setClickListener((com.bytedance.sdk.openadsdk.core.nativeexpress.g) bVar);
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar = this.k;
        if (aVar != null && (aVar instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.f) && (view instanceof NativeExpressView)) {
            ((NativeExpressView) view).setClickCreativeListener((com.bytedance.sdk.openadsdk.core.nativeexpress.f) aVar);
        }
        PAGMediaView pAGMediaView = new PAGMediaView(this.b) { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.a.5
            private void a(boolean z) {
                Integer num = this.a;
                if (num != null) {
                    com.bytedance.sdk.openadsdk.n.a.e.a(com.bytedance.sdk.openadsdk.n.a.e.a(num), z ? 4 : 8);
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                com.bytedance.sdk.openadsdk.utils.c.a(this, a.this.a);
            }

            @Override // android.view.View
            public void onWindowFocusChanged(boolean z) {
                super.onWindowFocusChanged(z);
                if (view instanceof NativeExpressView) {
                    return;
                }
                a(z);
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
            public void setVideoAdListener(PAGVideoAdListener pAGVideoAdListener) {
                super.setVideoAdListener(pAGVideoAdListener);
                a.this.a(pAGVideoAdListener);
            }
        };
        int i2 = -1;
        pAGMediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            i2 = layoutParams.width;
            i = layoutParams.height;
        } else {
            i = -1;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i);
        layoutParams2.gravity = 17;
        pAGMediaView.addView(view, layoutParams2);
        if (view instanceof NativeExpressView) {
            this.i = (NativeExpressView) view;
        }
        return pAGMediaView;
    }

    private void a(final PAGMediaView pAGMediaView) {
        if (pAGMediaView == null) {
            return;
        }
        try {
            String strN = n();
            if (TextUtils.isEmpty(strN)) {
                return;
            }
            com.bytedance.sdk.openadsdk.f.d.a(strN).a(200).b(200).d(ad.d(o.a())).c(ad.c(o.a())).a(u.BITMAP).a(new com.bytedance.sdk.component.d.h() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.a.3
                @Override // com.bytedance.sdk.component.d.h
                public Bitmap a(Bitmap bitmap) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        return com.bytedance.sdk.component.adexpress.c.a.a(o.a(), bitmap, 25);
                    }
                    return null;
                }
            }).a(new com.bytedance.sdk.openadsdk.f.b(this.a, strN, new com.bytedance.sdk.component.d.o<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.a.2
                @Override // com.bytedance.sdk.component.d.o
                public void a(int i, String str, @Nullable Throwable th) {
                }

                @Override // com.bytedance.sdk.component.d.o
                public void a(k<Bitmap> kVar) {
                    pAGMediaView.setBackground(new BitmapDrawable(kVar.b()));
                }
            }));
        } catch (Exception unused) {
        }
    }

    private c b(final PAGVideoAdListener pAGVideoAdListener) {
        return new c() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.a.7
            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.c
            public void a(int i, int i2) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoError();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.c
            public void a(long j, long j2) {
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.c
            public void a(PAGNativeAd pAGNativeAd) {
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.c
            public void b(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPlay();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.c
            public void c(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPaused();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.c
            public void d(PAGNativeAd pAGNativeAd) {
            }

            @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.c
            public void e(PAGNativeAd pAGNativeAd) {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdComplete();
                }
            }
        };
    }

    private String n() {
        n nVar;
        List<n> listQ = this.a.Q();
        if (listQ.isEmpty() || (nVar = listQ.get(0)) == null) {
            return null;
        }
        return nVar.a();
    }

    private PAGMediaView o() {
        if (!q.c(this.a)) {
            com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b bVar = this.f1154g;
            if (bVar == null) {
                return null;
            }
            NativeExpressView nativeExpressViewD = bVar.d();
            nativeExpressViewD.setTag(520093762, Boolean.TRUE);
            if (!this.m) {
                this.f1154g.e();
            }
            this.m = true;
            return a(nativeExpressViewD);
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b bVar2 = this.f1154g;
        if (bVar2 == null || !(bVar2 instanceof com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.a)) {
            return null;
        }
        NativeExpressVideoView nativeExpressVideoView = (NativeExpressVideoView) bVar2.d();
        nativeExpressVideoView.setTag(520093762, Boolean.TRUE);
        if (!this.m) {
            this.f1154g.e();
        }
        this.m = true;
        return a(nativeExpressVideoView);
    }

    public PAGMediaView a() {
        return this.h;
    }

    public void a(PAGVideoAdListener pAGVideoAdListener) {
        com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b bVar;
        if (this.a.u() == 2 && q.c(this.a) && (bVar = this.f1154g) != null && (bVar instanceof com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.a)) {
            NativeExpressVideoView nativeExpressVideoView = (NativeExpressVideoView) bVar.d();
            if (nativeExpressVideoView != null) {
                nativeExpressVideoView.setVideoAdListener(b(pAGVideoAdListener));
                return;
            }
            return;
        }
        b bVar2 = this.f1153f;
        if (bVar2 != null) {
            bVar2.a(b(pAGVideoAdListener));
        }
    }

    public void a(b bVar) {
        this.f1153f = bVar;
    }

    public void a(com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b bVar) {
        this.f1154g = bVar;
    }

    public void a(com.bytedance.sdk.openadsdk.core.b.a aVar) {
        this.k = aVar;
    }

    public void a(com.bytedance.sdk.openadsdk.core.b.b bVar) {
        this.l = bVar;
    }

    public void a(com.bytedance.sdk.openadsdk.core.g.f fVar) {
        this.n = new WeakReference<>(fVar);
    }

    public void a(NativeVideoTsView nativeVideoTsView) {
        this.f1152e = new WeakReference<>(nativeVideoTsView);
    }

    public void a(boolean z) {
        this.f1151d = z;
    }

    public NativeExpressView b() {
        return this.i;
    }

    public PAGImageItem c() {
        q qVar = this.a;
        if (qVar == null || qVar.N() == null) {
            return null;
        }
        return new PAGImageItem(this.a.N().c(), this.a.N().b(), this.a.N().a(), (float) this.a.N().d());
    }

    public String d() {
        q qVar = this.a;
        if (qVar != null) {
            return qVar.V();
        }
        return null;
    }

    public String e() {
        q qVar = this.a;
        if (qVar != null) {
            return qVar.W();
        }
        return null;
    }

    public String f() {
        q qVar = this.a;
        if (qVar != null) {
            return qVar.X();
        }
        return null;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public PAGMediaView g() {
        PAGMediaView pAGMediaViewI;
        com.bytedance.sdk.openadsdk.utils.b.a(this.a);
        if (this.a.u() == 2) {
            pAGMediaViewI = o();
            a(pAGMediaViewI);
        } else {
            pAGMediaViewI = i();
        }
        if (pAGMediaViewI != null) {
            pAGMediaViewI.setMrcTrackerKey(com.bytedance.sdk.openadsdk.n.a.e.b(this.a));
        } else {
            pAGMediaViewI = new PAGMediaView(this.b) { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.a.1
                @Override // android.view.ViewGroup, android.view.View
                protected void onAttachedToWindow() {
                    super.onAttachedToWindow();
                    com.bytedance.sdk.openadsdk.utils.c.a(this, a.this.a);
                }
            };
        }
        if (pAGMediaViewI instanceof PAGVideoMediaView) {
            ((PAGVideoMediaView) pAGMediaViewI).setMaterialMeta(this.a);
        }
        this.j = pAGMediaViewI;
        return pAGMediaViewI;
    }

    public PAGMediaView h() {
        return this.j;
    }

    public PAGMediaView i() {
        if (!q.c(this.a)) {
            List<n> listQ = this.a.Q();
            if (listQ == null || listQ.isEmpty()) {
                ApmHelper.reportCustomError("images empty", "getMediaView return null", new RuntimeException());
                return null;
            }
            ImageView imageView = new ImageView(this.b);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            n nVar = listQ.get(0);
            if (nVar != null) {
                com.bytedance.sdk.openadsdk.f.d.a(nVar).a(u.BITMAP).a(com.bytedance.sdk.openadsdk.f.c.a(this.a, nVar.a(), imageView));
            }
            PAGMediaView pAGMediaViewA = a(imageView);
            if (this.k == null || !com.bytedance.sdk.openadsdk.core.settings.o.aj().d(String.valueOf(this.a.aZ()))) {
                pAGMediaViewA.setOnClickListener(null);
                pAGMediaViewA.setOnTouchListener(null);
            } else {
                pAGMediaViewA.setOnClickListener(this.k);
                pAGMediaViewA.setOnTouchListener(this.k);
            }
            pAGMediaViewA.setTag(520093762, Boolean.TRUE);
            PAGMediaView pAGMediaView = this.h;
            if (pAGMediaView != null) {
                pAGMediaView.setOnClickListener(null);
                this.h.setOnTouchListener(null);
            }
            this.h = pAGMediaViewA;
            return pAGMediaViewA;
        }
        b bVar = this.f1153f;
        if (bVar == null) {
            ApmHelper.reportCustomError("mPAGFeedVideoAdImpl null", "getMediaView return null", new RuntimeException());
            return null;
        }
        View viewF = bVar.f();
        if (viewF == null) {
            ApmHelper.reportCustomError("adVideoView null", "getMediaView return null", new RuntimeException());
            return null;
        }
        if (viewF.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewF.getParent()).removeView(viewF);
        }
        PAGMediaView pAGMediaView2 = this.h;
        if (pAGMediaView2 != null) {
            pAGMediaView2.setOnClickListener(null);
            this.h.setOnTouchListener(null);
        }
        PAGVideoMediaView pAGVideoMediaView = new PAGVideoMediaView(this.b, viewF, this);
        pAGVideoMediaView.setTag(520093762, Boolean.TRUE);
        if (this.k == null || !com.bytedance.sdk.openadsdk.core.settings.o.aj().d(String.valueOf(this.a.aZ()))) {
            com.bytedance.sdk.openadsdk.core.b.c cVar = new com.bytedance.sdk.openadsdk.core.b.c() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.a.4
                @Override // com.bytedance.sdk.openadsdk.core.b.c
                protected void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
                    try {
                        ((PAGVideoMediaView) view).handleInterruptVideo();
                    } catch (Exception unused) {
                    }
                }
            };
            pAGVideoMediaView.setOnClickListener(cVar);
            pAGVideoMediaView.setOnTouchListener(cVar);
        } else {
            pAGVideoMediaView.setOnClickListener(this.k);
            pAGVideoMediaView.setOnTouchListener(this.k);
        }
        this.h = pAGVideoMediaView;
        pAGVideoMediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return pAGVideoMediaView;
    }

    public View j() {
        if (o.a() == null) {
            l.e("TTNativeAdImpl", "getAdLogoView mContext == null");
            return null;
        }
        ImageView imageView = new ImageView(o.a());
        imageView.setImageResource(s.d(o.a(), "tt_ad_logo_new"));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.a.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.l();
            }
        });
        return imageView;
    }

    public View k() {
        q qVar;
        if (o.a() == null || (qVar = this.a) == null) {
            l.e("TTNativeAdImpl", "getAdChoicesView mContext == null");
            return null;
        }
        if (!qVar.at() || !this.a.h()) {
            return null;
        }
        ImageView imageView = new ImageView(o.a());
        com.bytedance.sdk.openadsdk.k.c.a().a((int) ad.a(o.a(), 14.0f, true), imageView, this.a);
        return imageView;
    }

    public void l() {
        Context context = this.b;
        if (context != null) {
            TTWebsiteActivity.a(context, this.a, this.c);
        }
    }

    public void m() {
        com.bytedance.sdk.openadsdk.core.g.f fVar;
        WeakReference<com.bytedance.sdk.openadsdk.core.g.f> weakReference = this.n;
        if (weakReference == null || (fVar = weakReference.get()) == null) {
            return;
        }
        fVar.a(13);
    }
}
