package com.fyber.inneractive.sdk.cache.session;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class i implements Comparator<e> {
    @Override // java.util.Comparator
    public int compare(e eVar, e eVar2) {
        e eVar3 = eVar;
        e eVar4 = eVar2;
        if (eVar3 == null || eVar4 == null) {
            return 0;
        }
        return eVar3.f1922d < eVar4.f1922d ? -1 : 1;
    }
}
