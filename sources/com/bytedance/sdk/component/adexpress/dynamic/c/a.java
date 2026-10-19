package com.bytedance.sdk.component.adexpress.dynamic.c;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.b.m;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ComputeRuler.java */
/* JADX INFO: loaded from: classes.dex */
public class a {
    public Map<String, c> a = new HashMap();
    public Map<String, c> b = new HashMap();
    public Map<String, c> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f739d = Math.random();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f741f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f742g;
    private String h;
    private m i;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.adexpress.dynamic.c.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ComputeRuler.java */
    static class C0103a implements Cloneable {
        float a;
        boolean b;
        float c;

        C0103a() {
        }

        public Object clone() {
            try {
                return (C0103a) super.clone();
            } catch (CloneNotSupportedException e2) {
                e2.printStackTrace();
                return null;
            }
        }
    }

    /* JADX INFO: compiled from: ComputeRuler.java */
    static class b {
        float a;
        int b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        double f743d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f744e;

        b() {
        }

        static JSONObject a(b bVar) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_SIZE, bVar.a);
                jSONObject.put("letterSpacing", bVar.b);
                jSONObject.put("lineHeight", bVar.f743d);
                jSONObject.put("maxWidth", bVar.f744e);
                jSONObject.put(TtmlNode.ATTR_TTS_FONT_WEIGHT, bVar.c);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return jSONObject;
        }
    }

    /* JADX INFO: compiled from: ComputeRuler.java */
    static class c {
        float a;
        float b;

        public c() {
        }

        public c(float f2, float f3) {
            this.a = f2;
            this.b = f3;
        }

        public String toString() {
            return "UnitSize{width=" + this.a + ", height=" + this.b + '}';
        }
    }

    public a(double d2, int i, double d3, String str, m mVar) {
        this.f740e = d2;
        this.f741f = i;
        this.f742g = d3;
        this.h = str;
        this.i = mVar;
    }

    private c a(String str, b bVar, boolean z, boolean z2, int i, com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        return j.a(str, hVar.j().b(), b.a(bVar).toString(), z, z2, i, hVar, this.f740e, this.f741f, this.f742g, this.h, this.i);
    }

    private void a(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, c cVar) {
        this.a.put(e(hVar), cVar);
    }

    private void a(List<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> list, float f2, float f3) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (a(it.next(), false)) {
                z = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list2 : list) {
            C0103a c0103a = new C0103a();
            boolean zA = a(list2, !z);
            c0103a.a = zA ? 1.0f : b(list2, f2, f3).b;
            c0103a.b = !zA;
            arrayList.add(c0103a);
        }
        List<C0103a> listA = i.a(f3, arrayList);
        for (int i = 0; i < list.size(); i++) {
            if (((C0103a) arrayList.get(i)).a != listA.get(i).a) {
                List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list3 = list.get(i);
                c(list3);
                b(list3, f2, listA.get(i).a);
            }
        }
    }

    private void a(List<C0103a> list, float f2, List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list2) {
        float f3 = 0.0f;
        for (C0103a c0103a : list) {
            if (c0103a.b) {
                f3 += c0103a.a;
            }
        }
        if (f3 > f2) {
            int i = 0;
            for (int i2 = 0; i2 < list2.size(); i2++) {
                if (list.get(i2).b && list2.get(i2).t()) {
                    i++;
                }
            }
            if (i > 0) {
                float fCeil = (float) (Math.ceil(((f3 - f2) / i) * 1000.0f) / 1000.0d);
                for (int i3 = 0; i3 < list2.size(); i3++) {
                    C0103a c0103a2 = list.get(i3);
                    if (c0103a2.b && list2.get(i3).t()) {
                        c0103a2.a -= fCeil;
                    }
                }
            }
        }
    }

    private void a(List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list, c cVar) {
        this.b.put(d(list), cVar);
    }

    private boolean a(List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list, boolean z) {
        boolean z2;
        for (com.bytedance.sdk.component.adexpress.dynamic.b.h hVar : list) {
            com.bytedance.sdk.component.adexpress.dynamic.b.f fVarE = hVar.j().e();
            String strZ = fVarE.z();
            if (TextUtils.equals(strZ, "flex") || (z && ((TextUtils.equals(fVarE.A(), "flex") && TextUtils.equals(fVarE.z(), "scale") && com.bytedance.sdk.component.adexpress.dynamic.b.e.a.get(hVar.j().b()).intValue() == 7) || TextUtils.equals(strZ, "flex")))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        if (z2) {
            return true;
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.b.h> it = list.iterator();
        while (it.hasNext()) {
            if (c(it.next())) {
                return true;
            }
        }
        return false;
    }

    private c b(List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list, float f2, float f3) {
        c cVarA = a(list);
        if (cVarA != null && (cVarA.a != 0.0f || cVarA.b != 0.0f)) {
            return cVarA;
        }
        c cVarC = c(list, f2, f3);
        a(list, cVarC);
        return cVarC;
    }

    private boolean b(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        if (hVar == null) {
            return false;
        }
        if (TextUtils.equals(hVar.j().e().z(), "flex")) {
            return true;
        }
        return c(hVar);
    }

    private boolean b(List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list) {
        boolean z;
        List<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> listQ;
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.b.h> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (TextUtils.equals(it.next().j().e().A(), "flex")) {
                z = true;
                break;
            }
        }
        if (z) {
            return true;
        }
        while (true) {
            boolean z2 = false;
            for (com.bytedance.sdk.component.adexpress.dynamic.b.h hVar : list) {
                if (TextUtils.equals(hVar.j().e().A(), "auto") && (listQ = hVar.q()) != null) {
                    int i = 0;
                    for (List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list2 : listQ) {
                        i++;
                        if (!b(list2)) {
                            break;
                        }
                        if (i == list2.size()) {
                            z2 = true;
                        }
                    }
                }
            }
            return z2;
        }
    }

    private c c(List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list, float f2, float f3) {
        float fMax;
        d(list);
        c cVar = new c();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.bytedance.sdk.component.adexpress.dynamic.b.h hVar : list) {
            com.bytedance.sdk.component.adexpress.dynamic.b.f fVarE = hVar.j().e();
            if (fVarE.Y() == 1 || fVarE.Y() == 2) {
                arrayList.add(hVar);
            }
            if (fVarE.Y() != 1 && fVarE.Y() != 2) {
                arrayList2.add(hVar);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            c((com.bytedance.sdk.component.adexpress.dynamic.b.h) it.next(), f2, f3);
        }
        if (arrayList2.size() <= 0) {
            return cVar;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.b.h> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(Float.valueOf(c(it2.next(), f2, f3).a));
        }
        ArrayList arrayList4 = new ArrayList();
        int i = 0;
        while (true) {
            if (i >= arrayList2.size()) {
                break;
            }
            com.bytedance.sdk.component.adexpress.dynamic.b.h hVar2 = arrayList2.get(i);
            String strA = hVar2.j().e().A();
            float fH = hVar2.h();
            boolean zEquals = TextUtils.equals(strA, "flex");
            if (TextUtils.equals(strA, "auto")) {
                List<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> listQ = hVar2.q();
                if (listQ == null || listQ.size() <= 0) {
                    zEquals = false;
                } else {
                    Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> it3 = listQ.iterator();
                    while (it3.hasNext()) {
                        if (b(it3.next())) {
                            zEquals = true;
                            break;
                        }
                    }
                    zEquals = false;
                }
            }
            C0103a c0103a = new C0103a();
            if (!zEquals) {
                fH = ((Float) arrayList3.get(i)).floatValue();
            }
            c0103a.a = fH;
            c0103a.b = !zEquals;
            if (zEquals) {
                fMax = ((Float) arrayList3.get(i)).floatValue();
            }
            c0103a.c = fMax;
            arrayList4.add(c0103a);
            i++;
        }
        a(arrayList4, f2, arrayList2);
        List<C0103a> listA = i.a(f2, arrayList4);
        float f4 = 0.0f;
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            f4 += listA.get(i2).a;
            if (((Float) arrayList3.get(i2)).floatValue() != listA.get(i2).a) {
                d(arrayList2.get(i2));
            }
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.b.h> it4 = arrayList2.iterator();
        int i3 = 0;
        boolean z = false;
        while (true) {
            if (!it4.hasNext()) {
                break;
            }
            i3++;
            if (!b(it4.next())) {
                z = false;
                break;
            }
            if (i3 == arrayList2.size()) {
                z = true;
            }
        }
        fMax = z ? f3 : 0.0f;
        ArrayList arrayList5 = new ArrayList();
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            com.bytedance.sdk.component.adexpress.dynamic.b.h hVar3 = arrayList2.get(i4);
            c cVarC = c(hVar3, listA.get(i4).a, f3);
            if (!b(hVar3)) {
                fMax = Math.max(fMax, cVarC.b);
            }
            arrayList5.add(cVarC);
        }
        ArrayList arrayList6 = new ArrayList();
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            arrayList6.add(Float.valueOf(((c) it5.next()).b));
        }
        if (!z) {
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                com.bytedance.sdk.component.adexpress.dynamic.b.h hVar4 = arrayList2.get(i5);
                if (b(hVar4) && ((Float) arrayList6.get(i5)).floatValue() != fMax) {
                    d(hVar4);
                    c(hVar4, listA.get(i5).a, fMax);
                }
            }
        }
        cVar.a = f4;
        cVar.b = fMax;
        return cVar;
    }

    private void c(List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        this.b.remove(d(list));
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.b.h> it = list.iterator();
        while (it.hasNext()) {
            d(it.next());
        }
    }

    private boolean c(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        List<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> listQ;
        if (!hVar.r() && TextUtils.equals(hVar.j().e().z(), "auto") && (listQ = hVar.q()) != null && listQ.size() > 0) {
            if (listQ.size() == 1) {
                Iterator<com.bytedance.sdk.component.adexpress.dynamic.b.h> it = listQ.get(0).iterator();
                while (it.hasNext()) {
                    if (!b(it.next())) {
                        return false;
                    }
                }
                return true;
            }
            Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> it2 = listQ.iterator();
            while (it2.hasNext()) {
                if (a(it2.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }

    private String d(List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            String strC = list.get(i).c();
            if (i < list.size() - 1) {
                sb.append(strC);
                sb.append("-");
            } else {
                sb.append(strC);
            }
        }
        return sb.toString();
    }

    private void d(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        this.a.remove(e(hVar));
        List<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> listQ = hVar.q();
        if (listQ == null || listQ.size() <= 0) {
            return;
        }
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> it = listQ.iterator();
        while (it.hasNext()) {
            c(it.next());
        }
    }

    private c e(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, float f2, float f3) {
        String str = hVar.c() + "_" + f2 + "_" + f3;
        if (this.c.containsKey(str)) {
            return this.c.get(str);
        }
        c cVarF = f(hVar, f2, f3);
        this.c.put(str, cVarF);
        return cVarF;
    }

    private String e(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        return hVar.c();
    }

    private c f(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, float f2, float f3) {
        new c();
        com.bytedance.sdk.component.adexpress.dynamic.b.f fVarE = hVar.j().e();
        hVar.j().c();
        fVarE.V();
        float fR = fVarE.r();
        int iU = fVarE.U();
        double dT = fVarE.T();
        int iW = fVarE.W();
        boolean zN = fVarE.N();
        boolean zX = fVarE.X();
        int iO = fVarE.O();
        b bVar = new b();
        bVar.a = fR;
        bVar.b = iU;
        bVar.c = iW;
        bVar.f743d = dT;
        bVar.f744e = f2;
        return a(hVar.j().c(), bVar, zN, zX, iO, hVar);
    }

    public c a(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar) {
        return this.a.get(e(hVar));
    }

    public c a(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, float f2, float f3) {
        float f4;
        if ((!TextUtils.isEmpty(hVar.j().c()) || hVar.j().e().ae() != null) && !TextUtils.equals(hVar.j().b(), "creative-playable-bait")) {
            float fH = hVar.h();
            float fI = hVar.i();
            com.bytedance.sdk.component.adexpress.dynamic.b.f fVarE = hVar.j().e();
            String strA = fVarE.A();
            String strZ = fVarE.z();
            float fM = hVar.m();
            float fN = hVar.n();
            float fO = hVar.o();
            float fP = hVar.p();
            if (TextUtils.equals(strA, "fixed")) {
                f2 = Math.min(fH, f2);
                if (TextUtils.equals(strZ, "auto")) {
                    f4 = b(hVar, f2 - fO, f3 - fP).b;
                    fI = f4 + fP;
                }
            } else if (TextUtils.equals(strA, "auto")) {
                c cVarB = b(hVar, f2 - fO, f3 - fP);
                f2 = cVarB.a + fO;
                if (TextUtils.equals(strZ, "auto")) {
                    f4 = cVarB.b;
                    fI = f4 + fP;
                }
            } else if (!TextUtils.equals(strA, "flex")) {
                f2 = fH;
            } else if (TextUtils.equals(strZ, "auto")) {
                f4 = b(hVar, f2 - fO, f3 - fP).b;
                fI = f4 + fP;
            }
            if (TextUtils.equals(strZ, "scale")) {
                float fRound = Math.round((f2 - fM) / fI) + fN;
                if (fRound > f3) {
                    f2 = Math.round((f3 - fN) * fI) + fM;
                } else {
                    f3 = fRound;
                }
            } else if (TextUtils.equals(strZ, "fixed")) {
                f3 = Math.min(fI + fN, f3);
            } else if (!TextUtils.equals(strZ, "flex")) {
                f3 = fI;
            }
            c cVar = new c();
            cVar.a = f2;
            cVar.b = f3;
            return cVar;
        }
        return new c(0.0f, 0.0f);
    }

    public c a(List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list) {
        return this.b.get(d(list));
    }

    public void a() {
        this.c.clear();
        this.a.clear();
        this.b.clear();
    }

    public c b(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, float f2, float f3) {
        c cVar = new c();
        if (hVar.j().e() == null) {
            return cVar;
        }
        c cVarE = e(hVar, f2, f3);
        float f4 = cVarE.a;
        float f5 = cVarE.b;
        cVar.a = Math.min(f4, f2);
        cVar.b = Math.min(f5, f3);
        return cVar;
    }

    public c c(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, float f2, float f3) {
        if (hVar == null) {
            return null;
        }
        c cVarA = a(hVar);
        if (cVarA != null && (cVarA.a != 0.0f || cVarA.b != 0.0f)) {
            return cVarA;
        }
        c cVarD = d(hVar, f2, f3);
        a(hVar, cVarD);
        return cVarD;
    }

    public c d(com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, float f2, float f3) {
        float fMin;
        c cVar = new c();
        float f4 = 0.0f;
        if (f3 <= 0.0f || f2 <= 0.0f) {
            cVar.a = 0.0f;
            cVar.b = 0.0f;
            return cVar;
        }
        if (hVar.r()) {
            return a(hVar, f2, f3);
        }
        float fH = hVar.h();
        float fI = hVar.i();
        float fO = hVar.o();
        float fP = hVar.p();
        com.bytedance.sdk.component.adexpress.dynamic.b.f fVarE = hVar.j().e();
        String strA = fVarE.A();
        String strZ = fVarE.z();
        float fMin2 = ((TextUtils.equals(strA, "flex") || TextUtils.equals(strA, "auto")) ? f2 : Math.min(fH, f2)) - fO;
        if (TextUtils.equals(strZ, "scale")) {
            fMin = Math.round(fMin2 / fI) + fP;
            if (fMin > f3) {
                fMin2 = Math.round((f3 - fP) * fI);
            }
        } else {
            fMin = (TextUtils.equals(strZ, "auto") || TextUtils.equals(strZ, "flex")) ? f3 : Math.min(fI, f3);
        }
        float f5 = fMin - fP;
        List<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> listQ = hVar.q();
        Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> it = listQ.iterator();
        float fMax = 0.0f;
        float fMax2 = 0.0f;
        while (it.hasNext()) {
            Iterator<List<com.bytedance.sdk.component.adexpress.dynamic.b.h>> it2 = it;
            List<com.bytedance.sdk.component.adexpress.dynamic.b.h> next = it.next();
            c cVar2 = cVar;
            c cVarB = b(next, fMin2, f5);
            if (b(next)) {
                f4 += 1.0f;
            } else {
                fMax = Math.max(fMax, cVarB.a);
            }
            float f6 = f4;
            fMax2 = hVar.j().b().equals("carousel") ? Math.max(hVar.i(), cVarB.b) : fMax2 + cVarB.b;
            cVar = cVar2;
            it = it2;
            f4 = f6;
        }
        c cVar3 = cVar;
        if (TextUtils.equals(strA, "auto")) {
            if (f4 == listQ.size()) {
                fMin2 = f2;
            } else {
                for (List<com.bytedance.sdk.component.adexpress.dynamic.b.h> list : listQ) {
                    c(list);
                    b(list, fMax, f5);
                }
                fMin2 = fMax;
            }
        }
        if (TextUtils.equals(strZ, "auto")) {
            if (fMax2 <= f3) {
                f5 = fMax2;
            } else {
                a(listQ, fMin2, f5);
            }
        } else if ((TextUtils.equals(strZ, "fixed") || TextUtils.equals(strZ, "flex")) && f5 < fMax2) {
            a(listQ, fMin2, f5);
        }
        cVar3.a = Math.min(fMin2 + fO, f2);
        cVar3.b = Math.min(f5 + fP, f3);
        return cVar3;
    }
}
