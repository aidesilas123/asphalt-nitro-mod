package com.bykv.vk.openvk.preload.geckox.a.a;

import android.annotation.SuppressLint;
import java.io.File;
import java.util.List;

/* JADX INFO: compiled from: CachePolicy.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"CI_StaticFieldLeak"})
public abstract class b {
    public static final b a = new d();
    public static final b b = new f();
    public static final b c = new e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected a f562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected File f563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected List<String> f564f;

    public abstract void a();

    public void a(a aVar, File file, List<String> list) {
        this.f562d = aVar;
        this.f563e = file;
        this.f564f = list;
    }
}
