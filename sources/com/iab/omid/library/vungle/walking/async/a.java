package com.iab.omid.library.vungle.walking.async;

import com.iab.omid.library.vungle.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b {
    protected final HashSet<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f5083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f5084e;

    public a(b.InterfaceC0329b interfaceC0329b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0329b);
        this.c = new HashSet<>(hashSet);
        this.f5083d = jSONObject;
        this.f5084e = j;
    }
}
