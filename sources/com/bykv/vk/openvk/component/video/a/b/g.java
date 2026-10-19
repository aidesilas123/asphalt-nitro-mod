package com.bykv.vk.openvk.component.video.a.b;

import android.os.SystemClock;
import android.util.Log;
import com.bykv.vk.openvk.component.video.a.b.b;
import com.bykv.vk.openvk.component.video.a.b.h;
import com.bykv.vk.openvk.component.video.a.b.i;
import com.bykv.vk.openvk.component.video.a.b.l;
import com.json.mediationsdk.config.VersionInfo;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;

/* JADX INFO: compiled from: ProxyTask.java */
/* JADX INFO: loaded from: classes.dex */
class g extends com.bykv.vk.openvk.component.video.a.b.a {
    private final Socket m;
    private final c n;
    private final d o;
    private volatile com.bykv.vk.openvk.component.video.a.b.b p;
    private volatile boolean q;

    /* JADX INFO: compiled from: ProxyTask.java */
    static final class a {
        com.bykv.vk.openvk.component.video.a.b.a.a a;
        com.bykv.vk.openvk.component.video.a.b.b.c b;
        Socket c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c f447d;

        a() {
        }

        a a(com.bykv.vk.openvk.component.video.a.b.b.c cVar) {
            if (cVar == null) {
                throw new IllegalArgumentException("db == null");
            }
            this.b = cVar;
            return this;
        }

        a a(c cVar) {
            this.f447d = cVar;
            return this;
        }

        a a(Socket socket) {
            if (socket == null) {
                throw new IllegalArgumentException("socket == null");
            }
            this.c = socket;
            return this;
        }

        g a() {
            if (this.b == null || this.c == null) {
                throw new IllegalArgumentException();
            }
            return new g(this);
        }
    }

    /* JADX INFO: compiled from: ProxyTask.java */
    private static class b {
        private final OutputStream a;
        private int b;
        private boolean c;

        b(OutputStream outputStream, int i) {
            this.a = outputStream;
            this.b = i;
        }

        void a(byte[] bArr, int i, int i2) throws com.bykv.vk.openvk.component.video.a.b.c.d {
            if (this.c) {
                return;
            }
            try {
                this.a.write(bArr, i, i2);
                this.c = true;
            } catch (IOException e2) {
                throw new com.bykv.vk.openvk.component.video.a.b.c.d(e2);
            }
        }

        boolean a() {
            return this.c;
        }

        int b() {
            return this.b;
        }

        void b(byte[] bArr, int i, int i2) throws com.bykv.vk.openvk.component.video.a.b.c.d {
            try {
                this.a.write(bArr, i, i2);
                this.b += i2;
            } catch (IOException e2) {
                throw new com.bykv.vk.openvk.component.video.a.b.c.d(e2);
            }
        }
    }

    /* JADX INFO: compiled from: ProxyTask.java */
    public interface c {
        void a(g gVar);

        void b(g gVar);
    }

    g(a aVar) {
        super(aVar.a, aVar.b);
        this.q = true;
        this.m = aVar.c;
        this.n = aVar.f447d;
        this.o = d.c();
    }

