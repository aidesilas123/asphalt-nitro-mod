package com.iab.omid.library.kidoznet.walking.async;

import com.iab.omid.library.kidoznet.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b {
    protected final HashSet<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f5011d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f5012e;

    public a(b.InterfaceC0322b interfaceC0322b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0322b);
        this.c = new HashSet<>(hashSet);
        this.f5011d = jSONObject;
        this.f5012e = j;
    }
}
