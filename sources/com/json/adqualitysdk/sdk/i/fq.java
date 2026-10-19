package com.json.adqualitysdk.sdk.i;

import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class fq extends fr {
    private fg a;
    private fg b;
    private ej c;

    public fq(fg fgVar, fg fgVar2, ej ejVar) {
        this.a = fgVar;
        this.b = fgVar2;
        this.c = ejVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && fq.class == obj.getClass()) {
            fq fqVar = (fq) obj;
            fg fgVar = this.a;
            if (fgVar == null ? fqVar.a != null : !fgVar.equals(fqVar.a)) {
                return false;
            }
            fg fgVar2 = this.b;
            if (fgVar2 == null ? fqVar.b != null : !fgVar2.equals(fqVar.b)) {
                return false;
            }
            ej ejVar = this.c;
            ej ejVar2 = fqVar.c;
            if (ejVar != null) {
                return ejVar.equals(ejVar2);
            }
            if (ejVar2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        fg fgVar = this.a;
        int iHashCode = (fgVar != null ? fgVar.hashCode() : 0) * 31;
        fg fgVar2 = this.b;
        int iHashCode2 = (iHashCode + (fgVar2 != null ? fgVar2.hashCode() : 0)) * 31;
        ej ejVar = this.c;
        return iHashCode2 + (ejVar != null ? ejVar.hashCode() : 0);
    }

    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    public final dp mo714(dr drVar, cj cjVar) {
        try {
            fg fgVar = this.a;
            if (fgVar != null) {
                return fgVar.mo714(new dr(drVar), cjVar);
            }
        } catch (Throwable th) {
            if (this.b != null) {
                HashMap map = new HashMap();
                ej ejVar = this.c;
                if (ejVar != null) {
                    map.put(dq.m680(ejVar.m712()), th);
                }
                return this.b.mo714(new dr(map, drVar), cjVar);
            }
        }
        return new dp(null);
    }
}
