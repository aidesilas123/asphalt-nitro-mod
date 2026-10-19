package com.bykv.vk.openvk.component.video.a.a.b;

import android.content.Context;
import com.bykv.vk.openvk.component.video.api.e.a;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.b.a.m;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: ReallyVideoPreload.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    private Context a;
    private com.bykv.vk.openvk.component.video.api.c.c b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f404e;
    private volatile boolean c = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<a.InterfaceC0093a> f405f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f406g = false;

    public b(Context context, com.bykv.vk.openvk.component.video.api.c.c cVar) {
        this.f403d = null;
        this.f404e = null;
        this.a = context;
        this.b = cVar;
        this.f403d = com.bykv.vk.openvk.component.video.a.e.b.b(cVar.b(), cVar.n());
        this.f404e = com.bykv.vk.openvk.component.video.a.e.b.c(cVar.b(), cVar.n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i) {
        synchronized (a.InterfaceC0093a.class) {
            for (a.InterfaceC0093a interfaceC0093a : this.f405f) {
                if (interfaceC0093a != null) {
                    interfaceC0093a.a(cVar, i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i, String str) {
        synchronized (a.InterfaceC0093a.class) {
            for (a.InterfaceC0093a interfaceC0093a : this.f405f) {
                if (interfaceC0093a != null) {
                    interfaceC0093a.a(cVar, i, str);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.bykv.vk.openvk.component.video.api.c.c cVar, int i) {
        synchronized (a.InterfaceC0093a.class) {
            for (a.InterfaceC0093a interfaceC0093a : this.f405f) {
                if (interfaceC0093a != null) {
                    interfaceC0093a.b(cVar, i);
                }
            }
        }
    }

    private boolean b() {
        if (this.f404e.exists()) {
            return true;
        }
        if (this.b.j()) {
            return false;
        }
        if (this.f403d.length() >= this.b.c()) {
            return true;
        }
        return this.b.a() > 0 && this.f403d.length() >= ((long) this.b.a());
    }

    private void c() {
        k.a aVarB = com.bykv.vk.openvk.component.video.api.c.d() != null ? com.bykv.vk.openvk.component.video.api.c.d().b() : new k.a("v_preload");
        long jP = this.b.p();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        aVarB.a(jP, timeUnit).b(this.b.q(), timeUnit).c(this.b.r(), timeUnit);
        k kVarA = aVarB.a();
        m.a aVar = new m.a();
        final long length = this.f403d.length();
        int iC = this.b.c();
        boolean zJ = this.b.j();
        int iA = this.b.a();
        if (iA > 0) {
            if (iA >= this.b.i()) {
                zJ = true;
            } else {
                iC = iA;
            }
        }
        if (zJ) {
            aVar.a("RANGE", "bytes=" + length + "-").a(this.b.m()).a().b();
        } else {
            aVar.a("RANGE", "bytes=" + length + "-" + iC).a(this.b.m()).a().b();
        }
        kVarA.a(aVar.b()).a(new com.bytedance.sdk.component.b.a.c() { // from class: com.bykv.vk.openvk.component.video.a.a.b.b.1
            /* JADX WARN: Removed duplicated region for block: B:80:0x024e A[Catch: all -> 0x0298, TryCatch #4 {all -> 0x0298, blocks: (B:78:0x023e, B:80:0x024e, B:81:0x0252), top: B:95:0x023e }] */
            @Override // com.bytedance.sdk.component.b.a.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void a(com.bytedance.sdk.component.b.a.b r23, com.bytedance.sdk.component.b.a.o r24) throws java.io.IOException {
                /*
                    Method dump skipped, instruction units count: 736
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.a.a.b.b.AnonymousClass1.a(com.bytedance.sdk.component.b.a.b, com.bytedance.sdk.component.b.a.o):void");
            }

            @Override // com.bytedance.sdk.component.b.a.c
            public void a(com.bytedance.sdk.component.b.a.b bVar, IOException iOException) {
                b bVar2 = b.this;
                bVar2.a(bVar2.b, 601, iOException.getMessage());
                c.a(b.this.b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            this.f404e.delete();
            this.f403d.delete();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            if (this.f403d.renameTo(this.f404e)) {
                return;
            }
            throw new IOException("Error renaming file " + this.f403d + " to " + this.f404e + " for completion!");
        } finally {
        }
    }

    public com.bykv.vk.openvk.component.video.api.c.c a() {
        return this.b;
    }

    public void a(a.InterfaceC0093a interfaceC0093a) {
        if (this.f406g) {
            synchronized (a.InterfaceC0093a.class) {
                this.f405f.add(interfaceC0093a);
            }
            return;
        }
        this.f405f.add(interfaceC0093a);
        if (!b()) {
            this.f406g = true;
            this.b.g(0);
            c();
        } else {
            com.bykv.vk.openvk.component.video.api.f.c.b("VideoPreload", "Cache file is exist");
            this.b.g(1);
            a(this.b, 200);
            c.a(this.b);
        }
    }

    public void a(boolean z) {
        this.c = z;
    }
}
