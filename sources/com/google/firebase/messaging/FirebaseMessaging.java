package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.messaging.RequestDeduplicator;
import com.google.firebase.messaging.Store;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class FirebaseMessaging {
    private static final long a = TimeUnit.HOURS.toSeconds(8);

    @GuardedBy("FirebaseMessaging.class")
    private static Store b;

    @Nullable
    @SuppressLint({"FirebaseUnknownNullness"})
    @VisibleForTesting
    static com.google.android.datatransport.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("FirebaseMessaging.class")
    @VisibleForTesting
    static ScheduledExecutorService f4138d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final FirebaseApp f4139e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final FirebaseInstanceIdInternal f4140f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final FirebaseInstallationsApi f4141g;
    private final Context h;
    private final GmsRpc i;
    private final RequestDeduplicator j;
    private final AutoInit k;
    private final Executor l;
    private final Executor m;
    private final Task<TopicsSubscriber> n;
    private final Metadata o;

    @GuardedBy("this")
    private boolean p;
    private final Application.ActivityLifecycleCallbacks q;

    /* JADX INFO: Access modifiers changed from: private */
    class AutoInit {
        private final Subscriber a;

        @GuardedBy("this")
        private boolean b;

        @Nullable
        @GuardedBy("this")
        private EventHandler<DataCollectionDefaultChange> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        @GuardedBy("this")
        private Boolean f4142d;

        AutoInit(Subscriber subscriber) {
            this.a = subscriber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(Event event) {
            if (b()) {
                FirebaseMessaging.this.z();
            }
        }

        @Nullable
        private Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context contextI = FirebaseMessaging.this.f4139e.i();
            SharedPreferences sharedPreferences = contextI.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = contextI.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(contextI.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void a() {
            if (this.b) {
                return;
            }
            Boolean boolE = e();
            this.f4142d = boolE;
            if (boolE == null) {
                EventHandler<DataCollectionDefaultChange> eventHandler = new EventHandler() { // from class: com.google.firebase.messaging.l
                    @Override // com.google.firebase.events.EventHandler
                    public final void a(Event event) {
                        this.a.d(event);
                    }
                };
                this.c = eventHandler;
                this.a.a(DataCollectionDefaultChange.class, eventHandler);
            }
            this.b = true;
        }

        synchronized boolean b() {
            Boolean bool;
            a();
            bool = this.f4142d;
            return bool != null ? bool.booleanValue() : FirebaseMessaging.this.f4139e.n();
        }
    }

    FirebaseMessaging(FirebaseApp firebaseApp, @Nullable FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi, @Nullable com.google.android.datatransport.d dVar, Subscriber subscriber) {
        this(firebaseApp, firebaseInstanceIdInternal, provider, provider2, firebaseInstallationsApi, dVar, subscriber, new Metadata(firebaseApp.i()));
    }

    FirebaseMessaging(FirebaseApp firebaseApp, @Nullable FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi, @Nullable com.google.android.datatransport.d dVar, Subscriber subscriber, Metadata metadata) {
        this(firebaseApp, firebaseInstanceIdInternal, firebaseInstallationsApi, dVar, subscriber, metadata, new GmsRpc(firebaseApp, metadata, provider, provider2, firebaseInstallationsApi), FcmExecutors.d(), FcmExecutors.a());
    }

    FirebaseMessaging(FirebaseApp firebaseApp, @Nullable FirebaseInstanceIdInternal firebaseInstanceIdInternal, FirebaseInstallationsApi firebaseInstallationsApi, @Nullable com.google.android.datatransport.d dVar, Subscriber subscriber, Metadata metadata, GmsRpc gmsRpc, Executor executor, Executor executor2) {
        this.p = false;
        c = dVar;
        this.f4139e = firebaseApp;
        this.f4140f = firebaseInstanceIdInternal;
        this.f4141g = firebaseInstallationsApi;
        this.k = new AutoInit(subscriber);
        Context contextI = firebaseApp.i();
        this.h = contextI;
        FcmLifecycleCallbacks fcmLifecycleCallbacks = new FcmLifecycleCallbacks();
        this.q = fcmLifecycleCallbacks;
        this.o = metadata;
        this.m = executor;
        this.i = gmsRpc;
        this.j = new RequestDeduplicator(executor);
        this.l = executor2;
        Context contextI2 = firebaseApp.i();
        if (contextI2 instanceof Application) {
            ((Application) contextI2).registerActivityLifecycleCallbacks(fcmLifecycleCallbacks);
        } else {
            Log.w("FirebaseMessaging", "Context " + contextI2 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (firebaseInstanceIdInternal != null) {
            firebaseInstanceIdInternal.b(new FirebaseInstanceIdInternal.NewTokenListener() { // from class: com.google.firebase.messaging.m
                @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal.NewTokenListener
                public final void a(String str) {
                    this.a.q(str);
                }
            });
        }
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.o
            @Override // java.lang.Runnable
            public final void run() {
                this.a.s();
            }
        });
        Task<TopicsSubscriber> taskD = TopicsSubscriber.d(this, metadata, gmsRpc, contextI, FcmExecutors.e());
        this.n = taskD;
        taskD.addOnSuccessListener(executor2, new OnSuccessListener() { // from class: com.google.firebase.messaging.n
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                this.a.u((TopicsSubscriber) obj);
            }
        });
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.k
            @Override // java.lang.Runnable
            public final void run() {
                this.a.w();
            }
        });
    }

    @NonNull
    private static synchronized Store f(Context context) {
        if (b == null) {
            b = new Store(context);
        }
        return b;
    }

    private String g() {
        return "[DEFAULT]".equals(this.f4139e.j()) ? "" : this.f4139e.l();
    }

    @NonNull
    public static synchronized FirebaseMessaging getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @NonNull
    @Keep
    static synchronized FirebaseMessaging getInstance(@NonNull FirebaseApp firebaseApp) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) firebaseApp.g(FirebaseMessaging.class);
        Preconditions.checkNotNull(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    @Nullable
    public static com.google.android.datatransport.d getTransportFactory() {
        return c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void q(String str) {
        if ("[DEFAULT]".equals(this.f4139e.j())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Invoking onNewToken for app: " + this.f4139e.j());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new FcmBroadcastProcessor(this.h).g(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Task m(final String str, final Store.Token token) {
        return this.i.d().onSuccessTask(t.a, new SuccessContinuation() { // from class: com.google.firebase.messaging.j
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.a.o(str, token, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Task o(String str, Store.Token token, String str2) throws Exception {
        f(this.h).f(g(), str, str2, this.o.a());
        if (token == null || !str2.equals(token.b)) {
            p(str2);
        }
        return Tasks.forResult(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s() {
        if (j()) {
            z();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void u(TopicsSubscriber topicsSubscriber) {
        if (j()) {
            topicsSubscriber.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void w() {
        ProxyNotificationInitializer.b(this.h);
    }

    private synchronized void y() {
        if (!this.p) {
            A(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        FirebaseInstanceIdInternal firebaseInstanceIdInternal = this.f4140f;
        if (firebaseInstanceIdInternal != null) {
            firebaseInstanceIdInternal.getToken();
        } else if (B(h())) {
            y();
        }
    }

    synchronized void A(long j) {
        d(new SyncTask(this, Math.min(Math.max(30L, 2 * j), a)), j);
        this.p = true;
    }

    @VisibleForTesting
    boolean B(@Nullable Store.Token token) {
        return token == null || token.b(this.o.a());
    }

    String c() throws IOException {
        FirebaseInstanceIdInternal firebaseInstanceIdInternal = this.f4140f;
        if (firebaseInstanceIdInternal != null) {
            try {
                return (String) Tasks.await(firebaseInstanceIdInternal.a());
            } catch (InterruptedException | ExecutionException e2) {
                throw new IOException(e2);
            }
        }
        final Store.Token tokenH = h();
        if (!B(tokenH)) {
            return tokenH.b;
        }
        final String strC = Metadata.c(this.f4139e);
        try {
            return (String) Tasks.await(this.j.a(strC, new RequestDeduplicator.GetTokenRequest() { // from class: com.google.firebase.messaging.i
                @Override // com.google.firebase.messaging.RequestDeduplicator.GetTokenRequest
                public final Task start() {
                    return this.a.m(strC, tokenH);
                }
            }));
        } catch (InterruptedException | ExecutionException e3) {
            throw new IOException(e3);
        }
    }

    void d(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            if (f4138d == null) {
                f4138d = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
            }
            f4138d.schedule(runnable, j, TimeUnit.SECONDS);
        }
    }

    Context e() {
        return this.h;
    }

    @Nullable
    @VisibleForTesting
    Store.Token h() {
        return f(this.h).d(g(), Metadata.c(this.f4139e));
    }

    public boolean j() {
        return this.k.b();
    }

    @VisibleForTesting
    boolean k() {
        return this.o.g();
    }

    synchronized void x(boolean z) {
        this.p = z;
    }
}
