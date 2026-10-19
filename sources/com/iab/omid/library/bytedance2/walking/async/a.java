package com.iab.omid.library.bytedance2.walking.async;

import com.iab.omid.library.bytedance2.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends b {
    protected final HashSet<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f4834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f4835e;

    public a(b.InterfaceC0308b interfaceC0308b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0308b);
        this.c = new HashSet<>(hashSet);
        this.f4834d = jSONObject;
        this.f4835e = j;
    }
}
