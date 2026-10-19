package com.bytedance.sdk.openadsdk.b;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.gameloft.adsmanager.JavaUtils;
import com.google.android.gms.games.GamesStatusCodes;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: OpenAppSuccEvent.java */
/* JADX INFO: loaded from: classes2.dex */
public class l {
    private static volatile l a;
    private HandlerThread b;
    private final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f1236d = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f1237e = b.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Object> f1238f;

    /* JADX INFO: compiled from: OpenAppSuccEvent.java */
    private static class a implements Serializable, Runnable {
        public final AtomicInteger a = new AtomicInteger(0);
        public final AtomicBoolean b = new AtomicBoolean(false);
        public q c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f1239d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Map<String, Object> f1240e;

        public a(q qVar, String str, Map<String, Object> map) {
            this.c = qVar;
            this.f1239d = str;
            this.f1240e = map;
        }

        public static a a(q qVar, String str, Map<String, Object> map) {
            return new a(qVar, str, map);
        }

        public int a() {
            return this.a.get();
        }

        public a a(boolean z) {
            this.b.set(z);
            return this;
        }

        public void b() {
            this.a.incrementAndGet();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.c == null || TextUtils.isEmpty(this.f1239d)) {
                com.bytedance.sdk.component.utils.l.b("materialMeta or eventTag is null, pls check");
                return;
            }
            String str = this.b.get() ? "dpl_success" : "dpl_failed";
            if (this.f1240e == null) {
                this.f1240e = new HashMap();
            }
            q qVar = this.c;
            if (qVar != null && qVar.be() == 0) {
                Map<String, Object> map = this.f1240e;
                q qVar2 = this.c;
                map.put("auto_click", Boolean.valueOf((qVar2 == null || qVar2.c()) ? false : true));
            }
            this.f1240e.put("lifeCycleInit", Boolean.valueOf(com.bytedance.sdk.openadsdk.core.m.a().c()));
            c.a(this.c, this.f1239d, str, this.f1240e);
        }
    }

    /* JADX INFO: compiled from: OpenAppSuccEvent.java */
    private static class b {
        public int a = JavaUtils.Constants.NATIVE_HEIGHT_DP_300;
        public int b = GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED;

        private b() {
        }

        public static b a() {
            return new b();
        }
    }

    private l() {
        if (this.b == null) {
            HandlerThread handlerThread = new HandlerThread("OpenAppSuccEvent_HandlerThread", 10);
            this.b = handlerThread;
            handlerThread.start();
        }
        this.c = new Handler(this.b.getLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.b.l.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what != 100) {
                    return true;
                }
                a aVar = null;
                Object obj = message.obj;
                if (obj != null && (obj instanceof a)) {
                    aVar = (a) obj;
                }
                if (aVar == null) {
                    return true;
                }
                l.this.b(aVar);
                return true;
            }
        });
    }

    public static l a() {
        if (a == null) {
            synchronized (l.class) {
                if (a == null) {
                    a = new l();
                }
            }
        }
        return a;
    }

    private void a(a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.b();
        int iA = aVar.a();
        b bVar = this.f1237e;
        if (iA * bVar.a > bVar.b) {
            c(aVar.a(false));
            return;
        }
        Message messageObtainMessage = this.c.obtainMessage();
        messageObtainMessage.what = 100;
        messageObtainMessage.obj = aVar;
        this.c.sendMessageDelayed(messageObtainMessage, this.f1237e.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(a aVar) {
        if (aVar == null) {
            return;
        }
        boolean zD = com.bytedance.sdk.openadsdk.core.m.a().d();
        boolean zA = com.bytedance.sdk.openadsdk.core.m.a().a(true);
        if (!zD && zA) {
            a(aVar);
            return;
        }
        if (aVar.f1240e == null) {
            aVar.f1240e = new HashMap();
        }
        aVar.f1240e.put("is_background", Boolean.valueOf(zD));
        aVar.f1240e.put("has_focus", Boolean.valueOf(zA));
        c(aVar.a(true));
    }

    private void c(a aVar) {
        if (aVar == null) {
            return;
        }
        this.f1236d.execute(aVar);
    }

    public l a(Map<String, Object> map) {
        this.f1238f = map;
        return a();
    }

    public void a(q qVar, String str) {
        Message messageObtainMessage = this.c.obtainMessage();
        messageObtainMessage.what = 100;
        messageObtainMessage.obj = a.a(qVar, str, this.f1238f);
        messageObtainMessage.sendToTarget();
    }
}
