package com.fyber.inneractive.sdk.cache.session;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HashMap<com.fyber.inneractive.sdk.cache.session.enums.b, h> {
    public final /* synthetic */ int a;

    public a(d dVar, int i) {
        this.a = i;
        for (com.fyber.inneractive.sdk.cache.session.enums.b bVar : com.fyber.inneractive.sdk.cache.session.enums.b.values()) {
            if (bVar != com.fyber.inneractive.sdk.cache.session.enums.b.NONE) {
                put(bVar, new h(this.a));
            }
        }
    }
}
