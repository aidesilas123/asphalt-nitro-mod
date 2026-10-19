package com.bytedance.sdk.openadsdk.component;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.component.f;
import com.bytedance.sdk.openadsdk.component.view.ButtonFlash;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenHtmlLayout;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenIconOnlyLayout;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenOneLayout;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenThreeLayout;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenTwoLayout;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.j;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: AppOpenAdNativeManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static String w = "Skip";
    protected final Activity a;
    protected final q b;
    protected final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final FrameLayout f1281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final com.bytedance.sdk.openadsdk.component.a f1282e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final int f1283f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f1284g;
    protected FrameLayout h;
    protected final com.bytedance.sdk.openadsdk.component.h.a i;
    private RelativeLayout j;
    private ImageView k;
    private PAGLogoView l;
    private ButtonFlash m;
    private ImageView n;
    private TTRoundRectImageView o;
    private PAGTextView p;
    private PAGTextView q;
    private float r;
    private float s;
    private TextView u;
    private TextView v;
    private boolean y;
    private com.bytedance.sdk.openadsdk.component.h.c z;

    @NonNull
    private final com.bytedance.sdk.openadsdk.component.view.a t = new com.bytedance.sdk.openadsdk.component.view.a();
    private boolean x = false;

    /* JADX INFO: compiled from: AppOpenAdNativeManager.java */
    public class a implements f.d {
        WeakReference<Activity> a;

        a(Activity activity) {
            this.a = new WeakReference<>(activity);
        }

        @Override // com.bytedance.sdk.openadsdk.component.f.d
        public void a() {
        }

        @Override // com.bytedance.sdk.openadsdk.component.f.d
        public void a(Bitmap bitmap) {
            if (this.a.get() == null || this.a.get().isFinishing()) {
                return;
            }
            c.this.a(bitmap);
        }
    }

    public c(Activity activity, q qVar, FrameLayout frameLayout, com.bytedance.sdk.openadsdk.component.a aVar, int i, boolean z, com.bytedance.sdk.openadsdk.component.h.a aVar2) {
        this.a = activity;
        this.b = qVar;
        this.f1281d = frameLayout;
        this.f1284g = i;
        this.c = z;
        this.f1282e = aVar;
        this.f1283f = qVar.aZ();
        this.i = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                this.n.setImageDrawable(new BitmapDrawable(o.a().getResources(), bitmap));
            } catch (Throwable unused) {
                l.d("AppOpenAdNativeManager", "open_ad", "bindBackGroundImage error");
            }
        }
    }

    private void b(int i) {
        ad.a((View) this.h, i);
    }

    private void f() {
        this.t.a();
        this.m.setText(this.b.X());
        if (this.b.br()) {
            g();
            return;
        }
        if (!this.c) {
            b(8);
            a(0);
            h();
            this.f1282e.c();
            return;
        }
        b(0);
        a(8);
        if (a(this.h)) {
            this.f1282e.c();
        } else {
            this.f1282e.d();
        }
        f.a(this.b, new a(this.a), 25);
    }

    private void g() {
        PAGTextView pAGTextView = this.p;
        if (pAGTextView != null) {
            pAGTextView.setText(this.b.V());
        }
        PAGTextView pAGTextView2 = this.q;
        if (pAGTextView2 != null) {
            pAGTextView2.setText(this.b.W());
        }
        if (this.o != null && this.b.N() != null && !TextUtils.isEmpty(this.b.N().a())) {
            com.bytedance.sdk.openadsdk.k.c.a().a(this.b.N().a(), this.b.N().b(), this.b.N().c(), this.o, this.b);
        }
        this.f1282e.c();
    }

    private void h() {
        n nVar = this.b.Q().get(0);
        j.a(new com.bytedance.sdk.openadsdk.k.a(nVar.a(), nVar.g()), nVar.b(), nVar.c(), new j.a() { // from class: com.bytedance.sdk.openadsdk.component.c.6
            @Override // com.bytedance.sdk.openadsdk.utils.j.a
            public void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.utils.j.a
            public void a(com.bytedance.sdk.openadsdk.k.a.b bVar) {
                if (bVar.d()) {
                    c.this.a(bVar);
                    if (bVar.b() != null) {
                        c.this.a(bVar.a());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.utils.j.a
            public void b() {
            }
        }, com.bytedance.sdk.openadsdk.component.g.a.b(TextUtils.isEmpty(nVar.g()) ? com.bytedance.sdk.component.utils.e.a(nVar.a()) : nVar.g()).getParent(), 25);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void a() {
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.c.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    c cVar = c.this;
                    TTWebsiteActivity.a(cVar.a, cVar.b, "open_ad");
                } catch (Throwable th) {
                    l.e("AppOpenAdNativeManager", th.getMessage());
                }
            }
        });
        this.u.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.c.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.bytedance.sdk.openadsdk.component.a aVar = c.this.f1282e;
                if (aVar != null) {
                    aVar.b(view);
                }
            }
        });
        this.v.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.c.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c cVar = c.this;
                if (cVar.f1282e == null || !cVar.x) {
                    return;
                }
                c.this.f1282e.a(view);
            }
        });
        if (this.b.av()) {
            return;
        }
        com.bytedance.sdk.openadsdk.component.a.a aVarA = com.bytedance.sdk.openadsdk.component.a.b.a(this.b, this.a, this.i);
        aVarA.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.component.c.5
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view, int i) {
                c.this.f1282e.e();
            }
        });
        aVarA.a(this.z);
        if (this.b.k() == 1) {
            this.j.setOnClickListener(aVarA);
            this.j.setOnTouchListener(aVarA);
        }
        this.m.setOnClickListener(aVarA);
        this.m.setOnTouchListener(aVarA);
    }

    public void a(float f2, float f3) {
        this.s = f2;
        this.r = f3;
    }

    void a(int i) {
        ad.a((View) this.k, i);
    }

    public void a(int i, int i2, boolean z) {
        if (this.v != null) {
            String strValueOf = String.valueOf(i);
            if (z) {
                this.x = z;
                if (this.y) {
                    strValueOf = w;
                } else {
                    strValueOf = ((Object) strValueOf) + " | " + w;
                }
            }
            this.v.setText(strValueOf);
        }
    }

    public void a(ViewGroup viewGroup) {
        try {
            w = s.a(o.a(), "tt_txt_skip");
        } catch (Throwable th) {
            l.e("AppOpenAdNativeManager", th.getMessage());
        }
        PAGAppOpenBaseLayout pAGAppOpenTwoLayout = new PAGAppOpenTwoLayout(this.a);
        int iL = this.b.l();
        l.b("AppOpenAdNativeManager", "attachExpressView: splashLayoutId=" + iL);
        if (this.b.br()) {
            pAGAppOpenTwoLayout = new PAGAppOpenIconOnlyLayout(this.a);
        } else if (iL == 1) {
            pAGAppOpenTwoLayout = new PAGAppOpenOneLayout(this.a);
        } else if (iL == 3) {
            pAGAppOpenTwoLayout = new PAGAppOpenThreeLayout(this.a);
        } else if (iL == 4) {
            pAGAppOpenTwoLayout = new PAGAppOpenHtmlLayout(this.a, this.b);
        }
        if (this.b.l() == 3 && this.f1284g != 2) {
            this.f1284g = 2;
            this.f1282e.f();
        }
        this.j = pAGAppOpenTwoLayout;
        viewGroup.addView(pAGAppOpenTwoLayout);
        this.n = pAGAppOpenTwoLayout.getBackImage();
        this.h = pAGAppOpenTwoLayout.getVideoContainer();
        this.k = pAGAppOpenTwoLayout.getImageView();
        this.m = pAGAppOpenTwoLayout.getClickButton();
        this.l = pAGAppOpenTwoLayout.getAdLogo();
        if (this.b.br()) {
            this.o = pAGAppOpenTwoLayout.getIconOnlyView();
            this.p = pAGAppOpenTwoLayout.getTitle();
            this.q = pAGAppOpenTwoLayout.getContent();
        }
        if (pAGAppOpenTwoLayout.getDspAdChoice() != null) {
            pAGAppOpenTwoLayout.getDspAdChoice().a(14, this.b);
        }
        if (!this.b.av()) {
            this.t.a(pAGAppOpenTwoLayout, this.b, this.s, this.r, this.c);
        }
        this.u = pAGAppOpenTwoLayout.getTopDisLike();
        this.v = pAGAppOpenTwoLayout.getTopSkip();
        if (pAGAppOpenTwoLayout instanceof PAGAppOpenHtmlLayout) {
            ((PAGAppOpenHtmlLayout) pAGAppOpenTwoLayout).setRenderListener(new PAGAppOpenHtmlLayout.a() { // from class: com.bytedance.sdk.openadsdk.component.c.1
                @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenHtmlLayout.a
                public void a() {
                }

                @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenHtmlLayout.a
                public void a(View view, int i) {
                    c.this.f1282e.e();
                }

                @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenHtmlLayout.a
                public void b() {
                }
            });
        }
    }

    void a(com.bytedance.sdk.openadsdk.k.a.b bVar) {
        if (bVar.b() != null) {
            this.k.setImageBitmap(bVar.b());
            return;
        }
        if (this.b.Q() == null || this.b.Q().get(0) == null) {
            return;
        }
        Drawable drawableA = j.a(bVar.c(), this.b.Q().get(0).b());
        this.k.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.k.setImageDrawable(drawableA);
    }

    protected boolean a(FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.component.h.c cVar = new com.bytedance.sdk.openadsdk.component.h.c(this.a);
        this.z = cVar;
        cVar.a(frameLayout, this.b);
        this.z.a(this.f1282e);
        try {
            return this.z.a();
        } catch (Throwable th) {
            l.d("AppOpenAdNativeManager", "open_ad", "ttAppOpenAd playVideo error: " + th.getMessage());
            return false;
        }
    }

    public void b() {
        this.y = com.bytedance.sdk.openadsdk.core.settings.o.aj().v(String.valueOf(this.f1283f));
        if (this.b.av()) {
            this.f1282e.c();
        } else {
            f();
        }
    }

    public void c() {
        ButtonFlash buttonFlash = this.m;
        if (buttonFlash != null) {
            buttonFlash.a();
        }
        com.bytedance.sdk.openadsdk.component.h.c cVar = this.z;
        if (cVar != null) {
            cVar.f();
        }
    }

    public int d() {
        return -1;
    }

    public com.bytedance.sdk.openadsdk.component.h.c e() {
        return this.z;
    }
}
