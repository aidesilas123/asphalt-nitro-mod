package com.applovin.impl.mediation.debugger;

import androidx.annotation.Nullable;
import com.applovin.impl.mediation.debugger.c.a;
import com.applovin.impl.mediation.debugger.c.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a implements a.InterfaceC0067a, b.a {
    private final InterfaceC0064a anR;
    private com.applovin.impl.mediation.debugger.b.b.a anS;
    private String anT;
    private final n sdk;

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.a$a, reason: collision with other inner class name */
    public interface InterfaceC0064a {
        void a(com.applovin.impl.mediation.debugger.b.b.a aVar, String str);

        void b(b bVar, @Nullable String str);
    }

    public enum b {
        DEVELOPER_URI_NOT_FOUND,
        APPADSTXT_NOT_FOUND,
        MISSING_APPLOVIN_ENTRIES,
        MISSING_NON_APPLOVIN_ENTRIES
    }

    public a(n nVar, InterfaceC0064a interfaceC0064a) {
        this.sdk = nVar;
        this.anR = interfaceC0064a;
    }

    @Override // com.applovin.impl.mediation.debugger.c.b.a
    public void a(b bVar) {
        this.anR.b(bVar, null);
    }

    @Override // com.applovin.impl.mediation.debugger.c.a.InterfaceC0067a
    public void a(b bVar, String str) {
        this.anR.b(bVar, str);
    }

    @Override // com.applovin.impl.mediation.debugger.c.b.a
    public void bG(String str) {
        this.sdk.BO().b(new com.applovin.impl.mediation.debugger.c.a(this.sdk, str, this));
    }

    @Override // com.applovin.impl.mediation.debugger.c.a.InterfaceC0067a
    public void t(String str, String str2) {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split("\n");
        int length = strArrSplit.length;
        int i = 1;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            com.applovin.impl.mediation.debugger.b.b.b bVar = new com.applovin.impl.mediation.debugger.b.b.b(strArrSplit[i2], i);
            if (bVar.vi()) {
                String strVd = bVar.vd();
                List arrayList2 = map.containsKey(strVd) ? (List) map.get(strVd) : new ArrayList();
                if (arrayList2 != null) {
                    arrayList2.add(bVar);
                    map.put(strVd, arrayList2);
                }
            } else {
                arrayList.add(bVar);
            }
            i2++;
            i = i3;
        }
        this.anS = new com.applovin.impl.mediation.debugger.b.b.a(map, arrayList);
        this.anT = str2;
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("AppAdsTxtService", "app-ads.txt fetched: " + this.anS);
        }
        this.anR.a(this.anS, str2);
    }

    public void uA() {
        com.applovin.impl.mediation.debugger.b.b.a aVar = this.anS;
        if (aVar != null) {
            this.anR.a(aVar, this.anT);
        } else {
            this.sdk.BO().b(new com.applovin.impl.mediation.debugger.c.b(this.sdk, this));
        }
    }
}