    private void a(com.bykv.vk.openvk.component.video.a.b.b.a aVar, File file, b bVar, l.a aVar2) throws Throwable {
        final com.bytedance.sdk.component.g.g gVar;
        com.bykv.vk.openvk.component.video.a.b.b bVar2;
        if (!bVar.a()) {
            byte[] bArrA = a(aVar, bVar, aVar2);
            e();
            if (bArrA == null) {
                return;
            } else {
                bVar.a(bArrA, 0, bArrA.length);
            }
        }
        h hVar = null;
        if (aVar == null && (aVar = this.b.a(this.h, this.i.c.a)) == null) {
            if (e.c) {
                Log.e("TAG_PROXY_ProxyTask", "failed to get video header info from db");
            }
            a((com.bykv.vk.openvk.component.video.a.b.b.a) null, bVar, aVar2);
            aVar = this.b.a(this.h, this.i.c.a);
            if (aVar == null) {
                throw new com.bykv.vk.openvk.component.video.a.b.c.c("failed to get header, rawKey: " + this.f410g + ", url: " + aVar2);
            }
        }
        if (file.length() >= aVar.c || !((bVar2 = this.p) == null || bVar2.b() || bVar2.d())) {
            gVar = null;
        } else {
            com.bykv.vk.openvk.component.video.a.b.b bVarA = new b.a().a(this.a).a(this.b).a(this.f410g).b(this.h).a(new l(aVar2.a)).a(this.f409f).a(this.i).a(new b.InterfaceC0087b() { // from class: com.bykv.vk.openvk.component.video.a.b.g.1
                @Override // com.bykv.vk.openvk.component.video.a.b.b.InterfaceC0087b
                public void a(com.bykv.vk.openvk.component.video.a.b.b bVar3) throws Throwable {
                    g.this.c.addAndGet(bVar3.c.get());
                    g.this.f407d.addAndGet(bVar3.f407d.get());
                    synchronized (bVar3.m) {
                        bVar3.m.notifyAll();
                    }
                    if (bVar3.d()) {
                        g.this.o.a(g.this.g(), null);
                    }
                }
            }).a();
            this.p = bVarA;
            gVar = new com.bytedance.sdk.component.g.g(bVarA, null, 10, 1);
            com.bytedance.sdk.component.g.f.b(new com.bytedance.sdk.component.g.h("processCacheNetWorkConcurrent") { // from class: com.bykv.vk.openvk.component.video.a.b.g.2
                @Override // java.lang.Runnable
                public void run() {
                    gVar.run();
                }
            });
            if (e.c) {
                Log.e("TAG_PROXY_ProxyTask", "fire download in process cache task");
            }
        }
        byte[] bArr = new byte[8192];
        try {
            h hVar2 = new h(file, "r");
            try {
                hVar2.a(bVar.b());
                int iMin = this.i.c.f449e > 0 ? Math.min(aVar.c, this.i.c.f449e) : aVar.c;
                while (bVar.b() < iMin) {
                    e();
                    int iA = hVar2.a(bArr);
                    if (iA <= 0) {
                        com.bykv.vk.openvk.component.video.a.b.b bVar3 = this.p;
                        if (bVar3 != null) {
                            com.bykv.vk.openvk.component.video.a.b.c.b bVarI = bVar3.i();
                            if (bVarI != null) {
                                throw bVarI;
                            }
                            h.a aVarH = bVar3.h();
                            if (aVarH != null) {
                                throw aVarH;
                            }
                        }
                        if (bVar3 != null && !bVar3.b() && !bVar3.d()) {
                            e();
                            synchronized (bVar3.m) {
                                try {
                                    bVar3.m.wait(1000L);
                                } catch (InterruptedException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        }
                        if (e.c) {
                            Log.e("TAG_PROXY_ProxyTask", "download task has finished!!!");
                        }
                        throw new com.bykv.vk.openvk.component.video.a.b.c.c("illegal state download task has finished, rawKey: " + this.f410g + ", url: " + aVar2);
                    }
                    bVar.b(bArr, 0, iA);
                    e();
                }
                if (e.c) {
                    Log.i("TAG_PROXY_ProxyTask", "read cache file complete: " + bVar.b() + ", " + iMin);
                }
                c();
                hVar2.a();
                if (gVar != null) {
                    try {
                        gVar.get();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                hVar = hVar2;
                if (hVar != null) {
                    hVar.a();
                }
                if (gVar != null) {
                    try {
                        gVar.get();
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private void a(b bVar, l.a aVar) throws Throwable {
        if (VersionInfo.GIT_BRANCH.equalsIgnoreCase(this.i.a.a)) {
            b(bVar, aVar);
        } else {
            c(bVar, aVar);
        }
    }

    private void a(boolean z, int i, int i2, int i3, int i4) {
    }

    private boolean a(b bVar) throws Throwable {
        while (this.j.a()) {
            e();
            l.a aVarB = this.j.b();
            try {
                a(bVar, aVarB);
                return true;
            } catch (com.bykv.vk.openvk.component.video.a.b.c.b e2) {
                if (e.c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
                }
                return false;
            } catch (com.bykv.vk.openvk.component.video.a.b.c.c e3) {
                aVarB.a();
                a(Boolean.valueOf(g()), this.f410g, e3);
            } catch (com.bykv.vk.openvk.component.video.a.b.c.d e4) {
                if (e.c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e4));
                }
                return true;
            } catch (h.a e5) {
                if (e.c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e5));
                }
                this.q = false;
                a(Boolean.valueOf(g()), this.f410g, e5);
            } catch (IOException e6) {
                if (e6 instanceof SocketTimeoutException) {
                    aVarB.b();
                }
                if (!b()) {
                    a(Boolean.valueOf(g()), this.f410g, e6);
                } else if (e.c) {
                    if ("Canceled".equalsIgnoreCase(e6.getMessage())) {
                        Log.w("TAG_PROXY_ProxyTask", "okhttp call canceled");
                    } else {
                        Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e6));
                    }
                }
            } catch (Exception e7) {
                if (e.c) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e7));
                }
            }
        }
        return false;
    }

