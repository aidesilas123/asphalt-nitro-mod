package com.bykv.vk.openvk.component.video.a.b.a;

import android.content.Context;
import com.bykv.vk.openvk.component.video.a.b.d;
import com.bykv.vk.openvk.component.video.a.b.e;
import com.bytedance.sdk.component.g.h;
import java.io.File;

/* JADX INFO: compiled from: DiskCache.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends a {
    public final File a;

    public void a() {
        com.bykv.vk.openvk.component.video.a.c.a.a(new h("clear") { // from class: com.bykv.vk.openvk.component.video.a.b.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.b();
            }
        });
    }

    public void b() {
        d.c().d();
        Context contextA = e.a();
        if (contextA != null) {
            com.bykv.vk.openvk.component.video.a.b.b.c.a(contextA).a(1);
        }
        for (File file : this.a.listFiles()) {
            try {
                file.delete();
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.a.a
    public File c(String str) {
        return e(str);
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.a.a
    public File d(String str) {
        return e(str);
    }

    File e(String str) {
        return new File(this.a, str);
    }
}
