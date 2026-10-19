package com.bykv.vk.openvk.component.video.a.b;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.a.b.h;
import com.bykv.vk.openvk.component.video.a.b.i;
import com.bykv.vk.openvk.component.video.a.b.l;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.List;

/* JADX INFO: compiled from: DownloadTask.java */
/* JADX INFO: loaded from: classes.dex */
class b extends com.bykv.vk.openvk.component.video.a.b.a {
    final Object m;
    final Object n;
    private final int o;
    private final InterfaceC0087b p;
    private volatile h.a q;
    private volatile com.bykv.vk.openvk.component.video.a.b.c.b r;

    /* JADX INFO: compiled from: DownloadTask.java */
    static final class a {
        String a;
        String b;
        l c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.bykv.vk.openvk.component.video.a.b.a.a f415d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        com.bykv.vk.openvk.component.video.a.b.b.c f416e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        List<i.b> f417f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f418g;
        i h;
        InterfaceC0087b i;
        Object j;

        a() {
        }

        a a(int i) {
            this.f418g = i;
            return this;
        }

        a a(com.bykv.vk.openvk.component.video.a.b.a.a aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("cache == null");
            }
            this.f415d = aVar;
            return this;
        }

        a a(InterfaceC0087b interfaceC0087b) {
            this.i = interfaceC0087b;
            return this;
        }

        a a(com.bykv.vk.openvk.component.video.a.b.b.c cVar) {
            if (cVar == null) {
                throw new IllegalArgumentException("db == null");
            }
            this.f416e = cVar;
            return this;
        }

        a a(i iVar) {
            this.h = iVar;
            return this;
        }

        a a(l lVar) {
            if (lVar == null) {
                throw new IllegalArgumentException("urls is empty");
            }
            this.c = lVar;
            return this;
        }

        a a(Object obj) {
            this.j = obj;
            return this;
        }

        a a(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("rawKey == null");
            }
            this.a = str;
            return this;
        }

        a a(List<i.b> list) {
            this.f417f = list;
            return this;
        }

        b a() {
            if (this.f415d == null || this.f416e == null || TextUtils.isEmpty(this.a) || TextUtils.isEmpty(this.b) || this.c == null) {
                throw new IllegalArgumentException();
            }
            return new b(this);
        }

        a b(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("key == null");
            }
            this.b = str;
            return this;
        }
    }

    /* JADX INFO: renamed from: com.bykv.vk.openvk.component.video.a.b.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DownloadTask.java */
    public interface InterfaceC0087b {
        void a(b bVar);
    }

    b(a aVar) {
        super(aVar.f415d, aVar.f416e);
        this.o = aVar.f418g;
        this.p = aVar.i;
        this.m = this;
        this.f410g = aVar.a;
        this.h = aVar.b;
        this.f409f = aVar.f417f;
        this.j = aVar.c;
        this.i = aVar.h;
        this.n = aVar.j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x01c6, code lost:
    
        c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cb, code lost:
    
        if (com.bykv.vk.openvk.component.video.a.b.e.c == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01cd, code lost:
    
        android.util.Log.i("TAG_PROXY_DownloadTask", "download succeed, no need to cancel call");
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01d4, code lost:
    
        com.bykv.vk.openvk.component.video.a.c.a.a(r6.d());
        r4.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01de, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(com.bykv.vk.openvk.component.video.a.b.l.a r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 552
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.a.b.b.a(com.bykv.vk.openvk.component.video.a.b.l$a):void");
    }

    private boolean j() throws com.bykv.vk.openvk.component.video.a.b.c.a {
        while (this.j.a()) {
            e();
            l.a aVarB = this.j.b();
            try {
                a(aVarB);
                return true;
            } catch (com.bykv.vk.openvk.component.video.a.b.c.b e2) {
                this.r = e2;
                return false;
            } catch (com.bykv.vk.openvk.component.video.a.b.c.c e3) {
                aVarB.a();
                a(Boolean.valueOf(g()), this.f410g, e3);
            } catch (h.a e4) {
                this.q = e4;
                a(Boolean.valueOf(g()), this.f410g, e4);
                return false;
            } catch (IOException e5) {
                if (e5 instanceof SocketTimeoutException) {
                    aVarB.b();
                }
                if (!b()) {
                    a(Boolean.valueOf(g()), this.f410g, e5);
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    h.a h() {
        return this.q;
    }

    com.bykv.vk.openvk.component.video.a.b.c.b i() {
        return this.r;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a(this.h);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            j();
        } catch (Throwable unused) {
        }
        this.f407d.set(SystemClock.elapsedRealtime() - jElapsedRealtime);
        this.a.b(this.h);
        InterfaceC0087b interfaceC0087b = this.p;
        if (interfaceC0087b != null) {
            interfaceC0087b.a(this);
        }
    }
}