    private byte[] a(com.bykv.vk.openvk.component.video.a.b.b.a aVar, b bVar, l.a aVar2) throws IOException {
        if (aVar != null) {
            if (e.c) {
                Log.i("TAG_PROXY_ProxyTask", "get header from db");
            }
            return com.bykv.vk.openvk.component.video.a.c.a.a(aVar, bVar.b()).getBytes(com.bykv.vk.openvk.component.video.a.c.a.a);
        }
        com.bykv.vk.openvk.component.video.a.b.e.a aVarA = a(aVar2, 0, -1, VersionInfo.GIT_BRANCH);
        if (aVarA == null) {
            return null;
        }
        try {
            String strA = com.bykv.vk.openvk.component.video.a.c.a.a(aVarA, false, false);
            if (strA == null) {
                com.bykv.vk.openvk.component.video.a.b.b.a aVarA2 = com.bykv.vk.openvk.component.video.a.c.a.a(aVarA, this.b, this.h, this.i.c.a);
                if (e.c) {
                    Log.w("TAG_PROXY_ProxyTask", "get header from network");
                }
                return com.bykv.vk.openvk.component.video.a.c.a.a(aVarA2, bVar.b()).getBytes(com.bykv.vk.openvk.component.video.a.c.a.a);
            }
            throw new com.bykv.vk.openvk.component.video.a.b.c.c(strA + ", rawKey: " + this.f410g + ", url: " + aVar2);
        } finally {
            com.bykv.vk.openvk.component.video.a.c.a.a(aVarA.d());
        }
    }

    private void b(b bVar, l.a aVar) throws IOException, com.bykv.vk.openvk.component.video.a.b.c.d {
        byte[] bArrA = a(this.b.a(this.h, this.i.c.a), bVar, aVar);
        if (bArrA == null) {
            return;
        }
        bVar.a(bArrA, 0, bArrA.length);
    }

    private void c(b bVar, l.a aVar) throws Throwable {
        if (this.q) {
            File fileC = this.a.c(this.h);
            long length = fileC.length();
            com.bykv.vk.openvk.component.video.a.b.b.a aVarA = this.b.a(this.h, this.i.c.a);
            int iB = bVar.b();
            long j = length - ((long) iB);
            int i = (int) j;
            int i2 = aVarA == null ? -1 : aVarA.c;
            if (length > bVar.b()) {
                if (e.c) {
                    Log.i("TAG_PROXY_ProxyTask", "cache hit, remainSize: " + j);
                }
                a(true, i, i2, (int) length, iB);
                a(aVarA, fileC, bVar, aVar);
                return;
            }
            a(false, i, i2, (int) length, iB);
        } else {
            a(false, 0, 0, 0, bVar.b());
        }
        d(bVar, aVar);
    }

