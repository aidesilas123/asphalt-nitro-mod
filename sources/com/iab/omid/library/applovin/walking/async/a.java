package com.iab.omid.library.applovin.walking.async;

import com.iab.omid.library.applovin.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b {
    protected final HashSet<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f4798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f4799e;

    public a(b.InterfaceC0305b interfaceC0305b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0305b);
        this.c = new HashSet<>(hashSet);
        this.f4798d = jSONObject;
        this.f4799e = j;
    }
}
