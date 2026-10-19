package com.bytedance.sdk.component.d.c.a;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

/* JADX INFO: compiled from: CacheConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements com.bytedance.sdk.component.d.b, Cloneable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile com.bytedance.sdk.component.d.b f934f;
    private long a;
    private int b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f936e;

    public a(int i, long j, File file) {
        this(i, j, i != 0, j != 0, file);
    }

    public a(int i, long j, boolean z, boolean z2, File file) {
        this.a = j;
        this.b = i;
        this.c = z;
        this.f935d = z2;
        this.f936e = file;
    }

    public static com.bytedance.sdk.component.d.b a(File file) {
        int iMin;
        long jMin;
        file.mkdirs();
        if (f934f == null) {
            iMin = Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 31457280);
            jMin = Math.min(h() / 16, 41943040L);
        } else {
            iMin = Math.min(f934f.b() / 2, 31457280);
            jMin = Math.min(f934f.a() / 2, 41943040L);
        }
        return new a(Math.max(iMin, 26214400), Math.max(jMin, 20971520L), file);
    }

    public static void a(Context context, com.bytedance.sdk.component.d.b bVar) {
        if (bVar != null) {
            f934f = bVar;
        } else {
            f934f = a(new File(context.getCacheDir(), "image"));
        }
    }

    public static com.bytedance.sdk.component.d.b g() {
        return f934f;
    }

    private static long h() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    @Override // com.bytedance.sdk.component.d.b
    public long a() {
        return this.a;
    }

    @Override // com.bytedance.sdk.component.d.b
    public int b() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.d.b
    public boolean c() {
        return this.c;
    }

    @Override // com.bytedance.sdk.component.d.b
    public boolean d() {
        return this.f935d;
    }

    @Override // com.bytedance.sdk.component.d.b
    public File e() {
        return this.f936e;
    }

    @Override // com.bytedance.sdk.component.d.b
    public boolean f() {
        return true;
    }
}
