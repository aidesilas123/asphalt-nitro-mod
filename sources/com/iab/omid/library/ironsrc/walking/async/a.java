package com.iab.omid.library.ironsrc.walking.async;

import com.iab.omid.library.ironsrc.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b {
    protected final HashSet<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f4936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f4937e;

    public a(b.InterfaceC0316b interfaceC0316b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0316b);
        this.c = new HashSet<>(hashSet);
        this.f4936d = jSONObject;
        this.f4937e = j;
    }
}
