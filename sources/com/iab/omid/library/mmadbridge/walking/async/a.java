package com.iab.omid.library.mmadbridge.walking.async;

import com.iab.omid.library.mmadbridge.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b {
    protected final HashSet<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f5047d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f5048e;

    public a(b.InterfaceC0325b interfaceC0325b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0325b);
        this.c = new HashSet<>(hashSet);
        this.f5047d = jSONObject;
        this.f5048e = j;
    }
}
