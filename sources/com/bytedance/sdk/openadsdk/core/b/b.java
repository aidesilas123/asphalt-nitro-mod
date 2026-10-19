package com.bytedance.sdk.openadsdk.core.b;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.model.i;
import com.bytedance.sdk.openadsdk.core.model.m;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: ClickListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends c {
    private boolean G;
    private String a;
    private WeakReference<Activity> b;
    protected Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public m f1456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final q f1457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final String f1458f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final int f1459g;
    protected WeakReference<View> h;
    protected WeakReference<View> i;
    protected i j;
    protected a k;
    protected PAGNativeAd l;
    protected com.bykv.vk.openvk.component.video.api.d.c m;
    protected boolean n;
    protected com.com.bytedance.overseas.sdk.a.c o;
    protected Map<String, Object> p;
    protected PangleAd q;
    protected com.bytedance.sdk.openadsdk.core.nativeexpress.a r;
    protected int s;

    /* JADX INFO: compiled from: ClickListener.java */
    public interface a {
        void a(View view, int i);
    }

    public b(@NonNull Context context, @NonNull q qVar, @NonNull String str, int i) {
        this.n = false;
        this.s = 0;
        this.G = false;
        this.c = context;
        this.f1457e = qVar;
        this.f1458f = str;
        this.f1459g = i;
    }

    public b(@NonNull Context context, @NonNull q qVar, @NonNull String str, int i, boolean z) {
        this(context, qVar, str, i);
        this.G = z;
    }

    public static boolean a(View view, q qVar, boolean z) {
        if (view == null || qVar == null) {
            return true;
        }
        try {
            int i = com.bytedance.sdk.component.adexpress.dynamic.a.t;
            String strValueOf = String.valueOf(view.getTag(i));
            if (view.getTag(i) != null && !TextUtils.isEmpty(strValueOf)) {
                if (CampaignEx.JSON_NATIVE_VIDEO_CLICK.equals(strValueOf)) {
                    return z;
                }
                return true;
            }
        } catch (Exception unused) {
        }
        return c(view) ? qVar.r() != 1 || z : qVar.q() != 1 || z;
    }

    public static boolean c(View view) {
        return 520093705 == view.getId() || 520093707 == view.getId() || 520093703 == view.getId() || s.e(view.getContext(), "btn_native_creative") == view.getId() || com.bytedance.sdk.openadsdk.utils.i.at == view.getId() || com.bytedance.sdk.openadsdk.utils.i.bf == view.getId();
    }

    protected i a(float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, long j, long j2, View view, View view2, String str, float f6, int i, float f7, int i2, JSONObject jSONObject) {
        return new i.a().f(f2).e(f3).d(f4).c(f5).b(j).a(j2).b(ad.a(view)).a(ad.a(view2)).c(ad.c(view)).d(ad.c(view2)).d(this.z).e(this.A).f(this.B).a(sparseArray).b(h.b().a() ? 1 : 2).a(str).a(f6).c(i).b(f7).a(i2).a(jSONObject).a();
    }

    public void a(int i) {
        this.B = i;
    }

    public void a(Activity activity) {
        if (activity == null) {
            return;
        }
        this.b = new WeakReference<>(activity);
    }

    public void a(View view) {
        if (view == null) {
            return;
        }
        this.h = new WeakReference<>(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.b.c
    public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
        JSONObject jSONObject;
        int i;
        q qVar;
        if (this.c == null) {
            this.c = o.a();
        }
        if ((this.G || !a(view, 1, f2, f3, f4, f5, sparseArray, z)) && this.c != null) {
            m mVar = this.f1456d;
            if (mVar != null) {
                int i2 = mVar.l;
                jSONObject = mVar.m;
                i = i2;
            } else {
                jSONObject = null;
                i = -1;
            }
            long j = this.x;
            long j2 = this.y;
            WeakReference<View> weakReference = this.h;
            View view2 = weakReference == null ? null : weakReference.get();
            WeakReference<View> weakReference2 = this.i;
            i iVarA = a(f2, f3, f4, f5, sparseArray, j, j2, view2, weakReference2 == null ? null : weakReference2.get(), f(), ad.e(this.c), ad.g(this.c), ad.f(this.c), i, jSONObject);
            this.j = iVarA;
            if (a(iVarA, this.p)) {
                return;
            }
            if (this.m != null) {
                if (this.p == null) {
                    this.p = new HashMap();
                }
                this.p.put("duration", Long.valueOf(this.m.e()));
            }
            if (this.G) {
                com.bytedance.sdk.openadsdk.b.c.a(CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.f1457e, this.j, this.f1458f, true, this.p, z ? 1 : 2);
                return;
            }
            a aVar = this.k;
            if (aVar != null) {
                aVar.a(view, -1);
            }
            if (a(view, z)) {
                boolean zB = t.b(this.f1457e);
                String strA = zB ? this.f1458f : ac.a(this.f1459g);
                if (view != null) {
                    try {
                        if (((Boolean) view.getTag(520093762)).booleanValue()) {
                            z.a(true);
                        }
                    } catch (Exception unused) {
                    }
                }
                boolean zA = z.a(this.c, this.f1457e, this.f1459g, this.l, this.q, strA, this.o, zB, 0);
                z.a(false);
                if (zA || (qVar = this.f1457e) == null || qVar.ab() == null || this.f1457e.ab().c() != 2) {
                    q qVar2 = this.f1457e;
                    if (qVar2 != null && !zA && TextUtils.isEmpty(qVar2.P()) && com.bytedance.sdk.openadsdk.b.b.a(this.f1458f)) {
                        com.com.bytedance.overseas.sdk.a.d.a(this.c, this.f1457e, this.f1458f).d();
                    }
                    com.bytedance.sdk.openadsdk.b.c.a(CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.f1457e, this.j, this.f1458f, zA, this.p, z ? 1 : 2);
                }
            }
        }
    }

    public void a(com.bykv.vk.openvk.component.video.api.d.c cVar) {
        this.m = cVar;
    }

    public void a(PangleAd pangleAd) {
        this.q = pangleAd;
    }

    public void a(PAGNativeAd pAGNativeAd) {
        this.l = pAGNativeAd;
    }

    public void a(a aVar) {
        this.k = aVar;
    }

    public void a(com.bytedance.sdk.openadsdk.core.nativeexpress.a aVar) {
        this.r = aVar;
    }

    public void a(com.com.bytedance.overseas.sdk.a.c cVar) {
        this.o = cVar;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(Map<String, Object> map) {
        Map<String, Object> map2 = this.p;
        if (map2 != null) {
            map2.putAll(map);
            map.putAll(this.p);
        }
        this.p = map;
    }

    protected boolean a(View view, int i, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
        if (this.r == null) {
            return false;
        }
        int[] iArrA = new int[2];
        int[] iArrC = new int[2];
        WeakReference<View> weakReference = this.i;
        if (weakReference != null) {
            iArrA = ad.a(weakReference.get());
            iArrC = ad.c(this.i.get());
        }
        this.r.a(view, i, new m.a().d(f2).c(f3).b(f4).a(f5).b(this.x).a(this.y).c(iArrA[0]).d(iArrA[1]).e(iArrC[0]).f(iArrC[1]).a(sparseArray).a(z).a());
        return true;
    }

    public boolean a(View view, boolean z) {
        return a(view, this.f1457e, z);
    }

    public boolean a(i iVar, Map<String, Object> map) {
        return false;
    }

    public void b(int i) {
        this.A = i;
    }

    public void b(View view) {
        if (view == null) {
            return;
        }
        this.i = new WeakReference<>(view);
    }

    public void c(int i) {
        this.z = i;
    }

    public View d() {
        WeakReference<Activity> weakReference = this.b;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.b.get().findViewById(R.id.content);
    }

    public void d(int i) {
        this.s = i;
    }

    public void d(boolean z) {
        this.n = z;
    }

    public View e() {
        WeakReference<Activity> weakReference = this.b;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        View viewFindViewById = this.b.get().findViewById(520093713);
        return viewFindViewById == null ? this.b.get().findViewById(520093713) : viewFindViewById;
    }

    public String f() {
        return this.a;
    }
}
