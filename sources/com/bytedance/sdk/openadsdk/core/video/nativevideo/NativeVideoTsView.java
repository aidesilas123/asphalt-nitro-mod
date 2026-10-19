package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.g.f;
import com.bytedance.sdk.openadsdk.core.l;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.p;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.core.y;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.h;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import com.json.o2;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public class NativeVideoTsView extends PAGFrameLayout implements c.a, x.a, c.a {
    private static final Integer u = 0;
    private static final Integer v = 1;
    private boolean A;
    private long B;
    private final boolean C;
    private final Handler D;
    private boolean E;
    private long F;
    private boolean G;
    private final String H;
    private View I;
    private c.InterfaceC0092c J;
    private ViewTreeObserver.OnGlobalLayoutListener K;
    private final AtomicBoolean L;
    private final Runnable M;
    private boolean N;
    private final AtomicBoolean O;
    private final ViewTreeObserver.OnScrollChangedListener P;
    protected final q a;
    protected com.bykv.vk.openvk.component.video.api.d.c b;
    protected FrameLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f1709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public g f1711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected RelativeLayout f1712g;
    protected ImageView h;
    protected ImageView i;
    protected ImageView j;
    protected boolean k;
    protected String l;
    protected int m;
    boolean n;
    public b o;
    private final Context p;
    private ViewGroup q;
    private boolean r;
    private boolean s;
    private String t;
    private String w;
    private boolean x;
    private boolean y;
    private boolean z;

    public interface a {
        void a(View view, int i);
    }

    public interface b {
        void a(boolean z, long j, long j2, long j3, boolean z2);
    }

    public NativeVideoTsView(@NonNull Context context, @NonNull q qVar, g gVar) {
        this(context, qVar, false, gVar);
    }

    public NativeVideoTsView(@NonNull Context context, @NonNull q qVar, String str, boolean z, boolean z2, g gVar) {
        this(context, qVar, false, str, z, z2, gVar);
    }

    public NativeVideoTsView(@NonNull Context context, @NonNull q qVar, boolean z, g gVar) {
        this(context, qVar, z, "embeded_ad", false, false, gVar);
    }

    public NativeVideoTsView(@NonNull Context context, @NonNull q qVar, boolean z, String str, boolean z2, boolean z3, g gVar) {
        super(context);
        this.r = true;
        this.f1709d = true;
        this.s = false;
        this.f1710e = false;
        this.x = true;
        this.y = false;
        this.z = true;
        this.k = true;
        this.l = "embeded_ad";
        this.m = 50;
        this.A = true;
        this.C = false;
        this.D = new x(l.b().getLooper(), this);
        this.G = false;
        this.H = Build.MODEL;
        this.n = false;
        this.L = new AtomicBoolean(false);
        this.M = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeVideoTsView nativeVideoTsView = NativeVideoTsView.this;
                nativeVideoTsView.a(nativeVideoTsView.E, NativeVideoTsView.u.intValue());
            }
        };
        this.N = true;
        this.O = new AtomicBoolean(false);
        this.P = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.6
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeVideoTsView.this.q();
            }
        };
        try {
            if (qVar.aV()) {
                if (Build.VERSION.SDK_INT >= 23) {
                    this.w = CacheDirFactory.getICacheDir(0).b();
                } else {
                    this.w = h.a();
                }
            }
        } catch (Throwable unused) {
        }
        if (gVar != null) {
            this.f1711f = gVar;
        }
        this.l = str;
        this.p = context;
        this.a = qVar;
        this.s = z;
        setContentDescription("NativeVideoTsView");
        this.y = z2;
        this.z = z3;
        b();
        e();
    }

    private void A() {
        this.D.removeMessages(1);
        l.c().removeCallbacks(this.M);
    }

    private void B() {
        boolean zA = false;
        if (this.b == null || E() || (x() && !com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_update_flag", false))) {
            return;
        }
        long jH = this.b.h() + this.b.f();
        long jH2 = this.b.h();
        long jA = 0;
        if (x()) {
            zA = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_native_video_complete", false);
            jA = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_current_play_position", 0L);
            jH = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_total_play_duration", this.b.h() + this.b.f());
            jH2 = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_duration", this.b.h());
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.FALSE);
            this.b.c(zA);
            this.b.a(jA);
            this.b.b(jH);
            this.b.c(jH2);
        }
        com.bytedance.sdk.component.utils.l.e("MultiProcess", "onResumeFeedNativeVideoControllerData-isComplete=" + zA + ",position=" + jA + ",totalPlayDuration=" + jH + ",duration=" + jH2);
    }

    private boolean C() {
        return 2 == o.d().b(this.a.aZ());
    }

    private boolean D() {
        return 5 == o.d().b(this.a.aZ());
    }

    private boolean E() {
        return this.s;
    }

    private void F() {
        ad.e(this.i);
        ad.e(this.f1712g);
    }

    private View a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        new FrameLayout.LayoutParams(-1, -1).gravity = 17;
        frameLayout.setVisibility(8);
        this.q = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams);
        frameLayout.addView(frameLayout2);
        this.c = frameLayout2;
        View view = new View(context);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(view);
        this.I = view;
        return frameLayout;
    }

    private void a(View view, ViewGroup viewGroup, View view2) {
        int iIndexOfChild = viewGroup.indexOfChild(view2);
        viewGroup.removeViewInLayout(view2);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }

    private void a(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        try {
            if (this.a.aV()) {
                cVar.a(this.w);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, int i) {
        if (this.a == null || this.b == null) {
            return;
        }
        boolean zY = y();
        z();
        if (zY && this.b.o()) {
            com.bytedance.sdk.component.utils.l.b("NativeVideoTsView", "changeVideoStatus---isFromDetailPage()=" + zY + "，mNativeVideoController.isPlayComplete()=" + this.b.o());
            b(true);
            d();
            return;
        }
        if (!z || !this.x || this.b.o() || this.b.k()) {
            if (this.b.l() == null || !this.b.l().f()) {
                return;
            }
            this.b.a();
            a(true);
            c.InterfaceC0092c interfaceC0092c = this.J;
            if (interfaceC0092c != null) {
                interfaceC0092c.d_();
                return;
            }
            return;
        }
        if (this.b.l() == null || !this.b.l().g()) {
            if (this.r && this.b.l() == null) {
                if (!this.L.get()) {
                    this.L.set(true);
                }
                this.O.set(false);
                t();
                return;
            }
            return;
        }
        if (this.r || i == 1) {
            com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
            if (cVar != null) {
                setIsQuiet(cVar.n());
            }
            if ("ALP-AL00".equals(this.H)) {
                this.b.b();
            } else {
                if (!com.bytedance.sdk.openadsdk.core.h.b().o()) {
                    zY = true;
                }
                ((c) this.b).h(zY);
            }
            a(false);
            c.InterfaceC0092c interfaceC0092c2 = this.J;
            if (interfaceC0092c2 != null) {
                interfaceC0092c2.e_();
            }
        }
    }

    private RelativeLayout b(Context context) {
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        pAGRelativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        pAGRelativeLayout.setVisibility(8);
        PAGImageView pAGImageView = new PAGImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        pAGImageView.setLayoutParams(layoutParams);
        pAGImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.h = pAGImageView;
        PAGImageView pAGImageView2 = new PAGImageView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        pAGImageView2.setLayoutParams(layoutParams2);
        pAGImageView2.setVisibility(8);
        pAGImageView2.setBackground(s.c(context, "tt_new_play_video"));
        this.j = pAGImageView2;
        pAGRelativeLayout.addView(pAGImageView);
        pAGRelativeLayout.addView(pAGImageView2);
        return pAGRelativeLayout;
    }

    private void d() {
        a(0L, 0);
        this.J = null;
    }

    private void e() {
        addView(a(this.p));
        r();
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                NativeVideoTsView.this.q();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                NativeVideoTsView.this.q();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Handler handler = this.D;
        if (handler == null || jElapsedRealtime - this.F <= 500) {
            return;
        }
        this.F = jElapsedRealtime;
        handler.sendEmptyMessageDelayed(1, 500L);
    }

    private void r() {
        this.b = new c(this.p, this.c, this.a, this.l, !E(), this.y, this.z, this.f1711f);
        s();
        if (this.K == null) {
            this.K = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    NativeVideoTsView nativeVideoTsView;
                    com.bykv.vk.openvk.component.video.api.d.c cVar;
                    if (NativeVideoTsView.this.q == null || NativeVideoTsView.this.q.getViewTreeObserver() == null || (cVar = (nativeVideoTsView = NativeVideoTsView.this).b) == null) {
                        return;
                    }
                    ((c) cVar).a(nativeVideoTsView.q.getWidth(), NativeVideoTsView.this.q.getHeight());
                    NativeVideoTsView.this.q.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    NativeVideoTsView.this.K = null;
                }
            };
            this.q.getViewTreeObserver().addOnGlobalLayoutListener(this.K);
        }
    }

    private void s() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar == null) {
            return;
        }
        cVar.d(this.r);
        ((c) this.b).a((c.a) this);
        this.b.a(this);
    }

    private void t() {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar == null) {
            r();
        } else if ((cVar instanceof c) && !E()) {
            ((c) this.b).r();
        }
        if (this.b == null || !this.L.get()) {
            return;
        }
        this.L.set(false);
        b();
        if (!h()) {
            if (!this.b.o()) {
                com.bytedance.sdk.component.utils.l.c("NativeVideoTsView", "attachTask.......mRlImgCover.....VISIBLE");
                g();
                ad.a((View) this.f1712g, 0);
                return;
            } else {
                com.bytedance.sdk.component.utils.l.b("NativeVideoTsView", "attachTask-mNativeVideoController.isPlayComplete()=" + this.b.o());
                b(true);
                return;
            }
        }
        ad.a((View) this.f1712g, 8);
        ImageView imageView = this.i;
        if (imageView != null) {
            ad.a((View) imageView, 8);
        }
        q qVar = this.a;
        if (qVar == null || qVar.K() == null) {
            com.bytedance.sdk.component.utils.l.e("NativeVideoTsView", "attachTask materialMeta.getVideo() is null !!");
            return;
        }
        com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(this.a.aK()).c(), this.a);
        bVarA.b(this.a.Y());
        bVarA.a(this.q.getWidth());
        bVarA.b(this.q.getHeight());
        bVarA.c(this.a.ac());
        bVarA.a(0L);
        bVarA.a(i());
        a(bVarA);
        this.b.a(bVarA);
        this.b.c(false);
    }

    private void u() {
        this.o = null;
        if ((this.b instanceof c) && !E()) {
            ((c) this.b).F();
        }
        j();
        a(false);
        v();
    }

    private void v() {
        if (!this.L.get()) {
            this.L.set(true);
            com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
            if (cVar != null) {
                cVar.a(true, 3);
            }
        }
        this.O.set(false);
    }

    private void w() {
        this.E = k();
        aa.a(this.M);
    }

    private boolean x() {
        q qVar = this.a;
        if (qVar == null) {
            return false;
        }
        return qVar.bf();
    }

    private boolean y() {
        if (E() || !x()) {
            return false;
        }
        return com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_from_detail_page", false) || com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", false);
    }

    private void z() {
        if (E() || !x()) {
            return;
        }
        Boolean bool = Boolean.FALSE;
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", bool);
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_from_detail_page", bool);
    }

    public f a(List<Pair<View, FriendlyObstructionPurpose>> list) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar instanceof c) {
            return ((c) cVar).a(this, list);
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.a
    public void a() {
        com.bytedance.sdk.component.utils.l.a("NativeVideoTsView", "embeded_ad", "onTimeOut、、、、、、、、");
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
    public void a(int i) {
        b();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.a
    public void a(long j, int i) {
        com.bytedance.sdk.component.utils.l.b("NativeVideoTsView", "onComplete() called with: totalPlayTime = [" + j + "], percent = [" + i + o2.i.f6491e);
        c.InterfaceC0092c interfaceC0092c = this.J;
        if (interfaceC0092c != null) {
            interfaceC0092c.f_();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.a
    public void a(long j, long j2) {
        c.InterfaceC0092c interfaceC0092c = this.J;
        if (interfaceC0092c != null) {
            interfaceC0092c.a(j, j2);
        }
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        if (message.what == 1) {
            w();
        }
    }

    protected void a(boolean z) {
        if (this.i == null) {
            this.i = new ImageView(getContext());
            if (com.bytedance.sdk.openadsdk.core.h.b().p() != null) {
                this.i.setImageBitmap(com.bytedance.sdk.openadsdk.core.h.b().p());
            } else {
                this.i.setImageResource(s.d(o.a(), "tt_new_play_video"));
            }
            this.i.setScaleType(ImageView.ScaleType.FIT_XY);
            int iB = ad.b(getContext(), this.m);
            int iB2 = ad.b(getContext(), 10.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iB, iB);
            layoutParams.gravity = 17;
            layoutParams.rightMargin = iB2;
            layoutParams.bottomMargin = iB2;
            this.q.addView(this.i, layoutParams);
            this.i.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NativeVideoTsView.this.n();
                }
            });
        }
        if (z) {
            this.i.setVisibility(0);
        } else {
            this.i.setVisibility(8);
        }
    }

    public boolean a(long j, boolean z, boolean z2) {
        boolean zA = false;
        this.q.setVisibility(0);
        this.B = j;
        if (!E()) {
            return true;
        }
        this.b.a(false);
        q qVar = this.a;
        if (qVar != null && qVar.K() != null) {
            com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(this.a.aK()).c(), this.a);
            bVarA.b(this.a.Y());
            bVarA.a(this.q.getWidth());
            bVarA.b(this.q.getHeight());
            bVarA.c(this.a.ac());
            bVarA.a(j);
            bVarA.a(i());
            a(bVarA);
            if (z2) {
                this.b.b(bVarA);
                return true;
            }
            zA = this.b.a(bVarA);
        }
        if (((j > 0 && !z && !z2) || (j > 0 && z)) && this.b != null) {
            o.a aVar = new o.a();
            aVar.a(this.b.e());
            aVar.c(this.b.h());
            aVar.b(this.b.f());
            com.bytedance.sdk.openadsdk.b.d.a.a.b(this.b.m(), aVar);
        }
        return zA;
    }

    protected void b() {
        q qVar = this.a;
        if (qVar == null) {
            return;
        }
        int iAZ = qVar.aZ();
        int iB = com.bytedance.sdk.openadsdk.core.o.d().b(iAZ);
        int iC = com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a());
        if (iB == 1) {
            this.r = ac.d(iC);
        } else if (iB == 2) {
            this.r = ac.e(iC) || ac.d(iC) || ac.f(iC);
        } else if (iB == 3) {
            this.r = false;
        } else if (iB == 4) {
            this.n = true;
        } else if (iB == 5) {
            this.r = ac.d(iC) || ac.f(iC);
        }
        if (this.s) {
            this.f1709d = false;
        } else if (!this.f1710e || !p.b(this.l)) {
            this.f1709d = com.bytedance.sdk.openadsdk.core.o.d().c(String.valueOf(iAZ));
        }
        if ("open_ad".equals(this.l)) {
            this.r = true;
            this.f1709d = true;
        }
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            cVar.d(this.r);
        }
        this.f1710e = true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c.a
    public void b(long j, int i) {
        com.bytedance.sdk.component.utils.l.b("NativeVideoTsView", "onError() called with: totalPlayTime = [" + j + "], percent = [" + i + o2.i.f6491e);
    }

    public void b(boolean z) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            cVar.c(z);
            com.bykv.vk.openvk.component.video.api.d.b bVarM = this.b.m();
            if (bVarM != null) {
                bVarM.b();
                View viewC = bVarM.c();
                if (viewC != null) {
                    if (viewC.getParent() != null) {
                        ((ViewGroup) viewC.getParent()).removeView(viewC);
                    }
                    viewC.setVisibility(0);
                    addView(viewC);
                    bVarM.a(this.a, new WeakReference<>(this.p), false);
                }
            }
        }
    }

    protected void c() {
        if (l()) {
            return;
        }
        n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
    public void f() {
        c.InterfaceC0092c interfaceC0092c = this.J;
        if (interfaceC0092c != null) {
            interfaceC0092c.a_();
        }
    }

    public void g() {
        View view;
        if (this.p == null || (view = this.I) == null || view.getParent() == null || this.a == null || this.f1712g != null) {
            return;
        }
        ViewParent parent = this.I.getParent();
        RelativeLayout relativeLayoutB = b(this.p);
        if (parent != null && (parent instanceof ViewGroup)) {
            a(relativeLayoutB, (ViewGroup) parent, this.I);
        }
        this.f1712g = relativeLayoutB;
        if (this.k) {
            ad.a((View) this.j, 0);
        }
        if (this.a.K() != null && this.a.K().j() != null) {
            com.bytedance.sdk.openadsdk.k.c.a().a(this.a.K().j(), this.a.K().c(), this.a.K().b(), this.h, this.a);
        }
        ImageView imageView = this.j;
        if (imageView != null) {
            imageView.setClickable(true);
            this.j.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    NativeVideoTsView.this.c();
                }
            });
        }
    }

    public double getCurrentPlayTime() {
        if (this.b != null) {
            return (r0.e() * 1.0d) / 1000.0d;
        }
        return 0.0d;
    }

    public com.bykv.vk.openvk.component.video.api.d.c getNativeVideoController() {
        return this.b;
    }

    public boolean h() {
        return this.r;
    }

    public boolean i() {
        return this.f1709d;
    }

    public void j() {
        com.bykv.vk.openvk.component.video.api.d.b bVarM;
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar == null || (bVarM = cVar.m()) == null) {
            return;
        }
        bVarM.a();
        View viewC = bVarM.c();
        if (viewC != null) {
            viewC.setVisibility(8);
            if (viewC.getParent() != null) {
                ((ViewGroup) viewC.getParent()).removeView(viewC);
            }
        }
    }

    boolean k() {
        return y.a(this, 50, p.b(this.l) ? 1 : 5);
    }

    public boolean l() {
        boolean z = false;
        if (com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a()) == 0) {
            return false;
        }
        if (this.b.l() != null && this.b.l().f()) {
            a(false, u.intValue());
            Handler handler = this.D;
            z = true;
            if (handler != null) {
                handler.removeMessages(1);
            }
        }
        return z;
    }

    public void m() {
        if (getNativeVideoController() == null || !(getNativeVideoController() instanceof c)) {
            return;
        }
        c cVar = (c) getNativeVideoController();
        cVar.a(cVar.m(), this);
    }

    public void n() {
        if (com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a()) != 0 && k()) {
            if (this.b.l() != null && this.b.l().g()) {
                a(true, v.intValue());
                b();
                Handler handler = this.D;
                if (handler != null) {
                    handler.sendEmptyMessageDelayed(1, 500L);
                    return;
                }
                return;
            }
            if (h() || this.O.get()) {
                return;
            }
            this.O.set(true);
            F();
            q qVar = this.a;
            if (qVar != null && qVar.K() != null) {
                F();
                this.a.K();
                com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(this.a.aK()).c(), this.a);
                bVarA.b(this.a.Y());
                bVarA.a(this.q.getWidth());
                bVarA.b(this.q.getHeight());
                bVarA.c(this.a.ac());
                bVarA.a(this.B);
                bVarA.a(i());
                bVarA.a(CacheDirFactory.getICacheDir(this.a.aK()).c());
                a(bVarA);
                this.b.a(bVarA);
            }
            Handler handler2 = this.D;
            if (handler2 != null) {
                handler2.sendEmptyMessageDelayed(1, 500L);
            }
            a(false);
        }
    }

    public void o() {
        q qVar = this.a;
        if (qVar == null || qVar.au() == null) {
            return;
        }
        this.a.au().o();
        this.a.au().a().e(this.B);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        t();
        getViewTreeObserver().addOnScrollChangedListener(this.P);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        u();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.P);
        }
        ViewGroup viewGroup = this.q;
        if (viewGroup == null || this.K == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver2 = viewGroup.getViewTreeObserver();
        if (viewTreeObserver2.isAlive()) {
            viewTreeObserver2.removeOnGlobalLayoutListener(this.K);
            this.K = null;
        }
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        t();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        b bVar;
        com.bykv.vk.openvk.component.video.api.d.c cVar;
        if (!this.s && (bVar = this.o) != null && (cVar = this.b) != null) {
            bVar.a(cVar.o(), this.b.h(), this.b.i(), this.b.e(), this.r);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        u();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        com.bykv.vk.openvk.component.video.api.d.c cVar;
        com.bykv.vk.openvk.component.video.api.d.c cVar2;
        com.bykv.vk.openvk.component.video.api.d.c cVar3;
        com.bykv.vk.openvk.component.video.api.d.c cVar4;
        if ("open_ad".equals(this.l)) {
            A();
            return;
        }
        this.x = z;
        super.onWindowFocusChanged(z);
        B();
        if (y() && (cVar4 = this.b) != null && cVar4.o()) {
            z();
            ad.a((View) this.f1712g, 8);
            b(true);
            d();
            return;
        }
        b();
        if (!E() && h() && (cVar2 = this.b) != null && !cVar2.k()) {
            if (this.D != null) {
                if (z && (cVar3 = this.b) != null && !cVar3.o()) {
                    this.D.obtainMessage(1).sendToTarget();
                    return;
                } else {
                    A();
                    a(false, u.intValue());
                    return;
                }
            }
            return;
        }
        if (h()) {
            return;
        }
        if (!z && (cVar = this.b) != null && cVar.l() != null && this.b.l().f()) {
            A();
            a(false, u.intValue());
        } else if (z) {
            this.D.obtainMessage(1).sendToTarget();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        com.bykv.vk.openvk.component.video.api.d.c cVar;
        q qVar;
        com.bykv.vk.openvk.component.video.api.d.c cVar2;
        com.bykv.vk.openvk.component.video.api.d.c cVar3;
        super.onWindowVisibilityChanged(i);
        B();
        if (this.N) {
            this.N = i == 0;
        }
        if (y() && (cVar3 = this.b) != null && cVar3.o()) {
            z();
            ad.a((View) this.f1712g, 8);
            b(true);
            d();
            return;
        }
        b();
        if (E() || !h() || (cVar = this.b) == null || cVar.k() || (qVar = this.a) == null) {
            return;
        }
        if (!this.A || qVar.K() == null) {
            com.bytedance.sdk.component.utils.l.e("NativeVideoTsView", "attachTask materialMeta.getVideo() is null !!");
        } else {
            this.a.K();
            com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(this.a.aK()).c(), this.a);
            bVarA.b(this.a.Y());
            bVarA.a(this.q.getWidth());
            bVarA.b(this.q.getHeight());
            bVarA.c(this.a.ac());
            bVarA.a(this.B);
            bVarA.a(i());
            a(bVarA);
            this.b.a(bVarA);
            this.A = false;
            ad.a((View) this.f1712g, 8);
        }
        if (i != 0 || this.D == null || (cVar2 = this.b) == null || cVar2.o()) {
            return;
        }
        this.D.obtainMessage(1).sendToTarget();
    }

    public void setAdCreativeClickListener(a aVar) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            ((c) cVar).a(aVar);
        }
    }

    public void setControllerStatusCallBack(b bVar) {
        this.o = bVar;
    }

    public void setIsAutoPlay(boolean z) {
        if (this.G) {
            return;
        }
        int iB = com.bytedance.sdk.openadsdk.core.o.d().b(this.a.aZ());
        if (z && iB != 4 && (!com.bytedance.sdk.component.utils.o.e(this.p) ? !(!com.bytedance.sdk.component.utils.o.f(this.p) ? com.bytedance.sdk.component.utils.o.d(this.p) : C() || D()) : !C())) {
            z = false;
        }
        this.r = z;
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            cVar.d(z);
        }
        if (this.r) {
            ad.a((View) this.f1712g, 8);
        } else {
            g();
            RelativeLayout relativeLayout = this.f1712g;
            if (relativeLayout != null) {
                ad.a((View) relativeLayout, 0);
                q qVar = this.a;
                if (qVar != null && qVar.K() != null) {
                    com.bytedance.sdk.openadsdk.k.c.a().a(this.a.K().j(), this.a.K().c(), this.a.K().b(), this.h, this.a);
                }
            }
        }
        this.G = true;
    }

    public void setIsQuiet(boolean z) {
        this.f1709d = z;
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            cVar.b(z);
        }
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z) {
        this.k = z;
    }

    public void setVideoAdClickListenerTTNativeAd(PAGNativeAd pAGNativeAd) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            ((c) cVar).a(pAGNativeAd);
        }
    }

    public void setVideoAdInteractionListener(c.InterfaceC0092c interfaceC0092c) {
        this.J = interfaceC0092c;
    }

    public void setVideoAdLoadListener(c.d dVar) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            cVar.a(dVar);
        }
    }

    public void setVideoCacheUrl(String str) {
        this.t = str;
    }

    public void setVideoPlayCallback(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar) {
        com.bykv.vk.openvk.component.video.api.d.c cVar = this.b;
        if (cVar != null) {
            ((c) cVar).a(bVar);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 4 || i == 8) {
            v();
        }
    }
}
