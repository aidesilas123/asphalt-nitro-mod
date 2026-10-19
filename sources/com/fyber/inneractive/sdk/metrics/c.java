package com.fyber.inneractive.sdk.metrics;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f2066d = new c();
    public final Map<String, f> a = new HashMap();
    public final Map<String, g> b = new HashMap();
    public final f c = new e();

    public f a(String str) {
        try {
            if (str == null) {
                return this.c;
            }
            f fVar = this.a.get(str);
            if (fVar != null) {
                return fVar;
            }
            d dVar = new d();
            this.a.put(str, dVar);
            return dVar;
        } catch (Exception unused) {
            return this.c;
        }
    }

    public g b(String str) {
        g hVar = this.b.get(str);
        if (hVar == null) {
            hVar = new h();
        }
        this.b.put(str, hVar);
        return hVar;
    }
}
