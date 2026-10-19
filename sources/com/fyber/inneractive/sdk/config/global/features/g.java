package com.fyber.inneractive.sdk.config.global.features;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends com.fyber.inneractive.sdk.config.global.p {
    public String b;
    public Map<String, com.fyber.inneractive.sdk.config.global.b> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Map<String, com.fyber.inneractive.sdk.config.global.k> f1960d = new HashMap();

    public g(String str) {
        this.b = str;
    }

    public int a(String str, int i) {
        Integer numB = b(str);
        return numB != null ? numB.intValue() : i;
    }

    @Override // com.fyber.inneractive.sdk.config.global.p, com.fyber.inneractive.sdk.config.global.n
    public Double a(String str) {
        Double dA;
        Iterator<String> it = this.f1960d.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                dA = null;
                break;
            }
            dA = this.f1960d.get(it.next()).a(str);
            if (dA != null) {
                break;
            }
        }
        return dA == null ? super.a(str) : dA;
    }

    @Override // com.fyber.inneractive.sdk.config.global.p, com.fyber.inneractive.sdk.config.global.n
    public String a(String str, String str2) {
        String strC;
        Iterator<String> it = this.f1960d.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                strC = null;
                break;
            }
            strC = this.f1960d.get(it.next()).c(str);
            if (strC != null) {
                break;
            }
        }
        if (strC != null) {
            return strC;
        }
        com.fyber.inneractive.sdk.config.global.n nVar = this.a;
        return nVar != null ? nVar.a(str, str2) : str2;
    }

    public void a(g gVar) {
        gVar.b = this.b;
        gVar.a = this.a;
        gVar.c = new HashMap(this.c);
        gVar.f1960d = new HashMap(this.f1960d);
    }

    public boolean a(String str, boolean z) {
        Boolean boolD = d(str);
        return boolD != null ? boolD.booleanValue() : z;
    }

    public abstract g b();

    @Override // com.fyber.inneractive.sdk.config.global.p, com.fyber.inneractive.sdk.config.global.n
    public Integer b(String str) {
        Integer numB;
        Iterator<String> it = this.f1960d.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                numB = null;
                break;
            }
            numB = this.f1960d.get(it.next()).b(str);
            if (numB != null) {
                break;
            }
        }
        return numB == null ? super.b(str) : numB;
    }

    @Override // com.fyber.inneractive.sdk.config.global.p, com.fyber.inneractive.sdk.config.global.n
    public String c(String str) {
        return a(str, (String) null);
    }

    public List<com.fyber.inneractive.sdk.config.global.b> c() {
        return new ArrayList(this.c.values());
    }

    @Override // com.fyber.inneractive.sdk.config.global.p, com.fyber.inneractive.sdk.config.global.n
    public Boolean d(String str) {
        Boolean boolD;
        Iterator<String> it = this.f1960d.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                boolD = null;
                break;
            }
            boolD = this.f1960d.get(it.next()).d(str);
            if (boolD != null) {
                break;
            }
        }
        return boolD == null ? super.d(str) : boolD;
    }

    public String toString() {
        return String.format("id: %s, params: %s exp: %s", this.b, this.a, this.c);
    }
}