    private void d(b bVar, l.a aVar) throws Throwable {
        String strA;
        h hVar;
        i();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int iB = bVar.b();
        com.bykv.vk.openvk.component.video.a.b.e.a aVarA = a(aVar, iB, this.i.c.f449e, "GET");
        if (aVarA == null) {
            return;
        }
        h hVar2 = null;
        int i = 0;
        try {
            strA = com.bykv.vk.openvk.component.video.a.c.a.a(aVarA, false, true);
        } catch (Throwable th) {
            th = th;
        }
        if (strA != null) {
            throw new com.bykv.vk.openvk.component.video.a.b.c.c(strA + ", rawKey: " + this.f410g + ", url: " + aVar);
        }
        com.bykv.vk.openvk.component.video.a.b.b.a aVarA2 = this.b.a(this.h, f());
        int iA = com.bykv.vk.openvk.component.video.a.c.a.a(aVarA);
        if (aVarA2 != null && aVarA2.c != iA) {
            if (e.c) {
                Log.e("TAG_PROXY_ProxyTask", "Content-Length not match, old: " + aVarA2.c + ", " + iA + ", key: " + this.h);
            }
            throw new com.bykv.vk.openvk.component.video.a.b.c.b("Content-Length not match, old length: " + aVarA2.c + ", new length: " + iA + ", rawKey: " + this.f410g + ", currentUrl: " + aVar + ", previousInfo: " + aVarA2.f420e);
        }
        if (!bVar.a()) {
            String strA2 = com.bykv.vk.openvk.component.video.a.c.a.a(aVarA, iB);
            e();
            byte[] bytes = strA2.getBytes(com.bykv.vk.openvk.component.video.a.c.a.a);
            bVar.a(bytes, 0, bytes.length);
        }
        e();
        File fileD = this.a.d(this.h);
        if (!this.q || fileD == null || fileD.length() < bVar.b()) {
            if (e.c) {
                Log.w("TAG_PROXY_ProxyTask", "can't write to cache file in network task, cache file size: " + fileD.length() + ", from: " + bVar.b());
            }
            hVar = null;
        } else {
            com.bykv.vk.openvk.component.video.a.c.a.a(aVarA, this.b, this.h, this.i.c.a);
            try {
                hVar = new h(fileD, "rwd");
            } catch (h.a e2) {
                e = e2;
            }
            try {
                try {
                    hVar.a(bVar.b());
                } catch (h.a e3) {
                    e = e3;
                    e.printStackTrace();
                    hVar = null;
                }
                if (e.c) {
                    Log.i("TAG_PROXY_ProxyTask", "can write to cache file in network task, cache file size: " + fileD.length() + ", from: " + bVar.b());
                }
            } catch (Throwable th2) {
                th = th2;
                hVar2 = hVar;
            }
        }
        com.bykv.vk.openvk.component.video.a.b.b.a aVarA3 = this.b.a(this.h, f());
        int i2 = aVarA3 == null ? 0 : aVarA3.c;
        byte[] bArr = new byte[8192];
        InputStream inputStreamD = aVarA.d();
        int i3 = 0;
        while (true) {
            try {
                int i4 = inputStreamD.read(bArr);
                if (i4 < 0) {
                    break;
                }
                e();
                if (i4 > 0) {
                    bVar.b(bArr, 0, i4);
                    i3 += i4;
                    if (hVar != null) {
                        try {
                            hVar.a(bArr, 0, i4);
                        } catch (Throwable th3) {
                            hVar.a();
                            try {
                                if (e.c) {
                                    Log.e("TAG_PROXY_ProxyTask", "append to cache file error in network task!!! " + Log.getStackTraceString(th3));
                                }
                                hVar = null;
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        }
                    }
                    a(i2, bVar.b());
                }
                e();
            } catch (Throwable th5) {
                th = th5;
                hVar2 = hVar;
            }
            th = th5;
            hVar2 = hVar;
            i = i3;
            com.bykv.vk.openvk.component.video.a.c.a.a(aVarA.d());
            if (hVar2 != null) {
                hVar2.a();
            }
            this.c.addAndGet(i);
            this.f407d.addAndGet(SystemClock.elapsedRealtime() - jElapsedRealtime);
            throw th;
        }
        if (e.c) {
            Log.i("TAG_PROXY_ProxyTask", "read from net complete!");
        }
        c();
        com.bykv.vk.openvk.component.video.a.c.a.a(aVarA.d());
        if (hVar != null) {
            hVar.a();
        }
        this.c.addAndGet(i3);
        this.f407d.addAndGet(SystemClock.elapsedRealtime() - jElapsedRealtime);
    }

    private b h() {
        try {
            this.i = i.a(this.m.getInputStream());
            OutputStream outputStream = this.m.getOutputStream();
            com.bykv.vk.openvk.component.video.a.b.a.a aVar = this.i.c.a == 1 ? e.a : e.b;
            if (aVar == null) {
                if (e.c) {
                    Log.e("TAG_PROXY_ProxyTask", "cache is null");
                }
                return null;
            }
            this.a = aVar;
            this.f410g = this.i.c.b;
            this.h = this.i.c.c;
            this.j = new l(this.i.c.f451g);
            this.f409f = this.i.b;
            if (e.c) {
                Log.i("TAG_PROXY_ProxyTask", "request from MediaPlayer:    " + this.i.toString());
            }
            return new b(outputStream, this.i.c.f448d);
        } catch (i.d e2) {
            com.bykv.vk.openvk.component.video.a.c.a.a(this.m);
            if (e.c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
            a(this.a == null ? null : Boolean.valueOf(g()), this.f410g, e2);
            return null;
        } catch (IOException e3) {
            com.bykv.vk.openvk.component.video.a.c.a.a(this.m);
            if (e.c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e3));
            }
            a(this.a == null ? null : Boolean.valueOf(g()), this.f410g, e3);
            return null;
        }
    }

    private void i() {
        com.bykv.vk.openvk.component.video.a.b.b bVar = this.p;
        this.p = null;
        if (bVar != null) {
            bVar.a();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.a
    public void a() {
        super.a();
        i();
    }

    @Override // java.lang.Runnable
    public void run() {
        com.bykv.vk.openvk.component.video.a.b.b.a aVarA;
        b bVarH = h();
        if (bVarH == null) {
            return;
        }
        c cVar = this.n;
        if (cVar != null) {
            cVar.a(this);
        }
        this.a.a(this.h);
        if (e.h != 0 && ((aVarA = this.b.a(this.h, this.i.c.a)) == null || this.a.c(this.h).length() < aVarA.c)) {
            this.o.a(g(), this.h);
        }
        try {
            a(bVarH);
        } catch (com.bykv.vk.openvk.component.video.a.b.c.a e2) {
            if (e.c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
        } catch (Throwable th) {
            if (e.c) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(th));
            }
        }
        this.a.b(this.h);
        this.o.a(g(), null);
        a();
        com.bykv.vk.openvk.component.video.a.c.a.a(this.m);
        c cVar2 = this.n;
        if (cVar2 != null) {
            cVar2.b(this);
        }
    }
}
