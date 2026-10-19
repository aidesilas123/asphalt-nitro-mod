package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.adexpress.b.j;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.bannerexpress.VastBannerBackupView;
import com.bytedance.sdk.openadsdk.core.bannerexpress.a;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.x;
import com.bytedance.sdk.openadsdk.core.y;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NativeExpressView extends PAGFrameLayout implements com.bytedance.sdk.component.adexpress.b.h, com.bytedance.sdk.component.adexpress.b.o, com.bytedance.sdk.component.adexpress.dynamic.d, a.InterfaceC0131a, l {
    public static int p = 500;
    private float A;
    private com.bytedance.sdk.openadsdk.b.c.e B;
    private String C;
    private a.InterfaceC0132a D;
    private final AtomicBoolean E;
    private b F;
    private final ViewTreeObserver.OnScrollChangedListener G;
    private final Runnable H;
    private final Runnable I;
    private final Runnable J;
    private ThemeStatusBroadcastReceiver K;
    private p L;
    private j.a M;
    private List<com.bytedance.sdk.component.adexpress.b.j> N;
    private com.bytedance.sdk.component.adexpress.b.p O;
    private com.bytedance.sdk.component.adexpress.b.f P;
    private com.bytedance.sdk.component.adexpress.b.i Q;
    private com.bytedance.sdk.component.adexpress.b.m R;
    private int S;
    private final SparseArray<c.a> T;
    private float U;
    private float V;
    private float W;
    private boolean a;
    private float aa;
    private long ab;
    private VastBannerBackupView ac;
    private int b;
    private com.bytedance.sdk.openadsdk.dislike.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TTDislikeDialogAbstract f1625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PAGBannerAdWrapperListener f1626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private f f1627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final Context f1628g;
    protected String h;
    protected AdSlot i;
    protected q j;
    public FrameLayout k;
    protected boolean l;
    protected boolean m;
    protected com.bytedance.sdk.component.adexpress.b.c n;
    protected boolean o;
    public boolean q;
    int r;
    boolean s;
    public com.bytedance.sdk.openadsdk.b.g t;
    long u;
    protected com.bytedance.sdk.component.adexpress.b.b v;
    public com.bytedance.sdk.component.adexpress.b.d<? extends View> w;
    private g x;
    private String y;
    private float z;

    public NativeExpressView(@NonNull Context context, q qVar, AdSlot adSlot, String str) {
        super(context);
        this.a = true;
        this.b = 0;
        this.h = "embeded_ad";
        this.y = null;
        this.m = false;
        this.o = false;
        this.q = false;
        this.r = -1;
        this.t = new com.bytedance.sdk.openadsdk.b.g();
        this.u = 0L;
        this.E = new AtomicBoolean(false);
        this.G = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.v();
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.H);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.H, 500L);
            }
        };
        this.H = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                if (!y.a(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.d(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.d(nativeExpressView.getVisibility());
                }
            }
        };
        this.I = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.3
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.d(0);
            }
        };
        this.J = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.d(8);
            }
        };
        this.S = 8;
        this.T = new SparseArray<>();
        this.U = -1.0f;
        this.V = -1.0f;
        this.W = -1.0f;
        this.aa = -1.0f;
        this.ab = 0L;
        this.h = str;
        this.f1628g = context;
        this.j = qVar;
        this.i = adSlot;
        this.q = false;
        g();
    }

    public NativeExpressView(@NonNull Context context, q qVar, AdSlot adSlot, String str, boolean z) {
        super(context);
        this.a = true;
        this.b = 0;
        this.h = "embeded_ad";
        this.y = null;
        this.m = false;
        this.o = false;
        this.q = false;
        this.r = -1;
        this.t = new com.bytedance.sdk.openadsdk.b.g();
        this.u = 0L;
        this.E = new AtomicBoolean(false);
        this.G = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                NativeExpressView.this.v();
                NativeExpressView nativeExpressView = NativeExpressView.this;
                nativeExpressView.removeCallbacks(nativeExpressView.H);
                NativeExpressView nativeExpressView2 = NativeExpressView.this;
                nativeExpressView2.postDelayed(nativeExpressView2.H, 500L);
            }
        };
        this.H = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                if (!y.a(NativeExpressView.this, 0, 5)) {
                    NativeExpressView.this.d(8);
                } else {
                    NativeExpressView nativeExpressView = NativeExpressView.this;
                    nativeExpressView.d(nativeExpressView.getVisibility());
                }
            }
        };
        this.I = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.3
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.d(0);
            }
        };
        this.J = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.4
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressView.this.d(8);
            }
        };
        this.S = 8;
        this.T = new SparseArray<>();
        this.U = -1.0f;
        this.V = -1.0f;
        this.W = -1.0f;
        this.aa = -1.0f;
        this.ab = 0L;
        this.h = str;
        this.f1628g = context;
        this.j = qVar;
        this.i = adSlot;
        this.q = z;
        g();
    }

    public static JSONObject a(View view) {
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", view.getWidth());
            jSONObject.put("height", view.getHeight());
            jSONObject.put("left", iArr[0]);
            jSONObject.put(ViewHierarchyConstants.DIMENSION_TOP_KEY, iArr[1]);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private int getAdSlotType() {
        String str = this.h;
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return 1;
            case "rewarded_video":
                return 7;
            case "open_ad":
                return 3;
            case "fullscreen_interstitial_ad":
                return 8;
            case "interaction":
                return 2;
            default:
                return 5;
        }
    }

    private void h() {
        q.a aVarI = this.j.I();
        if (!TextUtils.equals(this.h, "embeded_ad") || aVarI == null) {
            return;
        }
        String strK = aVarI.k();
        if (TextUtils.isEmpty(strK)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(strK);
            int iOptInt = jSONObject.optInt("width");
            int iOptInt2 = jSONObject.optInt("height");
            if (iOptInt == 0 || iOptInt2 == 0) {
                return;
            }
            this.A = iOptInt2;
            this.z = iOptInt;
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048 A[PHI: r4
      0x0048: PHI (r4v2 long) = (r4v1 long), (r4v7 long), (r4v7 long), (r4v7 long) binds: [B:9:0x0047, B:22:0x0048, B:5:0x0037, B:7:0x0043] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void q() {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView.q():void");
    }

    private void r() {
        if (this.j.aS() == 1 && this.j.at()) {
            com.bytedance.sdk.component.adexpress.b.f fVar = new com.bytedance.sdk.component.adexpress.b.f(this.f1628g, this.R, new n(this, this.K, this.R));
            this.P = fVar;
            this.N.add(fVar);
            this.M = new com.bytedance.sdk.component.adexpress.b.l(this.N, this.Q);
            return;
        }
        if (z()) {
            s();
            return;
        }
        try {
            t();
            p pVar = new p(this.f1628g, this.R, this.K, this.B, this.j);
            this.L = pVar;
            com.bytedance.sdk.component.adexpress.b.p pVar2 = new com.bytedance.sdk.component.adexpress.b.p(this.f1628g, this.R, pVar, this);
            this.O = pVar2;
            this.N.add(pVar2);
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.c("NativeExpressView", "NativeExpressView dynamicRender fail", e2);
        }
        com.bytedance.sdk.component.adexpress.b.f fVar2 = new com.bytedance.sdk.component.adexpress.b.f(this.f1628g, this.R, new n(this, this.K, this.R));
        this.P = fVar2;
        this.N.add(fVar2);
        this.M = new com.bytedance.sdk.component.adexpress.b.l(this.N, this.Q);
    }

    private void s() {
        this.b = this.j.x();
        try {
            t();
            u();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.c("NativeExpressView", "NativeExpressView dynamicRender fail", e2);
        }
        boolean z = this.j.y() == 1;
        this.a = z;
        if (z) {
            com.bytedance.sdk.component.adexpress.b.f fVar = new com.bytedance.sdk.component.adexpress.b.f(this.f1628g, this.R, new n(this, this.K, this.R));
            this.P = fVar;
            this.N.add(fVar);
        }
        com.bytedance.sdk.component.utils.l.b("NativeExpressView", "initRender: mRenderSequenceType is " + this.b + ", mInterceptors is " + this.N);
        this.M = new com.bytedance.sdk.component.adexpress.b.l(this.N, this.Q);
    }

    private void t() {
        if (com.bytedance.sdk.openadsdk.core.l.e()) {
            return;
        }
        j.a();
    }

    private void u() {
        com.bytedance.sdk.openadsdk.core.c.a.a aVar = new com.bytedance.sdk.openadsdk.core.c.a.a();
        if (this.b != 3) {
            p pVar = new p(this.f1628g, this.R, this.K, this.B, this.j);
            this.L = pVar;
            com.bytedance.sdk.component.adexpress.b.p pVar2 = new com.bytedance.sdk.component.adexpress.b.p(this.f1628g, this.R, pVar, this);
            this.O = pVar2;
            this.N.add(pVar2);
            return;
        }
        com.bytedance.sdk.component.adexpress.dynamic.c.f fVar = new com.bytedance.sdk.component.adexpress.dynamic.c.f();
        Context applicationContext = this.f1628g.getApplicationContext();
        com.bytedance.sdk.component.adexpress.b.m mVar = this.R;
        ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver = this.K;
        boolean z = this.q;
        com.bytedance.sdk.component.adexpress.b.b bVar = new com.bytedance.sdk.component.adexpress.b.b(applicationContext, mVar, themeStatusBroadcastReceiver, z, fVar, this, aVar, new d(this.f1628g, themeStatusBroadcastReceiver, z, fVar, mVar, aVar));
        this.v = bVar;
        this.N.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.E.get()) {
            this.t.a(System.currentTimeMillis(), y.a(this));
        }
    }

    private boolean w() {
        return q.c(this.j);
    }

    private void x() {
        List<com.bytedance.sdk.component.adexpress.b.j> list = this.N;
        if (list == null) {
            return;
        }
        for (com.bytedance.sdk.component.adexpress.b.j jVar : list) {
            if (jVar != null) {
                jVar.b();
            }
        }
    }

    private void y() {
        List<com.bytedance.sdk.component.adexpress.b.j> list = this.N;
        if (list == null) {
            return;
        }
        for (com.bytedance.sdk.component.adexpress.b.j jVar : list) {
            if (jVar != null) {
                jVar.c();
            }
        }
    }

    private boolean z() {
        return TextUtils.equals(this.h, "fullscreen_interstitial_ad") || TextUtils.equals(this.h, "rewarded_video") || TextUtils.equals("open_ad", this.h) || p.b(this.h) || TextUtils.equals(this.h, "embeded_ad");
    }

    public void a() {
    }

    public void a(int i) {
    }

    public void a(View view, int i, com.bytedance.sdk.component.adexpress.c cVar) {
        View view2;
        if (i == -1 || cVar == null) {
            return;
        }
        HashMap map = new HashMap();
        if (t.k(this.j)) {
            map.put("click_scence", 3);
        } else {
            map.put("click_scence", 1);
        }
        com.bytedance.sdk.openadsdk.core.model.m mVar = (com.bytedance.sdk.openadsdk.core.model.m) cVar;
        f fVar = this.f1627f;
        if (fVar != null) {
            fVar.d(getDynamicShowType());
            this.f1627f.a(map);
        }
        g gVar = this.x;
        if (gVar != null) {
            gVar.d(getDynamicShowType());
            this.x.a(map);
        }
        float f2 = mVar.a;
        float f3 = mVar.b;
        float f4 = mVar.c;
        float f5 = mVar.f1574d;
        boolean z = mVar.o;
        SparseArray<c.a> sparseArray = mVar.n;
        if (sparseArray == null || sparseArray.size() == 0) {
            sparseArray = this.T;
        }
        SparseArray<c.a> sparseArray2 = sparseArray;
        String str = mVar.k;
        if (view == null) {
            view2 = this;
        } else {
            jSONObjectA = view != this ? a(view) : null;
            view2 = view;
        }
        mVar.l = i;
        if (jSONObjectA != null && mVar.m == null) {
            mVar.m = jSONObjectA;
        }
        switch (i) {
            case 1:
                FrameLayout frameLayout = this.k;
                if (frameLayout != null) {
                    frameLayout.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                q qVar = this.j;
                if (qVar == null || qVar.q() != 1 || z) {
                    g gVar2 = this.x;
                    if (gVar2 != null) {
                        gVar2.a(mVar);
                        this.x.a(str);
                        this.x.a(view2, f2, f3, f4, f5, sparseArray2, z);
                    }
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.f1626e;
                    if (pAGBannerAdWrapperListener != null) {
                        pAGBannerAdWrapperListener.onAdClicked(this, this.j.M());
                    }
                }
                break;
            case 2:
                if (mVar.p > 0) {
                    z.a(true);
                }
                f fVar2 = this.f1627f;
                if (fVar2 != null) {
                    fVar2.a(mVar);
                    this.f1627f.a(str);
                    this.f1627f.a(view2, f2, f3, f4, f5, sparseArray2, z);
                }
                PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = this.f1626e;
                if (pAGBannerAdWrapperListener2 != null) {
                    pAGBannerAdWrapperListener2.onAdClicked(this, this.j.M());
                }
                z.a(false);
                com.bytedance.sdk.openadsdk.n.a.e.a(this.j, 9);
                break;
            case 3:
                TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f1625d;
                if (tTDislikeDialogAbstract == null) {
                    com.bytedance.sdk.openadsdk.dislike.b bVar = this.c;
                    if (bVar == null) {
                        TTDelegateActivity.a(this.j, this.C);
                    } else {
                        bVar.a();
                    }
                } else {
                    tTDislikeDialogAbstract.show();
                }
                break;
            case 4:
                FrameLayout frameLayout2 = this.k;
                if (frameLayout2 != null) {
                    frameLayout2.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 0, 0.0f, 0.0f, 0));
                }
                q qVar2 = this.j;
                if (qVar2 == null || qVar2.q() != 1 || z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Creativity....mAdType=");
                    sb.append(this.h);
                    sb.append(",!mVideoPause=");
                    sb.append(!this.l);
                    sb.append("，isAutoPlay=");
                    sb.append(ac.b(this.j));
                    com.bytedance.sdk.component.utils.l.b("ClickCreativeListener", sb.toString());
                    if ("embeded_ad".equals(this.h) && w() && !this.l && ac.b(this.j)) {
                        com.bytedance.sdk.component.utils.l.b("ClickCreativeListener", "Creative....");
                        f fVar3 = this.f1627f;
                        if (fVar3 != null) {
                            fVar3.a(mVar);
                            this.f1627f.a(str);
                            this.f1627f.a(view2, f2, f3, f4, f5, sparseArray2, z);
                        }
                    } else {
                        com.bytedance.sdk.component.utils.l.b("ClickCreativeListener", "normal....");
                        g gVar3 = this.x;
                        if (gVar3 != null) {
                            gVar3.a(mVar);
                            this.x.a(str);
                            this.x.a(view2, f2, f3, f4, f5, sparseArray2, z);
                        }
                    }
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener3 = this.f1626e;
                    if (pAGBannerAdWrapperListener3 != null) {
                        pAGBannerAdWrapperListener3.onAdClicked(this, this.j.M());
                    }
                }
                break;
            case 5:
                a(!this.q);
                break;
            case 6:
                a();
                break;
            case 7:
                TTWebsiteActivity.a(this.f1628g, this.j, this.h);
                break;
        }
    }

    public void a(com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar, com.bytedance.sdk.component.adexpress.b.n nVar) {
        q qVar;
        this.E.set(true);
        this.w = dVar;
        if (this.S != getWindowVisibility()) {
            d(getWindowVisibility());
        }
        com.bytedance.sdk.component.utils.l.a("NativeExpressView", "render type is  ", Integer.valueOf(dVar.c()));
        if (dVar.c() == 3 && (qVar = this.j) != null && qVar.o() == 1) {
            this.j.b(0);
        }
        if (dVar.c() == 2 || dVar.c() == 0 || dVar.c() == 3) {
            View viewE = dVar.e();
            if (viewE.getParent() != null) {
                ((ViewGroup) viewE.getParent()).removeView(viewE);
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < getChildCount(); i++) {
                arrayList.add(getChildAt(i));
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (arrayList.get(i2) instanceof SSWebView) {
                    removeView((View) arrayList.get(i2));
                }
            }
            addView(dVar.e());
        }
        q qVar2 = this.j;
        if (qVar2 != null) {
            com.bytedance.sdk.openadsdk.j.b.a(qVar2.a(), this.u, this.h, dVar.c());
        }
        com.bytedance.sdk.component.adexpress.b.i iVar = this.Q;
        if (iVar != null) {
            ((k) iVar).i();
        }
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.f1626e;
        if (pAGBannerAdWrapperListener != null) {
            pAGBannerAdWrapperListener.onRenderSuccess(this, (float) nVar.d(), (float) nVar.e());
        }
        if (a(nVar)) {
            com.bytedance.sdk.openadsdk.n.a.e.a(this, this.j, getDynamicShowType());
        }
    }

    protected void a(m.a aVar) {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void a(CharSequence charSequence, int i, int i2, boolean z) {
        b(Integer.parseInt(String.valueOf(charSequence)), i);
    }

    protected void a(JSONObject jSONObject) {
    }

    public void a(boolean z) {
    }

    protected boolean a(com.bytedance.sdk.component.adexpress.b.n nVar) {
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.o
    public void a_(int i) {
        com.bytedance.sdk.component.adexpress.b.i iVar = this.Q;
        if (iVar != null) {
            if (!this.a) {
                iVar.f();
            }
            this.Q.g();
            ((k) this.Q).i();
        }
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.f1626e;
        if (pAGBannerAdWrapperListener != null) {
            pAGBannerAdWrapperListener.onRenderFail(this, com.bytedance.sdk.openadsdk.core.g.a(i), i);
        }
    }

    public void b() {
    }

    public void b(int i) {
    }

    protected void b(int i, int i2) {
        if (TextUtils.equals(this.h, "banner_ad")) {
            return;
        }
        int i3 = this.r;
        int i4 = ((i2 < i3 || i3 < 0 || !(this.s || TextUtils.equals(this.h, "open_ad"))) && d() != 5) ? 0 : 1;
        int iMin = i2 <= this.r ? this.j.K() != null ? (int) (Math.min(this.r, this.j.K().f() * ((double) this.j.K().w())) - ((double) i2)) : this.r - i2 : 0;
        com.bytedance.sdk.component.adexpress.b.b bVar = this.v;
        if (bVar == null || bVar.d() == null) {
            return;
        }
        this.v.d().a(String.valueOf(i), i4, iMin, false);
    }

    public long c() {
        return 0L;
    }

    public int d() {
        return 0;
    }

    public void d(int i) {
        com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar = this.w;
        if (dVar == null || !(dVar instanceof p)) {
            return;
        }
        ((p) dVar).a(i);
        this.S = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i;
        f fVar = this.f1627f;
        if (fVar != null) {
            fVar.b(motionEvent.getDeviceId());
            this.f1627f.a(motionEvent.getSource());
            this.f1627f.c(motionEvent.getToolType(0));
        }
        g gVar = this.x;
        if (gVar != null) {
            gVar.b(motionEvent.getDeviceId());
            this.x.a(motionEvent.getSource());
            this.x.c(motionEvent.getToolType(0));
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.U = motionEvent.getRawX();
            this.V = motionEvent.getRawY();
            this.ab = System.currentTimeMillis();
            i = 0;
        } else if (actionMasked == 1) {
            i = 3;
        } else if (actionMasked != 2) {
            i = actionMasked != 3 ? -1 : 4;
        } else {
            this.W += Math.abs(motionEvent.getX() - this.U);
            this.aa += Math.abs(motionEvent.getY() - this.V);
            this.U = motionEvent.getX();
            this.V = motionEvent.getY();
            i = (System.currentTimeMillis() - this.ab <= 200 || (this.W <= 8.0f && this.aa <= 8.0f)) ? 2 : 1;
        }
        SparseArray<c.a> sparseArray = this.T;
        if (sparseArray != null) {
            sparseArray.put(motionEvent.getActionMasked(), new c.a(i, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void e() {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void f() {
    }

    protected void g() {
        this.K = new ThemeStatusBroadcastReceiver();
        AdSlot adSlot = this.i;
        if (adSlot != null) {
            this.z = adSlot.getExpressViewAcceptedWidth();
            this.A = this.i.getExpressViewAcceptedHeight();
            h();
            this.y = this.i.getCodeId();
            if (TextUtils.equals(this.h, "fullscreen_interstitial_ad")) {
                this.r = com.bytedance.sdk.openadsdk.core.o.d().q(this.y);
            } else if (TextUtils.equals(this.h, "rewarded_video")) {
                this.r = com.bytedance.sdk.openadsdk.core.o.d().j(this.y);
            } else if (TextUtils.equals(this.h, "open_ad")) {
                int iT = com.bytedance.sdk.openadsdk.core.o.d().t(this.y);
                this.r = iT;
                if (iT < 0) {
                    this.r = 5;
                }
            }
        }
        setBackgroundColor(0);
        if (this.j.av()) {
            this.F = new b(this.f1628g, this, this.j, this.h);
            return;
        }
        q();
        this.N = new ArrayList();
        r();
        com.bytedance.sdk.component.adexpress.b.p pVar = this.O;
        if (pVar != null) {
            this.L = (p) pVar.d();
        }
        x jsObject = getJsObject();
        if (jsObject != null) {
            jsObject.g(this.h);
        }
    }

    public com.bytedance.sdk.openadsdk.b.g getAdShowTime() {
        return this.t;
    }

    public f getClickCreativeListener() {
        return this.f1627f;
    }

    public g getClickListener() {
        return this.x;
    }

    public String getClosedListenerKey() {
        return this.C;
    }

    public int getDynamicShowType() {
        com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar = this.w;
        if (dVar != null) {
            return dVar.c();
        }
        return 0;
    }

    public int getExpectExpressHeight() {
        return Float.valueOf(this.A).intValue();
    }

    public int getExpectExpressWidth() {
        return Float.valueOf(this.z).intValue();
    }

    public x getJsObject() {
        p pVar = this.L;
        if (pVar != null) {
            return pVar.q();
        }
        return null;
    }

    protected int getRenderTimeout() {
        return com.bytedance.sdk.openadsdk.core.o.d().B();
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.a.InterfaceC0131a
    public long getVideoProgress() {
        VastBannerBackupView vastBannerBackupView = this.ac;
        if (vastBannerBackupView != null) {
            return vastBannerBackupView.getVideoProgress();
        }
        return 0L;
    }

    public SSWebView getWebView() {
        p pVar = this.L;
        if (pVar == null) {
            return null;
        }
        return pVar.a();
    }

    public void i() {
        com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar = this.w;
        if (dVar instanceof p) {
            if (dVar == null) {
                return;
            } else {
                ((p) dVar).j();
            }
        }
        q qVar = this.j;
        if (qVar == null || qVar.au() == null || this.j.au().a() == null) {
            return;
        }
        this.j.au().a().a(0L);
    }

    public void j() {
        this.u = SystemClock.elapsedRealtime();
        if (this.j.av()) {
            b bVar = this.F;
            if (bVar == null) {
                a_(106);
                return;
            } else {
                bVar.a((com.bytedance.sdk.component.adexpress.b.o) this);
                this.F.a();
                return;
            }
        }
        this.B.a();
        j.a aVar = this.M;
        if (aVar != null) {
            aVar.a(this);
        }
        try {
            this.M.a();
        } catch (Throwable unused) {
        }
    }

    public void k() {
        p pVar = this.L;
        if (pVar == null || pVar.e() == null) {
            return;
        }
        this.L.f();
    }

    public void l() {
        try {
            b bVar = this.F;
            if (bVar != null) {
                bVar.b();
            }
            o();
            removeAllViews();
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            List<com.bytedance.sdk.component.adexpress.b.j> list = this.N;
            if (list != null) {
                Iterator<com.bytedance.sdk.component.adexpress.b.j> it = list.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
            }
            com.bytedance.sdk.openadsdk.n.a.e.a(this.j);
            this.c = null;
            this.f1625d = null;
            this.i = null;
            this.j = null;
            this.f1626e = null;
            this.f1627f = null;
            this.n = null;
            this.x = null;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("NativeExpressView", "detach error", th);
        }
    }

    public void m() {
        try {
            FrameLayout frameLayout = this.k;
            if (frameLayout == null || frameLayout.getParent() == null) {
                return;
            }
            removeView(this.k);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.a("NativeExpressView", "backupDestroy remove video container error", th);
        }
    }

    public boolean n() {
        com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar = this.w;
        return dVar != null && dVar.c() == 1;
    }

    public void o() {
        q qVar = this.j;
        if (qVar == null || qVar.au() == null || this.j.au().a() == null) {
            return;
        }
        this.j.au().a().e(getVideoProgress());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        v();
        x();
        com.bytedance.sdk.component.utils.l.e("webviewpool", "onAttachedToWindow+++");
        getViewTreeObserver().addOnScrollChangedListener(this.G);
        com.bytedance.sdk.openadsdk.core.h.b().a(this.C, this.D);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this.G);
        com.bytedance.sdk.openadsdk.core.h.b().d(this.C);
        y();
        com.bytedance.sdk.component.utils.l.e("webviewpool", "onDetachedFromWindow===");
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        com.bytedance.sdk.component.utils.l.e("webviewpool", "onFinishTemporaryDetach+++");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        v();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        com.bytedance.sdk.component.utils.l.e("webviewpool", "onStartTemporaryDetach===");
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (Build.VERSION.SDK_INT < 28) {
            onWindowVisibilityChanged(z ? getVisibility() : 8);
        }
        v();
        if (z) {
            com.bytedance.sdk.openadsdk.n.a.e.a(this.j, 4);
        } else {
            com.bytedance.sdk.openadsdk.n.a.e.a(this.j, 8);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        removeCallbacks(this.J);
        removeCallbacks(this.I);
        if (i == 0) {
            postDelayed(this.I, 50L);
        } else {
            postDelayed(this.J, 50L);
        }
    }

    public boolean p() {
        return this.E.get();
    }

    public void setBackupListener(com.bytedance.sdk.component.adexpress.b.c cVar) {
        this.n = cVar;
        com.bytedance.sdk.component.adexpress.b.f fVar = this.P;
        if (fVar != null) {
            fVar.a(cVar);
        }
    }

    public void setBannerClickClosedListener(a.InterfaceC0132a interfaceC0132a) {
        this.D = interfaceC0132a;
    }

    public void setClickCreativeListener(f fVar) {
        this.f1627f = fVar;
        if (fVar != null) {
            fVar.a((a.InterfaceC0131a) this);
        }
    }

    public void setClickListener(g gVar) {
        this.x = gVar;
    }

    public void setClosedListenerKey(String str) {
        this.C = str;
        b bVar = this.F;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    public void setDislike(com.bytedance.sdk.openadsdk.dislike.b bVar) {
        BackupView backupView;
        com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar = this.w;
        if (dVar != null && (dVar instanceof n) && (backupView = (BackupView) dVar.e()) != null) {
            backupView.setDislikeInner(bVar);
        }
        b bVar2 = this.F;
        if (bVar2 != null) {
            bVar2.a(bVar);
        }
        this.c = bVar;
    }

    public void setExpressInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.f1626e = pAGBannerAdWrapperListener;
        b bVar = this.F;
        if (bVar != null) {
            bVar.a(pAGBannerAdWrapperListener);
        }
    }

    public void setOuterDislike(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        BackupView backupView;
        com.bytedance.sdk.component.adexpress.b.d<? extends View> dVar = this.w;
        if (dVar != null && (dVar instanceof n) && (backupView = (BackupView) dVar.e()) != null) {
            backupView.setDislikeOuter(tTDislikeDialogAbstract);
        }
        b bVar = this.F;
        if (bVar != null) {
            bVar.a(tTDislikeDialogAbstract);
        }
        this.f1625d = tTDislikeDialogAbstract;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void setSoundMute(boolean z) {
        this.q = z;
        com.bytedance.sdk.component.adexpress.b.b bVar = this.v;
        if (bVar == null || bVar.d() == null) {
            return;
        }
        this.v.d().setSoundMute(z);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void setTimeUpdate(int i) {
    }

    public void setVastVideoHelper(VastBannerBackupView vastBannerBackupView) {
        this.ac = vastBannerBackupView;
    }
}
