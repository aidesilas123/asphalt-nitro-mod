package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.model.m;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle001001Layout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle002003HLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle002003Layout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle003002HLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle003002Layout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle009016HLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle009016VLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle016009HLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle016009VLayout;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FullInteractionStyleView extends BackupView {
    private float a;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private View q;
    private View r;
    private FrameLayout s;
    private com.bytedance.sdk.openadsdk.core.b.e t;

    public FullInteractionStyleView(@NonNull Context context, String str) {
        super(context, str);
        this.p = 1;
        this.b = context;
    }

    private com.com.bytedance.overseas.sdk.a.c a(q qVar, Context context) {
        if (qVar != null && qVar.M() == 4) {
            return new com.com.bytedance.overseas.sdk.a.b(context, qVar, this.f1616f);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(float r10) {
        /*
            r9 = this;
            float r0 = r9.getHeightDp()
            float r1 = r9.getWidthDp()
            int r2 = r9.p
            r3 = 2
            if (r2 != r3) goto L16
            float r2 = java.lang.Math.max(r0, r1)
            float r0 = java.lang.Math.min(r0, r1)
            goto L1e
        L16:
            float r2 = java.lang.Math.min(r0, r1)
            float r0 = java.lang.Math.max(r0, r1)
        L1e:
            int r1 = r9.p
            if (r1 == r3) goto L38
            android.content.Context r1 = r9.b
            android.app.Activity r1 = (android.app.Activity) r1
            boolean r1 = com.bytedance.sdk.openadsdk.utils.ad.c(r1)
            if (r1 == 0) goto L38
            android.content.Context r1 = r9.b
            float r4 = com.bytedance.sdk.openadsdk.utils.ad.a()
            int r1 = com.bytedance.sdk.openadsdk.utils.ad.c(r1, r4)
            float r1 = (float) r1
            float r0 = r0 - r1
        L38:
            int r1 = r9.p
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = 1120403456(0x42c80000, float:100.0)
            r6 = 20
            r7 = 0
            r8 = 0
            if (r1 == r3) goto L5d
            int r1 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r1 == 0) goto L76
            int r1 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r1 == 0) goto L76
            float r1 = (float) r6
            float r2 = r2 - r1
            float r2 = r2 - r1
            float r2 = r2 / r10
            float r0 = r0 - r2
            float r0 = r0 / r4
            float r10 = java.lang.Math.max(r0, r7)
            int r10 = (int) r10
            r6 = r10
            r0 = 20
            r8 = 20
            goto L79
        L5d:
            int r1 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r1 == 0) goto L76
            int r1 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r1 == 0) goto L76
            float r1 = (float) r6
            float r0 = r0 - r1
            float r0 = r0 - r1
            float r0 = r0 * r10
            float r2 = r2 - r0
            float r2 = r2 / r4
            float r10 = java.lang.Math.max(r2, r7)
            int r10 = (int) r10
            r0 = r10
            r8 = r0
            r10 = 20
            goto L79
        L76:
            r10 = 0
            r0 = 0
            r6 = 0
        L79:
            android.content.Context r1 = r9.b
            float r2 = (float) r6
            int r1 = com.bytedance.sdk.openadsdk.utils.ad.b(r1, r2)
            android.content.Context r2 = r9.b
            float r10 = (float) r10
            int r10 = com.bytedance.sdk.openadsdk.utils.ad.b(r2, r10)
            android.content.Context r2 = r9.b
            float r3 = (float) r8
            int r2 = com.bytedance.sdk.openadsdk.utils.ad.b(r2, r3)
            android.content.Context r3 = r9.b
            float r0 = (float) r0
            int r0 = com.bytedance.sdk.openadsdk.utils.ad.b(r3, r0)
            android.content.Context r3 = r9.b
            android.app.Activity r3 = (android.app.Activity) r3
            android.view.Window r3 = r3.getWindow()
            android.view.View r3 = r3.getDecorView()
            r3.setPadding(r2, r1, r0, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.view.FullInteractionStyleView.a(float):void");
    }

    private void a(FrameLayout frameLayout, ImageView imageView) {
        q qVar = this.c;
        if (qVar == null) {
            return;
        }
        boolean zC = q.c(qVar);
        if (this.c.K() != null && zC) {
            ad.a((View) imageView, 8);
            ad.a((View) frameLayout, 0);
        } else {
            a(imageView);
            ad.a((View) imageView, 0);
            ad.a((View) frameLayout, 8);
        }
    }

    private void a(ImageView imageView) {
        List<n> listQ;
        n nVar;
        q qVar = this.c;
        if (qVar == null || (listQ = qVar.Q()) == null || listQ.size() <= 0 || (nVar = listQ.get(0)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.f.d.a(nVar).a(u.BITMAP).a(com.bytedance.sdk.openadsdk.f.c.a(this.c, nVar.a(), imageView));
    }

    private void b() {
        this.f1617g = ad.b(this.b, this.n);
        this.h = ad.b(this.b, this.o);
        int i = (int) (this.a * 1000.0f);
        if (this.p == 1) {
            if (i == 666) {
                e();
                return;
            }
            if (i == 1000) {
                c();
                return;
            }
            if (i == 1500) {
                k();
                return;
            } else if (i == 1777) {
                m();
                return;
            } else {
                a(0.562f);
                l();
                return;
            }
        }
        if (i == 562) {
            i();
            return;
        }
        if (i == 666) {
            g();
            return;
        }
        if (i == 1000) {
            c();
        } else if (i == 1500) {
            h();
        } else {
            a(1.777f);
            j();
        }
    }

    private void b(View view) {
        if (view.getParent() == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            view.setLayoutParams(layoutParams);
            layoutParams.gravity = 17;
            addView(view);
        }
    }

    private void c() {
        TTInteractionStyle001001Layout tTInteractionStyle001001Layout = new TTInteractionStyle001001Layout(this.b);
        this.q = tTInteractionStyle001001Layout;
        b(tTInteractionStyle001001Layout);
        d();
        f();
    }

    private void c(View view) {
        if (view == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar = this.t;
        if (aVar == null) {
            Context context = this.b;
            q qVar = this.c;
            String str = this.f1616f;
            aVar = new com.bytedance.sdk.openadsdk.core.b.a(context, qVar, str, ac.a(str));
            aVar.a(a(this.c, this.b));
        }
        view.setOnTouchListener(aVar);
        view.setOnClickListener(aVar);
    }

    private void d() {
        this.s = (FrameLayout) this.q.findViewById(i.aA);
        ImageView imageView = (ImageView) this.q.findViewById(i.az);
        TTRoundRectImageView tTRoundRectImageView = (TTRoundRectImageView) this.q.findViewById(i.as);
        TextView textView = (TextView) this.q.findViewById(i.ax);
        TextView textView2 = (TextView) this.q.findViewById(i.at);
        View viewFindViewById = this.q.findViewById(520093739);
        if (!TextUtils.isEmpty(this.c.X())) {
            textView2.setText(this.c.X());
        }
        a(this.s, imageView);
        if (this.c.N() != null && !TextUtils.isEmpty(this.c.N().a())) {
            com.bytedance.sdk.openadsdk.k.c.a().a(this.c.N().a(), this.c.N().b(), this.c.N().c(), tTRoundRectImageView, this.c);
        }
        textView.setText(getTitle());
        c(this.s);
        c(imageView);
        c(tTRoundRectImageView);
        c(textView);
        c(textView2);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullInteractionStyleView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.a(((BackupView) FullInteractionStyleView.this).b, ((BackupView) FullInteractionStyleView.this).c, ((BackupView) FullInteractionStyleView.this).f1616f);
                } catch (Throwable th) {
                    l.e("FullInteractionStyleView", th.getMessage());
                }
            }
        });
    }

    private void e() {
        TTInteractionStyle002003Layout tTInteractionStyle002003Layout = new TTInteractionStyle002003Layout(this.b);
        this.q = tTInteractionStyle002003Layout;
        b(tTInteractionStyle002003Layout);
        d();
        f();
    }

    private void f() {
        TextView textView = (TextView) this.q.findViewById(i.ay);
        if (textView != null) {
            textView.setText(getDescription());
            c(textView);
        }
    }

    private void g() {
        TTInteractionStyle002003HLayout tTInteractionStyle002003HLayout = new TTInteractionStyle002003HLayout(this.b);
        this.q = tTInteractionStyle002003HLayout;
        b(tTInteractionStyle002003HLayout);
        d();
        f();
    }

    private float getHeightDp() {
        return ad.c(this.b, ad.i(this.b));
    }

    private float getWidthDp() {
        return ad.c(this.b, ad.j(this.b));
    }

    private void h() {
        TTInteractionStyle003002HLayout tTInteractionStyle003002HLayout = new TTInteractionStyle003002HLayout(this.b);
        this.q = tTInteractionStyle003002HLayout;
        b(tTInteractionStyle003002HLayout);
        d();
    }

    private void i() {
        TTInteractionStyle009016HLayout tTInteractionStyle009016HLayout = new TTInteractionStyle009016HLayout(this.b);
        this.q = tTInteractionStyle009016HLayout;
        b(tTInteractionStyle009016HLayout);
        d();
        f();
    }

    private void j() {
        TTInteractionStyle016009HLayout tTInteractionStyle016009HLayout = new TTInteractionStyle016009HLayout(this.b);
        this.q = tTInteractionStyle016009HLayout;
        b(tTInteractionStyle016009HLayout);
        d();
    }

    private void k() {
        View tTInteractionStyle003002Layout = new TTInteractionStyle003002Layout(this.b);
        this.q = tTInteractionStyle003002Layout;
        b(tTInteractionStyle003002Layout);
        this.s = (FrameLayout) this.q.findViewById(i.aA);
        ImageView imageView = (ImageView) this.q.findViewById(i.aB);
        TextView textView = (TextView) this.q.findViewById(i.aC);
        View viewFindViewById = this.q.findViewById(520093739);
        a(this.s, imageView);
        textView.setText(getDescription());
        c(this.s);
        c(imageView);
        c(textView);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullInteractionStyleView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.a(((BackupView) FullInteractionStyleView.this).b, ((BackupView) FullInteractionStyleView.this).c, ((BackupView) FullInteractionStyleView.this).f1616f);
                } catch (Throwable th) {
                    l.e("FullInteractionStyleView", th.getMessage());
                }
            }
        });
    }

    private void l() {
        TTInteractionStyle009016VLayout tTInteractionStyle009016VLayout = new TTInteractionStyle009016VLayout(this.b);
        this.q = tTInteractionStyle009016VLayout;
        b(tTInteractionStyle009016VLayout);
        d();
    }

    private void m() {
        TTInteractionStyle016009VLayout tTInteractionStyle016009VLayout = new TTInteractionStyle016009VLayout(this.b);
        this.q = tTInteractionStyle016009VLayout;
        b(tTInteractionStyle016009VLayout);
        d();
        f();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void a(View view, int i, m mVar) {
    }

    public void a(q qVar, float f2, int i, int i2, int i3) {
        this.a = f2;
        this.p = i;
        this.c = qVar;
        this.f1616f = "fullscreen_interstitial_ad";
        this.n = i2;
        this.o = i3;
        a(this.i);
        b();
    }

    public View getInteractionStyleRootView() {
        return this;
    }

    public FrameLayout getVideoContainer() {
        return this.s;
    }

    public void setDownloadListener(com.bytedance.sdk.openadsdk.core.b.e eVar) {
        this.t = eVar;
    }

    public void setIsMute(boolean z) {
        this.m = z;
        View view = this.r;
        if (view != null && (view instanceof NativeVideoTsView)) {
            ((NativeVideoTsView) view).setIsQuiet(z);
        }
    }
}
