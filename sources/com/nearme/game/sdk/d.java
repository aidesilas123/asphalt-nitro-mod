package com.nearme.game.sdk;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.widget.Toast;
import com.google.android.gms.drive.DriveFile;
import com.nearme.game.sdk.common.util.AppUtil;
import com.nearme.game.sdk.common.util.IOUtil;
import com.nearme.game.sdk.common.util.LongSparseArray;
import com.nearme.game.sdk.common.z.y;
import com.nearme.game.sdk.common.z.z;
import com.nearme.game.sdk.component.proxy.ExitActivity;
import com.nearme.game.sdk.component.proxy.ProxyActivity;
import com.nearme.game.sdk.component.proxy.ProxyApiService;
import com.nearme.plugin.framework.LogUtils;
import com.nearme.plugin.framework.o_a;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: GCInternal.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class d {
    private static com.nearme.game.sdk.common.util.a a = new com.nearme.game.sdk.common.util.a();
    private static LongSparseArray<com.nearme.game.sdk.b.a> b = new LongSparseArray<>();
    private static List<Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static List<Integer> f7687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Context f7688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Messenger f7689f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected com.nearme.game.sdk.common.model.biz.a f7690g;
    private boolean h;
    protected final Handler i;
    private final byte[] j;
    private final byte[] k;
    protected WeakReference<Activity> o;
    protected com.nearme.game.sdk.b.b p;
    private AtomicBoolean l = new AtomicBoolean(true);
    private boolean m = false;
    private int n = Integer.MIN_VALUE;
    private ServiceConnection q = new c();
    private Runnable r = new f();
    private Runnable s = new g();
    private Messenger t = new Messenger(new h());

    /* JADX INFO: compiled from: GCInternal.java */
    final class a implements com.nearme.game.sdk.c.a.a {
        a() {
        }

        @Override // com.nearme.game.sdk.c.a.a
        public final void a(Activity activity) {
        }

        @Override // com.nearme.game.sdk.c.a.a
        public final void b(Activity activity) {
        }

        @Override // com.nearme.game.sdk.c.a.a
        public final void c(Activity activity) {
            if (activity instanceof ProxyActivity) {
                return;
            }
            d.this.A(activity);
            LogUtils.log("GCInternal", "onActivityResume::" + activity);
        }

        @Override // com.nearme.game.sdk.c.a.a
        public final void d(Activity activity) {
        }

        @Override // com.nearme.game.sdk.c.a.a
        public final void e(Activity activity) {
            if (activity instanceof ProxyActivity) {
                return;
            }
            d.this.z();
            LogUtils.log("GCInternal", "onActivityPause::" + activity);
        }

        @Override // com.nearme.game.sdk.c.a.a
        public final void f(Activity activity) {
        }
    }

    /* JADX INFO: compiled from: GCInternal.java */
    final class b extends com.nearme.game.sdk.common.util.b {
        b() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Object obj;
            if (1 == message.what && (obj = message.obj) != null && (obj instanceof Object[])) {
                Object[] objArr = (Object[]) obj;
                com.nearme.game.sdk.b.a aVar = (com.nearme.game.sdk.b.a) objArr[0];
                com.nearme.game.sdk.c.b.b bVar = (com.nearme.game.sdk.c.b.b) objArr[1];
                if (aVar == null || bVar == null) {
                    return;
                }
                int i = bVar.b;
                if (1001 != i) {
                    aVar.a(bVar.c, i);
                } else {
                    aVar.onSuccess(bVar.c);
                }
            }
        }
    }

    /* JADX INFO: compiled from: GCInternal.java */
    final class c implements ServiceConnection {
        c() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtils.log("GCInternal", "onServiceConnected service = " + iBinder);
            d.this.f7689f = new Messenger(iBinder);
            d.this.m = false;
            synchronized (d.this.j) {
                LogUtils.log("GCInternal", "onServiceConnected release lock.");
                d.this.j.notifyAll();
            }
            d.this.l.set(true);
            d.n(d.this);
            try {
                iBinder.linkToDeath(d.this.new i(), 0);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            LogUtils.log("GCInternal", "onServiceDisconnected.");
            d.this.f7689f = null;
        }
    }

    /* JADX INFO: renamed from: com.nearme.game.sdk.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GCInternal.java */
    final class C0441d implements com.nearme.game.sdk.b.a {
        C0441d() {
        }

        @Override // com.nearme.game.sdk.b.a
        public final void a(String str, int i) {
            synchronized (d.this.k) {
                d.this.k.notifyAll();
            }
            Toast.makeText(d.this.f7688e, "init failed : " + str, 0).show();
        }

        @Override // com.nearme.game.sdk.b.a
        public final void onSuccess(String str) {
            synchronized (d.this.k) {
                d.this.m = true;
                d.this.k.notifyAll();
            }
            LogUtils.log("GCInternal", "init success.");
            if (Integer.MIN_VALUE != d.this.n) {
                d dVar = d.this;
                dVar.u(dVar.n);
                d.this.n = Integer.MIN_VALUE;
            }
        }
    }

    /* JADX INFO: compiled from: GCInternal.java */
    final class e implements Runnable {
        final /* synthetic */ com.nearme.game.sdk.c.b.a a;
        final /* synthetic */ com.nearme.game.sdk.b.a b;

        e(com.nearme.game.sdk.c.b.a aVar, com.nearme.game.sdk.b.a aVar2) {
            this.a = aVar;
            this.b = aVar2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            LogUtils.log("GCInternal", "begin send request " + this.a.a);
            if (d.this.f7689f == null) {
                try {
                    synchronized (d.this.j) {
                        if (d.this.f7689f == null) {
                            d dVar = d.this;
                            dVar.i.postDelayed(dVar.r, 1000L);
                            d.this.j.wait();
                        }
                    }
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            boolean z = false;
            if (d.this.f7689f != null) {
                if (!d.this.m && !d.c.contains(Integer.valueOf(this.a.a))) {
                    try {
                        synchronized (d.this.k) {
                            if (!d.this.m) {
                                d dVar2 = d.this;
                                dVar2.i.postDelayed(dVar2.s, 5000L);
                                d.this.k.wait();
                            }
                        }
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                    }
                    if (!d.this.m) {
                        LogUtils.log("GCInternal", "failed send request " + this.a.a + " for init not accomplished.");
                        com.nearme.game.sdk.b.a aVar = this.b;
                        if (aVar != null) {
                            d.c(d.this, aVar, "failed for init not accomplished.", 1010);
                            return;
                        }
                        return;
                    }
                }
                if (this.b != null) {
                    this.a.c = System.currentTimeMillis() + ((long) this.b.hashCode());
                    d.b.j(this.a.c, this.b);
                }
                Message messageObtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putSerializable("requst", this.a);
                messageObtain.obj = bundle;
                messageObtain.replyTo = d.this.t;
                try {
                    d.this.f7689f.send(messageObtain);
                    z = true;
                } catch (RemoteException e4) {
                    LogUtils.log("GCInternal", "send PRC request error:" + e4.getMessage());
                    com.nearme.game.sdk.b.a aVar2 = this.b;
                    if (aVar2 != null) {
                        d.c(d.this, aVar2, "failed for RemoteException.", 1010);
                        d.b.k(this.a.c);
                    }
                    try {
                        d.this.x();
                    } catch (Exception unused) {
                        d.this.f7689f = null;
                    }
                }
            } else {
                LogUtils.log("GCInternal", "failed send request " + this.a.a + " for service is null.");
                com.nearme.game.sdk.b.a aVar3 = this.b;
                if (aVar3 != null) {
                    d.c(d.this, aVar3, "failed for service is null.", 1010);
                }
            }
            if (z) {
                LogUtils.log("GCInternal", "finish send request " + this.a.a);
            }
        }
    }

    /* JADX INFO: compiled from: GCInternal.java */
    final class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (d.this.j) {
                if (d.this.f7689f == null) {
                    if (d.this.l.compareAndSet(true, false)) {
                        LogUtils.log("GCInternal", "retry bind service.");
                        d dVar = d.this;
                        dVar.y(dVar.f7688e);
                        d.this.i.postDelayed(this, 1000L);
                    } else {
                        LogUtils.log("GCInternal", "waitService time out after retry release lock.");
                        d.this.j.notifyAll();
                        d.this.l.set(true);
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: GCInternal.java */
    final class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (d.this.k) {
                if (!d.this.m) {
                    LogUtils.log("GCInternal", "do init timeout release lock.");
                    d.this.k.notifyAll();
                }
            }
        }
    }

    /* JADX INFO: compiled from: GCInternal.java */
    final class h extends com.nearme.game.sdk.common.util.b {
        h() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Serializable serializable;
            Object obj = message.obj;
            if ((obj instanceof Bundle) && (serializable = ((Bundle) obj).getSerializable("result")) != null && (serializable instanceof com.nearme.game.sdk.c.b.b)) {
                com.nearme.game.sdk.c.b.b bVar = (com.nearme.game.sdk.c.b.b) serializable;
                d.i(d.this, bVar);
                com.nearme.game.sdk.b.a aVar = d.b == null ? null : (com.nearme.game.sdk.b.a) d.b.f(bVar.f7675d);
                if (aVar != null) {
                    int i = bVar.b;
                    if (1001 == i) {
                        aVar.onSuccess(bVar.c);
                    } else {
                        aVar.a(bVar.c, i);
                    }
                    d.b.k(bVar.f7675d);
                }
                LogUtils.log("GCInternal", "finish handle request " + bVar.a);
            }
        }
    }

    /* JADX INFO: compiled from: GCInternal.java */
    final class i implements IBinder.DeathRecipient {
        private long a;

        i() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.a < 1000) {
                this.a = jCurrentTimeMillis;
                return;
            }
            LogUtils.log("GCInternal", "::ChildProcessStatusListener:binderDied");
            d dVar = d.this;
            dVar.y(dVar.f7688e);
            d.this.f7689f = null;
            this.a = jCurrentTimeMillis;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        c = arrayList;
        arrayList.add(7001);
        c.add(7015);
        ArrayList arrayList2 = new ArrayList();
        f7687d = arrayList2;
        arrayList2.add(7001);
        f7687d.add(7003);
        f7687d.add(7008);
        f7687d.add(7011);
        f7687d.add(7012);
        f7687d.add(7022);
        f7687d.add(7013);
        f7687d.add(7009);
        f7687d.add(7010);
        f7687d.add(7015);
        f7687d.add(7016);
        f7687d.add(7017);
        f7687d.add(7018);
        f7687d.add(7021);
        f7687d.add(7023);
        f7687d.add(7024);
    }

    protected d(Context context, com.nearme.game.sdk.common.model.biz.a aVar) {
        this.h = true;
        LogUtils.log("GCInternal", "Hook init.");
        z.init(context, new a());
        this.j = new byte[0];
        this.k = new byte[0];
        this.f7688e = context.getApplicationContext();
        this.f7690g = aVar;
        this.i = new b();
        boolean z = aVar.f7676d;
        this.h = z;
        LogUtils.logInit(z, "GameCenterSDK");
        int iO_a = o_a.o_a(context, "oppo_game_service.so", "oppo_game_service_201901.so");
        if (o_a.a == iO_a) {
            throw new RuntimeException("install game service failed!");
        }
        if (!context.getApplicationInfo().packageName.equals(AppUtil.getCurrentProcessName(context))) {
            throw new RuntimeException("请参照接入文档只能在游戏主进程中调用init操作!");
        }
        if (o_a.c == iO_a) {
            AppUtil.exitSdkPluginProcess(context);
            LogUtils.log("GCInternal", "PluginLoader.INSTALL_STATUS_REINSTALL");
        }
        y(context);
    }

    static /* synthetic */ void c(d dVar, com.nearme.game.sdk.b.a aVar, String str, int i2) {
        com.nearme.game.sdk.c.b.b bVar = new com.nearme.game.sdk.c.b.b();
        bVar.b = i2;
        bVar.c = str;
        Object[] objArr = {aVar, bVar};
        Message messageObtainMessage = dVar.i.obtainMessage(1);
        messageObtainMessage.obj = objArr;
        dVar.i.sendMessage(messageObtainMessage);
    }

    static /* synthetic */ void i(d dVar, com.nearme.game.sdk.c.b.b bVar) {
        if (bVar.b == 2001) {
            dVar.t();
            y.finishGameActivities();
            try {
                Intent intent = new Intent();
                intent.putExtra("PARAM_START_PLUGIN_INTERNAL_ACTIVITIE", true);
                intent.setClass(dVar.f7688e, ExitActivity.class);
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                Context context = dVar.f7688e;
                if (context != null) {
                    context.startActivity(intent);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            LogUtils.log("GCInternal", "solveServerInvoke :: RESULT_CODE_EXIT_GAME");
            com.nearme.game.sdk.b.b bVar2 = dVar.p;
            if (bVar2 != null) {
                bVar2.a();
            }
        }
    }

    static /* synthetic */ void n(d dVar) {
        dVar.w(7001, dVar.f7690g, dVar.new C0441d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        ServiceConnection serviceConnection;
        Context context = this.f7688e;
        if (context == null || (serviceConnection = this.q) == null) {
            return;
        }
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException e2) {
            if (LogUtils.b) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(Context context) {
        LogUtils.log("GCInternal", "bindApiService");
        Intent intent = new Intent(context, (Class<?>) ProxyApiService.class);
        intent.putExtra("PLUGIN_NAME", "oppo_game_service.so");
        intent.putExtra("LAUNCH_COMPONENT", "com.nearme.game.service.ui.service.ApiPluginService");
        intent.putExtra("PARAM_COMM_ACT_NAME", ProxyActivity.class.getName());
        intent.putExtra("LOG_ENABLE", this.h);
        intent.putExtra("LOG_TAG", "GameCenterSDK");
        context.bindService(intent, this.q, 1);
    }

    void A(Activity activity) {
        if (this.o == null) {
            this.o = new WeakReference<>(activity);
        }
        u(7016);
    }

    synchronized void t() {
        this.i.removeCallbacks(this.r);
        this.i.removeCallbacks(this.s);
        b.b();
        if (this.f7688e != null) {
            if (this.f7689f != null) {
                x();
            }
            AppUtil.exitSdkPluginProcess(this.f7688e);
        }
    }

    void u(int i2) {
        w(i2, null, null);
    }

    void v(int i2, Object obj) {
        w(i2, obj, null);
    }

    void w(int i2, Object obj, com.nearme.game.sdk.b.a aVar) {
        if (!this.m && (7016 == i2 || 7017 == i2)) {
            LogUtils.log("GCInternal", "receive resume or pause before init accomplish, request is " + i2);
            this.n = i2;
            return;
        }
        com.nearme.game.sdk.c.b.a aVar2 = new com.nearme.game.sdk.c.b.a();
        aVar2.a = i2;
        if (obj != null) {
            aVar2.b = IOUtil.ObjectToByte(obj);
        }
        LogUtils.log("GCInternal", "receive request " + aVar2.a);
        if (!this.f7690g.a || f7687d.contains(Integer.valueOf(aVar2.a))) {
            a.execute(new e(aVar2, aVar));
        } else {
            throw new RuntimeException("单机游戏请勿调用登录、支付、退出引导之外的其他接口, requestCode = " + aVar2.a);
        }
    }

    void z() {
        u(7017);
    }
}
