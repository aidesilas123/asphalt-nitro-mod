package com.bykv.vk.openvk.component.video.a.b;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.openvk.component.video.a.b.g;
import com.facebook.appevents.UserDataStore;
import com.facebook.internal.security.CertificateUtil;
import com.json.o2;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: ProxyServer.java */
/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile f f437d;
    private volatile ServerSocket a;
    private volatile int b;
    private final AtomicInteger c = new AtomicInteger(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.component.video.a.b.b.c f438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.component.video.a.b.a.c f439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.component.video.a.b.a.b f440g;
    private final SparseArray<Set<g>> h;
    private final g.c i;
    private volatile c j;
    private volatile c k;
    private final Runnable l;
    private final AtomicBoolean m;

    /* JADX INFO: compiled from: ProxyServer.java */
    private static final class a implements Callable<Boolean> {
        private final String a;
        private final int b;

        a(String str, int i) {
            this.a = str;
            this.b = i;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() {
            Socket socket;
            Throwable th;
            try {
                com.bykv.vk.openvk.component.video.api.f.c.b("ProxyServer", "call: ");
                socket = new Socket(this.a, this.b);
                try {
                    socket.setSoTimeout(2000);
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write("Ping\n".getBytes(com.bykv.vk.openvk.component.video.a.c.a.a));
                    outputStream.flush();
                    if ("OK".equals(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine())) {
                        return Boolean.TRUE;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.printStackTrace();
                        com.bykv.vk.openvk.component.video.api.f.c.b("ProxyServer", "call: " + th.getMessage());
                        f.b("ping error", Log.getStackTraceString(th));
                    } finally {
                        com.bykv.vk.openvk.component.video.a.c.a.a(socket);
                    }
                }
            } catch (Throwable th3) {
                socket = null;
                th = th3;
            }
            com.bykv.vk.openvk.component.video.a.c.a.a(socket);
            return Boolean.FALSE;
        }
    }

    private f() {
        SparseArray<Set<g>> sparseArray = new SparseArray<>(2);
        this.h = sparseArray;
        this.i = new g.c() { // from class: com.bykv.vk.openvk.component.video.a.b.f.1
            @Override // com.bykv.vk.openvk.component.video.a.b.g.c
            public void a(g gVar) {
                synchronized (f.this.h) {
                    Set set = (Set) f.this.h.get(gVar.f());
                    if (set != null) {
                        set.add(gVar);
                    }
                }
            }

            @Override // com.bykv.vk.openvk.component.video.a.b.g.c
            public void b(g gVar) {
                if (e.c) {
                    Log.d("ProxyServer", "afterExecute, ProxyTask: " + gVar);
                }
                int iF = gVar.f();
                synchronized (f.this.h) {
                    Set set = (Set) f.this.h.get(iF);
                    if (set != null) {
                        set.remove(gVar);
                    }
                }
            }
        };
        this.l = new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.b.f.2
            /* JADX WARN: Removed duplicated region for block: B:33:0x010f  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    Method dump skipped, instruction units count: 326
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.a.b.f.AnonymousClass2.run():void");
            }
        };
        this.m = new AtomicBoolean();
        sparseArray.put(0, new HashSet());
        sparseArray.put(1, new HashSet());
    }

    public static f a() {
        if (f437d == null) {
            synchronized (f.class) {
                if (f437d == null) {
                    f437d = new f();
                }
            }
        }
        return f437d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String str2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.c.compareAndSet(1, 2) || this.c.compareAndSet(0, 2)) {
            com.bykv.vk.openvk.component.video.a.c.a.a(this.a);
            f();
        }
    }

    private void f() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.h) {
            int size = this.h.size();
            for (int i = 0; i < size; i++) {
                SparseArray<Set<g>> sparseArray = this.h;
                Set<g> set = sparseArray.get(sparseArray.keyAt(i));
                if (set != null) {
                    arrayList.addAll(set);
                    set.clear();
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((g) it.next()).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean g() {
        com.bytedance.sdk.component.g.g gVar = new com.bytedance.sdk.component.g.g(new a(i(), this.b), 5, 1);
        com.bytedance.sdk.component.g.f.c().submit(gVar);
        h();
        try {
            if (((Boolean) gVar.get()).booleanValue()) {
                com.bykv.vk.openvk.component.video.api.f.c.b("ProxyServer", "pingTest: ");
                if (e.c) {
                    com.bykv.vk.openvk.component.video.api.f.c.b("ProxyServer", "Ping OK!");
                }
                return true;
            }
            Log.e("ProxyServer", "Ping error");
            b("ping error", "");
            e();
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            b("ping error", Log.getStackTraceString(th));
            e();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    private void h() {
        ?? r0;
        ?? Accept = 0;
        Accept = 0;
        try {
            try {
                Accept = this.a.accept();
                Accept.setSoTimeout(2000);
                boolean zEquals = "Ping".equals(new BufferedReader(new InputStreamReader(Accept.getInputStream())).readLine());
                r0 = Accept;
                if (zEquals) {
                    OutputStream outputStream = Accept.getOutputStream();
                    outputStream.write("OK\n".getBytes(com.bykv.vk.openvk.component.video.a.c.a.a));
                    outputStream.flush();
                    r0 = Accept;
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                b("ping error", Log.getStackTraceString(e2));
                r0 = Accept;
            }
            com.bykv.vk.openvk.component.video.a.c.a.a((Socket) r0);
            Accept = "ProxyServer";
            com.bykv.vk.openvk.component.video.api.f.c.b("ProxyServer", "answerPing: ");
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.a.c.a.a((Socket) Accept);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String i() {
        return new String(Base64.decode("MTI3LjAuMC4x".getBytes(), 0));
    }

    public String a(boolean z, boolean z2, String str, String... strArr) {
        String str2;
        if (strArr == null || strArr.length == 0) {
            b("url", "url is empty");
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            b("key", "key is empty");
            return strArr[0];
        }
        if (this.f438e == null) {
            b(UserDataStore.DATE_OF_BIRTH, "VideoProxyDB is null");
            return strArr[0];
        }
        if ((z ? this.f440g : this.f439f) == null) {
            b(WebPreferenceConstants.CLEAR_CACHE_EXIT, "Cache is null");
            return strArr[0];
        }
        int i = this.c.get();
        if (i != 1) {
            b("state", "ProxyServer is not running, " + i);
            return strArr[0];
        }
        List<String> listA = com.bykv.vk.openvk.component.video.a.c.a.a(strArr);
        if (listA == null) {
            b("url", "url not start with http/https");
            return strArr[0];
        }
        String strA = i.a(str, z2 ? str : com.bykv.vk.openvk.component.video.api.f.b.a(str), listA);
        if (strA == null) {
            b("url", "combine proxy url error");
            return strArr[0];
        }
        if (z) {
            str2 = "https://" + i() + CertificateUtil.DELIMITER + this.b + "?f=1" + o2.i.c + strA;
        } else {
            str2 = "https://" + i() + CertificateUtil.DELIMITER + this.b + "?" + strA;
        }
        return str2.replaceFirst("s", "");
    }

    void a(com.bykv.vk.openvk.component.video.a.b.a.c cVar) {
        this.f439f = cVar;
    }

    void a(com.bykv.vk.openvk.component.video.a.b.b.c cVar) {
        this.f438e = cVar;
    }

    boolean a(int i, String str) {
        if (str == null) {
            return false;
        }
        synchronized (this.h) {
            Set<g> set = this.h.get(i);
            if (set != null) {
                for (g gVar : set) {
                    if (gVar != null && str.equals(gVar.h)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    c b() {
        return this.j;
    }

    c c() {
        return this.k;
    }

    public void d() {
        if (this.m.compareAndSet(false, true)) {
            Thread thread = new Thread(this.l);
            thread.setName("csj_proxy_server");
            thread.start();
        }
    }
}
