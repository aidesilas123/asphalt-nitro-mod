package com.bykv.vk.openvk.preload.a;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: GsonBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {
    public String h;
    public com.bykv.vk.openvk.preload.a.b.d a = com.bykv.vk.openvk.preload.a.b.d.a;
    public s b = s.DEFAULT;
    public e c = d.IDENTITY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<Type, h<?>> f541d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<u> f542e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<u> f543f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f544g = false;
    public int i = 2;
    public int j = 2;
    public boolean k = false;
    public boolean l = false;
    public boolean m = true;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;

    public final g a(Type type, Object obj) {
        com.bykv.vk.openvk.preload.a.b.a.a(true);
        this.f542e.add(com.bykv.vk.openvk.preload.a.b.a.n.a(com.bykv.vk.openvk.preload.a.c.a.a(type), (t) obj));
        return this;
    }
}
