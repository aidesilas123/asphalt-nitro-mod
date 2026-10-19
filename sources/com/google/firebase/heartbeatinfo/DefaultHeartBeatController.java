package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.platforminfo.UserAgentPublisher;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultHeartBeatController implements HeartBeatController, HeartBeatInfo {
    private static final ThreadFactory a = new ThreadFactory() { // from class: com.google.firebase.heartbeatinfo.d
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return DefaultHeartBeatController.i(runnable);
        }
    };
    private final Provider<HeartBeatInfoStorage> b;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider<UserAgentPublisher> f4076d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<HeartBeatConsumer> f4077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Executor f4078f;

    private DefaultHeartBeatController(final Context context, final String str, Set<HeartBeatConsumer> set, Provider<UserAgentPublisher> provider) {
        this(new Provider() { // from class: com.google.firebase.heartbeatinfo.a
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return DefaultHeartBeatController.f(context, str);
            }
        }, set, new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), a), provider, context);
    }

    @VisibleForTesting
    DefaultHeartBeatController(Provider<HeartBeatInfoStorage> provider, Set<HeartBeatConsumer> set, Executor executor, Provider<UserAgentPublisher> provider2, Context context) {
        this.b = provider;
        this.f4077e = set;
        this.f4078f = executor;
        this.f4076d = provider2;
        this.c = context;
    }

    static /* synthetic */ DefaultHeartBeatController c(ComponentContainer componentContainer) {
        return new DefaultHeartBeatController((Context) componentContainer.a(Context.class), ((FirebaseApp) componentContainer.a(FirebaseApp.class)).l(), componentContainer.c(HeartBeatConsumer.class), componentContainer.d(UserAgentPublisher.class));
    }

    @NonNull
    public static Component<DefaultHeartBeatController> component() {
        return Component.builder(DefaultHeartBeatController.class, HeartBeatController.class, HeartBeatInfo.class).b(Dependency.required(Context.class)).b(Dependency.required(FirebaseApp.class)).b(Dependency.setOf(HeartBeatConsumer.class)).b(Dependency.requiredProvider(UserAgentPublisher.class)).f(new ComponentFactory() { // from class: com.google.firebase.heartbeatinfo.b
            @Override // com.google.firebase.components.ComponentFactory
            public final Object a(ComponentContainer componentContainer) {
                return DefaultHeartBeatController.c(componentContainer);
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String e() throws Exception {
        String string;
        synchronized (this) {
            HeartBeatInfoStorage heartBeatInfoStorage = this.b.get();
            List<HeartBeatResult> listC = heartBeatInfoStorage.c();
            heartBeatInfoStorage.b();
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < listC.size(); i++) {
                HeartBeatResult heartBeatResult = listC.get(i);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("agent", heartBeatResult.b());
                jSONObject.put("dates", new JSONArray((Collection) heartBeatResult.a()));
                jSONArray.put(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("heartbeats", jSONArray);
            jSONObject2.put("version", MBridgeConstans.API_REUQEST_CATEGORY_APP);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                try {
                    gZIPOutputStream.write(jSONObject2.toString().getBytes(C.UTF8_NAME));
                    gZIPOutputStream.close();
                    base64OutputStream.close();
                    string = byteArrayOutputStream.toString(C.UTF8_NAME);
                } finally {
                }
            } finally {
            }
        }
        return string;
    }

    static /* synthetic */ HeartBeatInfoStorage f(Context context, String str) {
        return new HeartBeatInfoStorage(context, str);
    }

    private /* synthetic */ Void g() throws Exception {
        synchronized (this) {
            this.b.get().k(System.currentTimeMillis(), this.f4076d.get().getUserAgent());
        }
        return null;
    }

    static /* synthetic */ Thread i(Runnable runnable) {
        return new Thread(runnable, "heartbeat-information-executor");
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatController
    public Task<String> a() {
        return UserManagerCompat.isUserUnlocked(this.c) ^ true ? Tasks.forResult("") : Tasks.call(this.f4078f, new Callable() { // from class: com.google.firebase.heartbeatinfo.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.a.e();
            }
        });
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    @NonNull
    public synchronized HeartBeatInfo.HeartBeat b(@NonNull String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        HeartBeatInfoStorage heartBeatInfoStorage = this.b.get();
        if (!heartBeatInfoStorage.i(jCurrentTimeMillis)) {
            return HeartBeatInfo.HeartBeat.NONE;
        }
        heartBeatInfoStorage.g();
        return HeartBeatInfo.HeartBeat.GLOBAL;
    }

    public /* synthetic */ Void h() throws Exception {
        g();
        return null;
    }

    public Task<Void> j() {
        if (this.f4077e.size() > 0 && !(!UserManagerCompat.isUserUnlocked(this.c))) {
            return Tasks.call(this.f4078f, new Callable() { // from class: com.google.firebase.heartbeatinfo.e
                @Override // java.util.concurrent.Callable
                public final Object call() throws Exception {
                    this.a.h();
                    return null;
                }
            });
        }
        return Tasks.forResult(null);
    }
}
