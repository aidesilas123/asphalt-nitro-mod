package com.iab.omid.library.fyber.walking.async;

import com.iab.omid.library.fyber.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b {
    protected final HashSet<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f4870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f4871e;

    public a(b.InterfaceC0311b interfaceC0311b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0311b);
        this.c = new HashSet<>(hashSet);
        this.f4870d = jSONObject;
        this.f4871e = j;
    }
}
