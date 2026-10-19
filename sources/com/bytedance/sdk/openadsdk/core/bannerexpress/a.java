package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.e;
import com.bytedance.sdk.openadsdk.core.nativeexpress.f;
import com.bytedance.sdk.openadsdk.core.nativeexpress.g;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.core.y;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.ae;
import com.bytedance.sdk.openadsdk.utils.r;
import com.bytedance.sdk.openadsdk.utils.w;
import com.com.bytedance.overseas.sdk.a.d;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: PAGBannerAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends PAGBannerAd implements x.a {
    protected BannerExpressView a;
    protected final Context b;
    protected q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected AdSlot f1480d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TTDislikeDialogAbstract f1481e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f1483g;
    private PAGBannerAdWrapperListener h;
    private int i;
    private com.bytedance.sdk.openadsdk.dislike.b k;
    private com.com.bytedance.overseas.sdk.a.c l;
    private x m;
    private t.a n;
    private boolean p;
    private boolean q;
    private NativeExpressView s;
    private int j = 0;
    private final Queue<Long> o = new LinkedList();
    private String r = "banner_ad";
    private final AtomicBoolean t = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final View.OnAttachStateChangeListener f1482f = new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.1
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            a aVar = a.this;
            aVar.a(aVar.a.getCurView(), a.this.c);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a.this.a.c();
        }
    };

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.bannerexpress.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PAGBannerAdImpl.java */
    public interface InterfaceC0132a {
        void a();
    }

    /* JADX INFO: compiled from: PAGBannerAdImpl.java */
    private static class b extends h {
        boolean a;
        q b;
        WeakReference<a> c;

        b(boolean z, q qVar, a aVar) {
            super("ReportWindowFocusChangedAdShow");
            this.a = z;
            this.b = qVar;
            this.c = new WeakReference<>(aVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            WeakReference<a> weakReference = this.c;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.c.get().b(this.a, this.b);
        }
    }

    public a(Context context, q qVar, AdSlot adSlot) {
        this.b = context;
        this.c = qVar;
        this.f1480d = adSlot;
        a(context, qVar, adSlot);
        this.f1483g = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EmptyView a(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return null;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            try {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof EmptyView) {
                    return (EmptyView) childAt;
                }
            } catch (Exception unused) {
            }
            return null;
        }
        return null;
    }

    private com.com.bytedance.overseas.sdk.a.c a(q qVar) {
        if (qVar.M() == 4) {
            return d.a(this.b, qVar, this.r);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, NativeExpressView nativeExpressView, q qVar, String str, InterfaceC0132a interfaceC0132a) {
        com.bytedance.sdk.openadsdk.core.h.b().a(str, interfaceC0132a);
        l.a("PAGBannerAdImpl", "banner_ad", "ExpressView SHOW");
        Queue<Long> queue = this.o;
        if (queue != null) {
            queue.offer(Long.valueOf(System.currentTimeMillis()));
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (nativeExpressView != null) {
                jSONObject.put("dynamic_show_type", nativeExpressView.getDynamicShowType());
            }
            if (view != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("width", view.getWidth());
                    jSONObject2.put("height", view.getHeight());
                    jSONObject2.put("alpha", view.getAlpha());
                } catch (Throwable unused) {
                }
                jSONObject.put("root_view", jSONObject2.toString());
            }
            com.bytedance.sdk.openadsdk.b.c.a(qVar, this.r, jSONObject);
        } catch (JSONException unused2) {
            l.e("PAGBannerAdImpl", "onShowFun json error");
        }
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.h;
        if (pAGBannerAdWrapperListener != null) {
            pAGBannerAdWrapperListener.onAdShow(view, qVar.M());
        }
        if (qVar.ah()) {
            ac.a(qVar, view);
        }
        f();
        BannerExpressView bannerExpressView = this.a;
        if (bannerExpressView == null || bannerExpressView.getCurView() == null) {
            return;
        }
        this.a.getCurView().k();
        this.a.getCurView().i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EmptyView emptyView, boolean z, q qVar) {
        BannerExpressView bannerExpressView = this.a;
        if (bannerExpressView != null && ((!z && emptyView != null && emptyView == a(bannerExpressView.getCurView())) || z)) {
            e();
        }
        b(qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, q qVar) {
        if (z) {
            if (this.c.bj() && !this.c.bo()) {
                this.c.f(true);
                q qVar2 = this.c;
                com.bytedance.sdk.openadsdk.b.c.a(qVar2, this.r, qVar2.bk());
            }
            f();
            l.a("PAGBannerAdImpl", "banner_ad", "Get focus, start timing");
        } else {
            e();
            l.a("PAGBannerAdImpl", "banner_ad", "Lose focus, stop timing");
        }
        aa.b(new b(z, qVar, this), 10);
    }

    private void b(q qVar) {
        Queue<Long> queue = this.o;
        if (queue == null || queue.size() <= 0 || qVar == null) {
            return;
        }
        try {
            long jLongValue = this.o.poll().longValue();
            if (jLongValue <= 0 || this.s == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.b.c.a(String.valueOf(System.currentTimeMillis() - jLongValue), qVar, this.r, this.s.getAdShowTime());
        } catch (Exception e2) {
            l.e("PAGBannerAdImpl", e2.getMessage());
        }
    }

    private void b(@NonNull NativeExpressView nativeExpressView, @NonNull q qVar) {
        if (nativeExpressView == null || qVar == null) {
            return;
        }
        if (this.n != null) {
            this.k.a(qVar.ac(), qVar.ae());
            nativeExpressView.setDislike(this.k);
        }
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f1481e;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.setMaterialMeta(qVar.ac(), qVar.ae());
            nativeExpressView.setOuterDislike(this.f1481e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z, q qVar) {
        Long lPoll;
        try {
            if (z) {
                this.o.offer(Long.valueOf(System.currentTimeMillis()));
            } else if (this.o.size() > 0 && this.s != null && (lPoll = this.o.poll()) != null) {
                com.bytedance.sdk.openadsdk.b.c.a(String.valueOf(System.currentTimeMillis() - lPoll.longValue()), qVar, this.r, this.s.getAdShowTime());
            }
        } catch (Exception e2) {
            l.e("PAGBannerAdImpl", e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        b();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@NonNull q qVar) {
        if (this.a.getNextView() == null || !this.a.f()) {
            return;
        }
        b(this.a.getNextView(), qVar);
        a(this.a.getNextView(), qVar);
    }

    private void d() {
        e.a(this.b).a(this.f1480d, 1, null, new e.a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.6
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.e.a
            public void a() {
                a.this.f();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.e.a
            public void a(List<q> list) {
                if (list == null || list.isEmpty()) {
                    a.this.f();
                    return;
                }
                q qVar = list.get(0);
                a aVar = a.this;
                aVar.a.a(qVar, aVar.f1480d);
                a.this.c(qVar);
                a.this.a.d();
            }
        }, 5000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        x xVar = this.m;
        if (xVar != null) {
            xVar.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        x xVar = this.m;
        if (xVar != null) {
            xVar.removeCallbacksAndMessages(null);
            this.m.sendEmptyMessageDelayed(112202, 1000L);
        }
    }

    public InterfaceC0132a a() {
        return new InterfaceC0132a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.5
            private View a(boolean z) {
                PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(a.this.b);
                ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
                pAGFrameLayout.setBackgroundColor(-1);
                pAGFrameLayout.setLayoutParams(layoutParams);
                View view = new View(a.this.b);
                ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                view.setAlpha(0.3f);
                view.setBackgroundColor(Color.parseColor("#F3F7F8"));
                pAGFrameLayout.addView(view, layoutParams2);
                PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(a.this.b);
                ViewGroup.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
                if (z) {
                    pAGFrameLayout2.setBackground(s.c(a.this.b, "tt_ad_closed_background_300_250"));
                } else {
                    pAGFrameLayout2.setBackground(s.c(a.this.b, "tt_ad_closed_background_320_50"));
                }
                pAGFrameLayout.addView(pAGFrameLayout2, layoutParams3);
                PAGImageView pAGImageView = new PAGImageView(a.this.b);
                pAGImageView.setId(520093739);
                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
                if (z) {
                    int iB = ad.b(a.this.b, 16.0f);
                    layoutParams4.width = ad.b(a.this.b, 77.0f);
                    layoutParams4.height = ad.b(a.this.b, 14.0f);
                    layoutParams4.leftMargin = iB;
                    layoutParams4.topMargin = iB;
                } else {
                    int iB2 = ad.b(a.this.b, 8.0f);
                    layoutParams4.width = ad.b(a.this.b, 45.0f);
                    layoutParams4.height = ad.b(a.this.b, 8.18f);
                    layoutParams4.leftMargin = iB2;
                    layoutParams4.topMargin = iB2;
                }
                pAGImageView.setImageResource(s.d(a.this.b, "tt_ad_closed_logo_red"));
                pAGFrameLayout2.addView(pAGImageView, layoutParams4);
                PAGTextView pAGTextView = new PAGTextView(a.this.b);
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams5.gravity = 17;
                pAGTextView.setAlpha(0.5f);
                pAGTextView.setLines(1);
                pAGTextView.setText(s.a(a.this.b, "tt_ad_is_closed"));
                if (z) {
                    pAGTextView.setTextSize(18.0f);
                } else {
                    pAGTextView.setTextSize(12.0f);
                }
                pAGFrameLayout2.addView(pAGTextView, layoutParams5);
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.5.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        a aVar = a.this;
                        TTWebsiteActivity.a(aVar.b, aVar.c, aVar.r);
                    }
                };
                pAGImageView.setOnClickListener(onClickListener);
                pAGTextView.setOnClickListener(onClickListener);
                return pAGFrameLayout;
            }

            @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a.InterfaceC0132a
            public void a() {
                EmptyView emptyViewA;
                int width = a.this.s.getWidth();
                int height = a.this.s.getHeight();
                View viewA = a(((double) height) >= Math.floor((((double) width) * 450.0d) / 600.0d));
                a.this.s.o();
                if (a.this.f1483g) {
                    emptyViewA = null;
                } else {
                    a aVar = a.this;
                    emptyViewA = aVar.a(aVar.s);
                }
                a.this.s.removeAllViews();
                a.this.s.addView(viewA, new ViewGroup.LayoutParams(width, height));
                a.this.s.setClickCreativeListener(null);
                a.this.s.setClickListener(null);
                if (o.d().E() == 1) {
                    a.this.e();
                } else if (a.this.i != 0 && !a.this.f1483g && emptyViewA != null) {
                    a.this.s.addView(emptyViewA);
                }
                if (a.this.h != null) {
                    a.this.h.onAdDismissed();
                }
            }
        };
    }

    public void a(Context context, q qVar, AdSlot adSlot) {
        BannerExpressView bannerExpressView = new BannerExpressView(context, qVar, adSlot);
        this.a = bannerExpressView;
        bannerExpressView.addOnAttachStateChangeListener(this.f1482f);
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        if (message.what == 112202) {
            if (y.a(this.a, 50, 1)) {
                this.j += 1000;
            }
            if (this.j < this.i) {
                f();
                return;
            }
            d();
            AdSlot adSlot = this.f1480d;
            adSlot.setRotateOrder(adSlot.getRotateOrder() + 1);
            this.j = 0;
            e();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    protected void a(@NonNull final NativeExpressView nativeExpressView, @NonNull final q qVar) {
        if (nativeExpressView == null || qVar == null) {
            return;
        }
        this.c = qVar;
        this.l = a(qVar);
        this.s = nativeExpressView;
        final String strA = r.a();
        final InterfaceC0132a interfaceC0132aA = a();
        nativeExpressView.setClosedListenerKey(strA);
        nativeExpressView.setBannerClickClosedListener(interfaceC0132aA);
        nativeExpressView.setBackupListener(new com.bytedance.sdk.component.adexpress.b.c() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.2
            @Override // com.bytedance.sdk.component.adexpress.b.c
            public boolean a(ViewGroup viewGroup, int i) {
                try {
                    nativeExpressView.m();
                    if (!a.this.c.at()) {
                        BannerExpressBackupView bannerExpressBackupView = new BannerExpressBackupView(nativeExpressView.getContext());
                        bannerExpressBackupView.setClosedListenerKey(strA);
                        a aVar = a.this;
                        bannerExpressBackupView.a(aVar.c, nativeExpressView, aVar.l);
                        bannerExpressBackupView.setDislikeInner(a.this.k);
                        bannerExpressBackupView.setDislikeOuter(a.this.f1481e);
                        bannerExpressBackupView.setAdInteractionListener(a.this.h);
                        return true;
                    }
                    VastBannerBackupView vastBannerBackupView = new VastBannerBackupView(nativeExpressView.getContext());
                    vastBannerBackupView.setClosedListenerKey(strA);
                    a aVar2 = a.this;
                    vastBannerBackupView.a(aVar2.c, nativeExpressView, aVar2.l);
                    vastBannerBackupView.setDislikeInner(a.this.k);
                    vastBannerBackupView.setDislikeOuter(a.this.f1481e);
                    vastBannerBackupView.setAdInteractionListener(a.this.h);
                    nativeExpressView.setVastVideoHelper(vastBannerBackupView);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
        final EmptyView emptyView = null;
        if (this.f1483g) {
            ae.a(nativeExpressView, true, 1, new ae.b() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.4
                @Override // com.bytedance.sdk.openadsdk.utils.ae.b
                public void a() {
                    a.this.c();
                }

                @Override // com.bytedance.sdk.openadsdk.utils.ae.b
                public void a(View view, boolean z) {
                    if (z && a.this.t.compareAndSet(false, true)) {
                        a.this.a(view, nativeExpressView, qVar, strA, interfaceC0132aA);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.utils.ae.b
                public void a(boolean z) {
                    a.this.a(z, qVar);
                }

                @Override // com.bytedance.sdk.openadsdk.utils.ae.b
                public void b() {
                    a.this.a((EmptyView) null, true, qVar);
                }
            }, null);
        } else {
            EmptyView emptyViewA = a(nativeExpressView);
            if (emptyViewA == null) {
                emptyViewA = new EmptyView(this.b, nativeExpressView);
                nativeExpressView.addView(emptyViewA);
            }
            emptyView = emptyViewA;
            emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.3
                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a() {
                    a.this.c();
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a(View view) {
                    if (a.this.t.compareAndSet(false, true)) {
                        a.this.a(view, nativeExpressView, qVar, strA, interfaceC0132aA);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a(boolean z) {
                    a.this.a(z, qVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void b() {
                    a.this.a(emptyView, false, qVar);
                }
            });
        }
        g gVar = new g(this.b, qVar, this.r, 2);
        gVar.a(nativeExpressView);
        gVar.a(this);
        gVar.a(this.l);
        nativeExpressView.setClickListener(gVar);
        f fVar = new f(this.b, qVar, this.r, 2);
        fVar.a((View) nativeExpressView);
        fVar.a(this);
        NativeExpressView nativeExpressView2 = this.s;
        if (nativeExpressView2 instanceof NativeExpressVideoView) {
            fVar.a(((NativeExpressVideoView) nativeExpressView2).getVideoController());
        }
        fVar.a(this.l);
        nativeExpressView.setClickCreativeListener(fVar);
        if (this.f1483g) {
            return;
        }
        emptyView.setNeedCheckingShow(true);
    }

    public void b() {
        this.c.a(SystemClock.elapsedRealtime());
        this.a.b();
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void destroy() {
        if (this.a != null) {
            l.b("PAGBannerAdImpl", "PAGBanner destroy");
            try {
                this.a.c();
                this.a.removeOnAttachStateChangeListener(this.f1482f);
            } catch (Throwable unused) {
            }
        }
        e();
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public View getBannerView() {
        com.bytedance.sdk.openadsdk.utils.b.a(this.c);
        return this.a;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        q qVar = this.c;
        if (qVar != null) {
            return qVar.ai();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d2, String str, String str2) {
        if (this.q) {
            return;
        }
        w.a(this.c, d2, str, str2);
        this.q = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void setAdInteractionCallback(PAGBannerAdInteractionCallback pAGBannerAdInteractionCallback) {
        com.bytedance.sdk.openadsdk.core.bannerexpress.b bVar = new com.bytedance.sdk.openadsdk.core.bannerexpress.b(pAGBannerAdInteractionCallback);
        this.h = bVar;
        this.a.setExpressInteractionListener(bVar);
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void setAdInteractionListener(PAGBannerAdInteractionListener pAGBannerAdInteractionListener) {
        com.bytedance.sdk.openadsdk.core.bannerexpress.b bVar = new com.bytedance.sdk.openadsdk.core.bannerexpress.b(pAGBannerAdInteractionListener);
        this.h = bVar;
        this.a.setExpressInteractionListener(bVar);
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d2) {
        if (this.p) {
            return;
        }
        w.a(this.c, d2);
        this.p = true;
    }
}
