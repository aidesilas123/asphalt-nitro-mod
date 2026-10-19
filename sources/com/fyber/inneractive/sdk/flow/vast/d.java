package com.fyber.inneractive.sdk.flow.vast;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.model.vast.o;
import com.fyber.inneractive.sdk.model.vast.s;
import com.fyber.inneractive.sdk.model.vast.t;
import com.fyber.inneractive.sdk.model.vast.v;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l;
import com.fyber.inneractive.sdk.util.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public int a = -1;
    public int b = -1;
    public int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2037d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2038e = false;
    public final List<com.fyber.inneractive.sdk.measurement.f> i = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<o, g> f2039f = new LinkedHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<com.fyber.inneractive.sdk.model.vast.g> f2040g = new ArrayList();
    public final List<com.fyber.inneractive.sdk.model.vast.g> h = new ArrayList();

    public class a extends Exception {
        public int a;

        public a(d dVar, String str, int i) {
            super(str);
            this.a = i;
        }
    }

    public com.fyber.inneractive.sdk.model.vast.b a(com.fyber.inneractive.sdk.model.vast.e eVar, List<com.fyber.inneractive.sdk.model.vast.e> list, String str) throws i {
        IAlog.a("%sprocess started", "VastProcessor: ");
        if (eVar == null || eVar.c == null) {
            IAlog.a("%sno inline found", "VastProcessor: ");
            throw new i("ErrorNoMediaFiles", "Empty inline ad found");
        }
        int iE = l.e();
        int iD = l.d();
        com.fyber.inneractive.sdk.model.vast.b bVar = new com.fyber.inneractive.sdk.model.vast.b(new h(this.c, iE, iD), new f(iE, iD));
        bVar.a = str;
        List<com.fyber.inneractive.sdk.model.vast.k> list2 = eVar.c.c;
        if (list2 == null || list2.isEmpty()) {
            throw new i("ErrorNoMediaFiles", "Empty inline with no creatives");
        }
        if (list != null) {
            Iterator<com.fyber.inneractive.sdk.model.vast.e> it = list.iterator();
            while (it.hasNext()) {
                v vVar = it.next().b;
                if (vVar != null) {
                    a(bVar, (com.fyber.inneractive.sdk.model.vast.f) vVar, true);
                }
            }
        }
        a(bVar, (com.fyber.inneractive.sdk.model.vast.f) eVar.c, false);
        if (bVar.f2073d.size() == 0) {
            if (this.f2039f.size() == 0) {
                throw new i("ErrorNoMediaFiles", "No media files exist after merge");
            }
            throw new i("ErrorNoCompatibleMediaFile", "No compatible media files after filtering");
        }
        if (IAlog.a == 2) {
            for (o oVar : new ArrayList(bVar.f2073d)) {
            }
        }
        if (IAlog.a == 2) {
            ArrayList arrayList = new ArrayList(bVar.f2076g);
            if (arrayList.size() > 0) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((com.fyber.inneractive.sdk.model.vast.c) it2.next()).a();
                }
            }
        }
        return bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.fyber.inneractive.sdk.model.vast.b r12, com.fyber.inneractive.sdk.model.vast.f r13, boolean r14) {
        /*
            Method dump skipped, instruction units count: 692
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.flow.vast.d.a(com.fyber.inneractive.sdk.model.vast.b, com.fyber.inneractive.sdk.model.vast.f, boolean):void");
    }

    public void a(com.fyber.inneractive.sdk.model.vast.b bVar, com.fyber.inneractive.sdk.model.vast.g gVar, boolean z) throws a {
        String str;
        List<s> list;
        String str2;
        Integer num;
        Integer num2;
        List<String> list2 = gVar.h;
        if (list2 != null) {
            if (z) {
                this.h.add(gVar);
            }
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                if (!x.f(it.next())) {
                    throw new a(this, "Found non secure click tracking url for companion: " + gVar, 0);
                }
            }
        }
        String str3 = gVar.f2087g;
        if (!x.f(str3)) {
            throw new a(this, "Found non secure click through url: " + str3, 0);
        }
        Integer num3 = gVar.a;
        Integer num4 = gVar.b;
        boolean z2 = true;
        if (!(num3 != null && num4 != null && num3.intValue() >= 100 && num4.intValue() >= 100)) {
            throw new a(this, "Incompatible size: " + num3 + "," + num4, 16);
        }
        String str4 = gVar.c;
        List<s> list3 = gVar.j;
        if (list3 != null) {
            for (s sVar : list3) {
                if (!x.f(sVar.b)) {
                    throw new a(this, "Found non secure tracking event: " + sVar, 0);
                }
            }
        }
        if (TextUtils.isEmpty(gVar.f2085e) && TextUtils.isEmpty(gVar.f2086f) && gVar.f2084d == null) {
            z2 = false;
        }
        if (!z2) {
            throw new a(this, "None sources of companion avaliable", 0);
        }
        String str5 = gVar.f2085e;
        if (!x.f(str5)) {
            throw new a(this, "Found non secure iframe url:" + str5, 0);
        }
        com.fyber.inneractive.sdk.model.vast.j jVar = gVar.f2084d;
        if (jVar != null) {
            com.fyber.inneractive.sdk.model.vast.i iVarA = com.fyber.inneractive.sdk.model.vast.i.a(jVar.a);
            if (iVarA == null) {
                throw new a(this, "Found invalid creative type:" + jVar.a, 0);
            }
            str = str5;
            list = list3;
            str2 = str4;
            num = num4;
            num2 = num3;
            a(bVar, com.fyber.inneractive.sdk.model.vast.h.Static, z, num3.intValue(), num4.intValue(), str4, str3, list2, list, jVar.b, iVarA);
        } else {
            str = str5;
            list = list3;
            str2 = str4;
            num = num4;
            num2 = num3;
        }
        if (!TextUtils.isEmpty(str)) {
            a(bVar, com.fyber.inneractive.sdk.model.vast.h.Iframe, z, num2.intValue(), num.intValue(), str2, str3, list2, list, str, null);
        }
        String str6 = gVar.f2086f;
        if (TextUtils.isEmpty(str6)) {
            return;
        }
        a(bVar, com.fyber.inneractive.sdk.model.vast.h.Html, z, num2.intValue(), num.intValue(), str2, str3, list2, list, str6, null);
    }

    public void a(com.fyber.inneractive.sdk.model.vast.b bVar, com.fyber.inneractive.sdk.model.vast.h hVar, boolean z, int i, int i2, String str, String str2, List<String> list, List<s> list2, String str3, com.fyber.inneractive.sdk.model.vast.i iVar) {
        com.fyber.inneractive.sdk.model.vast.c cVar = new com.fyber.inneractive.sdk.model.vast.c(hVar, i, i2, str);
        cVar.f2080g = str2;
        if (list2 != null) {
            for (s sVar : list2) {
                cVar.a(t.a(sVar.a), sVar.b);
            }
        }
        if (list != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                cVar.a(t.EVENT_CLICK, it.next());
            }
        }
        a(cVar, z);
        cVar.f2079f = str3;
        cVar.b = iVar;
        bVar.f2076g.add(cVar);
        bVar.l.add(cVar);
    }

    public final void a(com.fyber.inneractive.sdk.response.i iVar, t tVar, String str) throws i {
        if (x.f(str)) {
            ((com.fyber.inneractive.sdk.model.vast.b) iVar).a(tVar, str);
            return;
        }
        throw new i("VastErrorUnsecure", "found unsecure tracking event: " + tVar.e());
    }

    public boolean a(com.fyber.inneractive.sdk.model.vast.c cVar, boolean z) {
        boolean z2 = false;
        if (!this.h.isEmpty()) {
            com.fyber.inneractive.sdk.model.vast.g gVarRemove = null;
            if (z) {
                List<com.fyber.inneractive.sdk.model.vast.g> list = this.h;
                gVarRemove = list.remove(list.size() - 1);
            }
            String str = cVar.f2078e;
            for (com.fyber.inneractive.sdk.model.vast.g gVar : this.h) {
                String str2 = gVar.c;
                if ((str != null && str.equals(str2)) || (str2 == null && cVar.c == gVar.a.intValue() && cVar.f2077d == gVar.b.intValue())) {
                    List<String> list2 = gVar.h;
                    if (list2 != null) {
                        for (String str3 : list2) {
                            if (x.f(str3)) {
                                cVar.a(t.EVENT_CLICK, str3);
                            }
                        }
                    }
                    z2 = true;
                }
            }
            if (gVarRemove != null) {
                this.h.add(gVarRemove);
            }
        }
        return z2;
    }
}
