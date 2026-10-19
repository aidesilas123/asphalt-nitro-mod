package com.bytedance.sdk.component.adexpress.dynamic.c;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.dynamic.c.a;
import com.bytedance.sdk.component.utils.l;
import com.json.qc;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DynamicCanvas.java */
/* JADX INFO: loaded from: classes.dex */
public class d {
    public com.bytedance.sdk.component.adexpress.dynamic.b.b a;
    protected com.bytedance.sdk.component.adexpress.dynamic.c.a b;
    private com.bytedance.sdk.component.adexpress.dynamic.b.h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f745d;

    /* JADX INFO: compiled from: DynamicCanvas.java */
    static class a {
        float a;
        float b;
        float c;

        a() {
        }
    }

    public d(double d2, int i, double d3, String str, m mVar) {
        this.b = new com.bytedance.sdk.component.adexpress.dynamic.c.a(d2, i, d3, str, mVar);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.b.i a(com.bytedance.sdk.component.adexpress.dynamic.b.b bVar, com.bytedance.sdk.component.adexpress.dynamic.b.f fVar, float f2, float f3) {
        float f4;
        float f5;
        float f6 = bVar.a;
        float f7 = bVar.b;
        float fAj = fVar.aj();
        float fAl = fVar.al();
        float fAk = fVar.ak();
        float fAm = fVar.am();
        boolean zAa = fVar.aa();
        boolean zAb = fVar.ab();
        boolean zAc = fVar.ac();
        boolean zAd = fVar.ad();
        String strZ = fVar.Z();
        float f8 = bVar.c;
        float f9 = bVar.f721d;
        if (TextUtils.equals(strZ, "0")) {
            if (zAa) {
                f6 = bVar.a + fAj;
            } else if (zAb) {
                f6 = ((bVar.a + f8) - fAk) - f2;
            }
            if (zAc) {
                f5 = bVar.b;
                f7 = f5 + fAl;
            } else if (zAd) {
                f4 = bVar.b;
                f7 = ((f4 + f9) - fAm) - f3;
            }
        } else if (TextUtils.equals(strZ, "1")) {
            f6 = bVar.a + ((f8 - f2) / 2.0f);
            if (zAc) {
                f5 = bVar.b;
                f7 = f5 + fAl;
            } else if (zAd) {
                f4 = bVar.b;
                f7 = ((f4 + f9) - fAm) - f3;
            }
        } else if (TextUtils.equals(strZ, MBridgeConstans.API_REUQEST_CATEGORY_APP)) {
            f7 = bVar.b + ((f9 - f3) / 2.0f);
            if (zAa) {
                f6 = bVar.a + fAj;
            } else if (zAb) {
                f6 = ((bVar.a + f8) - fAk) - f2;
            }
        } else if (TextUtils.equals(strZ, "3")) {
            f6 = bVar.a + ((f8 - f2) / 2.0f);
            f7 = bVar.b + ((f9 - f3) / 2.0f);
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.b.i(f6, f7);
    }

    private com.bytedance.sdk.component.adexpress.dynamic.b.i a(com.bytedance.sdk.component.adexpress.dynamic.b.f fVar, a.c cVar, a.c cVar2) {
        float fAj = fVar.aj();
        float fAl = fVar.al();
        float fAk = fVar.ak();
        float fAm = fVar.am();
        boolean zAa = fVar.aa();
        boolean zAb = fVar.ab();
        boolean zAc = fVar.ac();
        boolean zAd = fVar.ad();
        if (!zAa) {
            if (zAb) {
                float f2 = this.f745d.a;
                if (f2 == 0.0f) {
                    f2 = cVar.a;
                }
                fAj = (f2 - fAk) - cVar2.a;
            } else {
                fAj = 0.0f;
            }
        }
        if (!zAc) {
            if (zAd) {
                float f3 = this.f745d.b;
                if (f3 == 0.0f) {
                    f3 = cVar.b;
                }
                fAl = (f3 - fAm) - cVar2.b;
            } else {
                fAl = 0.0f;
            }
        }
        return new com.bytedance.sdk.component.adexpress.dynamic.b.i(fAj, fAl);
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x0322  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.bytedance.sdk.component.adexpress.dynamic.b.b a(com.bytedance.sdk.component.adexpress.dynamic.b.b r37, float r38) {
        /*
            Method dump skipped, instruction units count: 1011
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.c.d.a(com.bytedance.sdk.component.adexpress.dynamic.b.b, float):com.bytedance.sdk.component.adexpress.dynamic.b.b");
    }

    public void a() {
        this.b.a();
    }

    public void a(com.bytedance.sdk.component.adexpress.dynamic.b.b bVar) {
        if (bVar == null) {
            return;
        }
        l.b("DynamicCanvas", "native parser: type = " + bVar.f723f.j().b() + "; width = " + bVar.c + "; height = " + bVar.f721d + "; x = " + bVar.a + "; y = " + bVar.b);
        List<List<com.bytedance.sdk.component.adexpress.dynamic.b.b>> list = bVar.f724g;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (List<com.bytedance.sdk.component.adexpress.dynamic.b.b> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.b.b> it = list2.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            }
        }
    }

    public void a(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, float f2, float f3) {
        if (hVar != null) {
            this.c = hVar;
        }
        com.bytedance.sdk.component.adexpress.dynamic.b.h hVar2 = this.c;
        float fH = hVar2.h();
        float fI = hVar2.i();
        float f4 = TextUtils.equals(hVar2.j().e().z(), "fixed") ? fI : 65536.0f;
        this.b.a();
        this.b.c(hVar2, fH, f4);
        a.c cVarA = this.b.a(hVar2);
        com.bytedance.sdk.component.adexpress.dynamic.b.b bVar = new com.bytedance.sdk.component.adexpress.dynamic.b.b();
        bVar.a = f2;
        bVar.b = f3;
        if (cVarA != null) {
            fH = cVarA.a;
        }
        bVar.c = fH;
        if (cVarA != null) {
            fI = cVarA.b;
        }
        bVar.f721d = fI;
        bVar.f722e = qc.y;
        bVar.i = 1280.0f;
        bVar.f723f = hVar2;
        hVar2.c(f2);
        bVar.f723f.d(bVar.b);
        bVar.f723f.e(bVar.c);
        bVar.f723f.f(bVar.f721d);
        com.bytedance.sdk.component.adexpress.dynamic.b.b bVarA = a(bVar, 0.0f);
        this.a = bVarA;
        a(bVarA);
    }

    public void a(a aVar) {
        this.f745d = aVar;
    }
}
