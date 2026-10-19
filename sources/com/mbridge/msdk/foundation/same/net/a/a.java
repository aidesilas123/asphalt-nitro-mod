package com.mbridge.msdk.foundation.same.net.a;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.b.e;
import com.mbridge.msdk.foundation.tools.aa;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;

/* JADX INFO: compiled from: CronetEngineManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private CronetEngine a;
    private CronetEngine.Builder b;
    private final ArrayList<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f7130d;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.same.net.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CronetEngineManager.java */
    private static final class C0406a {
        private static final a a = new a();
    }

    private a() {
        this.c = new ArrayList<>();
        this.f7130d = Executors.newCachedThreadPool();
        if (this.b == null) {
            this.b = d();
        }
        this.a = this.b.build();
    }

    public static a a() {
        return C0406a.a;
    }

    private CronetEngine.Builder d() {
        if (this.b == null) {
            this.b = new CronetEngine.Builder(com.mbridge.msdk.foundation.controller.b.d().g());
            this.b.setStoragePath(e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_OTHER)).enableHttpCache(2, ServiceProvider.HTTP_CACHE_DISK_SIZE).enableHttp2(true).enableQuic(true);
        }
        return this.b;
    }

    public final void a(String str) {
        try {
            if (TextUtils.isEmpty(str) || this.c.contains(str)) {
                return;
            }
            this.c.add(str);
            if (this.b == null) {
                this.b = d();
            }
            CronetEngine.Builder builder = this.b;
            if (builder != null) {
                builder.addQuicHint(str, ServiceProvider.GATEWAY_PORT, ServiceProvider.GATEWAY_PORT);
            }
        } catch (Throwable th) {
            aa.d("CronetEngineManager", th.getMessage());
        }
    }

    public final CronetEngine b() {
        if (com.mbridge.msdk.foundation.controller.b.d().g() == null) {
            return null;
        }
        CronetEngine cronetEngine = this.a;
        if (cronetEngine != null) {
            return cronetEngine;
        }
        if (this.b == null) {
            this.b = d();
        }
        CronetEngine cronetEngineBuild = this.b.build();
        this.a = cronetEngineBuild;
        return cronetEngineBuild;
    }

    public final ExecutorService c() {
        return this.f7130d;
    }
}
