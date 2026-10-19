package com.google.firebase.iid;

import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.webkit.ProxyConfig;
import androidx.work.WorkRequest;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.RequestDeduplicator;
import com.google.firebase.iid.Store;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class FirebaseInstanceId {
    private static Store b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    static ScheduledExecutorService f4082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final Executor f4083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final FirebaseApp f4084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Metadata f4085g;
    private final GmsRpc h;
    private final RequestDeduplicator i;
    private final FirebaseInstallationsApi j;
    private boolean k;
    private final List<FirebaseInstanceIdInternal.NewTokenListener> l;
    private static final long a = TimeUnit.HOURS.toSeconds(8);
    private static final Pattern c = Pattern.compile("\\AA[\\w-]{38}\\z");

    FirebaseInstanceId(FirebaseApp firebaseApp, Metadata metadata, Executor executor, Executor executor2, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.k = false;
        this.l = new ArrayList();
        if (Metadata.getDefaultSenderId(firebaseApp) == null) {
            throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
        }
        synchronized (FirebaseInstanceId.class) {
            if (b == null) {
                b = new Store(firebaseApp.i());
            }
        }
        this.f4084f = firebaseApp;
        this.f4085g = metadata;
        this.h = new GmsRpc(firebaseApp, metadata, provider, provider2, firebaseInstallationsApi);
        this.f4083e = executor2;
        this.i = new RequestDeduplicator(executor);
        this.j = firebaseInstallationsApi;
    }

    FirebaseInstanceId(FirebaseApp firebaseApp, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi) {
        this(firebaseApp, new Metadata(firebaseApp.i()), FirebaseIidExecutors.b(), FirebaseIidExecutors.b(), provider, provider2, firebaseInstallationsApi);
    }

    private <T> T b(Task<T> task) throws IOException {
        try {
            return (T) Tasks.await(task, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException unused) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    A();
                }
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e2);
        }
    }

    private static <T> T c(@NonNull Task<T> task) throws InterruptedException {
        Preconditions.checkNotNull(task, "Task must not be null");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        task.addOnCompleteListener(FirebaseInstanceId$$Lambda$1.a, new OnCompleteListener(countDownLatch) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$2
            private final CountDownLatch a;

            {
                this.a = countDownLatch;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public void onComplete(Task task2) {
                this.a.countDown();
            }
        });
        countDownLatch.await(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
        return (T) k(task);
    }

    @VisibleForTesting
    @KeepForSdk
    public static synchronized void clearInstancesForTest() {
        ScheduledExecutorService scheduledExecutorService = f4082d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        f4082d = null;
        b = null;
    }

    private static void e(@NonNull FirebaseApp firebaseApp) {
        Preconditions.checkNotEmpty(firebaseApp.k().d(), "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google.");
        Preconditions.checkNotEmpty(firebaseApp.k().b(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.");
        Preconditions.checkNotEmpty(firebaseApp.k().a(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.");
        Preconditions.checkArgument(t(firebaseApp.k().b()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(s(firebaseApp.k().a()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @NonNull
    public static FirebaseInstanceId getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @NonNull
    @Keep
    public static FirebaseInstanceId getInstance(@NonNull FirebaseApp firebaseApp) {
        e(firebaseApp);
        FirebaseInstanceId firebaseInstanceId = (FirebaseInstanceId) firebaseApp.g(FirebaseInstanceId.class);
        Preconditions.checkNotNull(firebaseInstanceId, "Firebase Instance ID component is not present");
        return firebaseInstanceId;
    }

    private Task<InstanceIdResult> j(final String str, String str2) {
        final String strZ = z(str2);
        return Tasks.forResult(null).continueWithTask(this.f4083e, new Continuation(this, str, strZ) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$0
            private final FirebaseInstanceId a;
            private final String b;
            private final String c;

            {
                this.a = this;
                this.b = str;
                this.c = strZ;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public Object then(Task task) {
                return this.a.y(this.b, this.c, task);
            }
        });
    }

    private static <T> T k(@NonNull Task<T> task) {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException("Task is already canceled");
        }
        if (task.isComplete()) {
            throw new IllegalStateException(task.getException());
        }
        throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
    }

    private String l() {
        return "[DEFAULT]".equals(this.f4084f.j()) ? "" : this.f4084f.l();
    }

    static boolean q() {
        return Log.isLoggable("FirebaseInstanceId", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3));
    }

    static boolean s(String str) {
        return c.matcher(str).matches();
    }

    static boolean t(String str) {
        return str.contains(CertificateUtil.DELIMITER);
    }

    private static String z(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase(AppMeasurement.FCM_ORIGIN) || str.equalsIgnoreCase("gcm")) ? ProxyConfig.MATCH_ALL_SCHEMES : str;
    }

    synchronized void A() {
        b.d();
    }

    synchronized void B(boolean z) {
        this.k = z;
    }

    synchronized void C() {
        if (this.k) {
            return;
        }
        D(0L);
    }

    synchronized void D(long j) {
        f(new SyncTask(this, Math.min(Math.max(30L, j + j), a)), j);
        this.k = true;
    }

    boolean E(@Nullable Store.Token token) {
        return token == null || token.c(this.f4085g.a());
    }

    void a(FirebaseInstanceIdInternal.NewTokenListener newTokenListener) {
        this.l.add(newTokenListener);
    }

    String d() throws IOException {
        return n(Metadata.getDefaultSenderId(this.f4084f), ProxyConfig.MATCH_ALL_SCHEMES);
    }

    void f(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            if (f4082d == null) {
                f4082d = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("FirebaseInstanceId"));
            }
            f4082d.schedule(runnable, j, TimeUnit.SECONDS);
        }
    }

    FirebaseApp g() {
        return this.f4084f;
    }

    String h() {
        try {
            b.i(this.f4084f.l());
            return (String) c(this.j.getId());
        } catch (InterruptedException e2) {
            throw new IllegalStateException(e2);
        }
    }

    @NonNull
    @Deprecated
    public Task<InstanceIdResult> i() {
        e(this.f4084f);
        return j(Metadata.getDefaultSenderId(this.f4084f), ProxyConfig.MATCH_ALL_SCHEMES);
    }

    @Nullable
    @Deprecated
    public String m() {
        e(this.f4084f);
        Store.Token tokenO = o();
        if (E(tokenO)) {
            C();
        }
        return Store.Token.b(tokenO);
    }

    @Nullable
    @WorkerThread
    @Deprecated
    public String n(@NonNull String str, @NonNull String str2) throws IOException {
        e(this.f4084f);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((InstanceIdResult) b(j(str, str2))).getToken();
        }
        throw new IOException("MAIN_THREAD");
    }

    @Nullable
    Store.Token o() {
        return p(Metadata.getDefaultSenderId(this.f4084f), ProxyConfig.MATCH_ALL_SCHEMES);
    }

    @Nullable
    @VisibleForTesting
    Store.Token p(String str, String str2) {
        return b.f(l(), str, str2);
    }

    @VisibleForTesting
    public boolean r() {
        return this.f4085g.f();
    }

    final /* synthetic */ Task v(String str, String str2, String str3, String str4) throws Exception {
        b.h(l(), str, str2, str4, this.f4085g.a());
        return Tasks.forResult(new InstanceIdResultImpl(str3, str4));
    }

    final /* synthetic */ void w(Store.Token token, InstanceIdResult instanceIdResult) {
        String token2 = instanceIdResult.getToken();
        if (token == null || !token2.equals(token.b)) {
            Iterator<FirebaseInstanceIdInternal.NewTokenListener> it = this.l.iterator();
            while (it.hasNext()) {
                it.next().a(token2);
            }
        }
    }

    final /* synthetic */ Task x(final String str, final String str2, final String str3, final Store.Token token) {
        return this.h.d(str, str2, str3).onSuccessTask(this.f4083e, new SuccessContinuation(this, str2, str3, str) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$4
            private final FirebaseInstanceId a;
            private final String b;
            private final String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final String f4088d;

            {
                this.a = this;
                this.b = str2;
                this.c = str3;
                this.f4088d = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public Task then(Object obj) {
                return this.a.v(this.b, this.c, this.f4088d, (String) obj);
            }
        }).addOnSuccessListener(FirebaseInstanceId$$Lambda$5.a, (OnSuccessListener<? super TContinuationResult>) new OnSuccessListener(this, token) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$6
            private final FirebaseInstanceId a;
            private final Store.Token b;

            {
                this.a = this;
                this.b = token;
            }

            @Override // com.google.android.gms.tasks.OnSuccessListener
            public void onSuccess(Object obj) {
                this.a.w(this.b, (InstanceIdResult) obj);
            }
        });
    }

    final /* synthetic */ Task y(final String str, final String str2, Task task) throws Exception {
        final String strH = h();
        final Store.Token tokenP = p(str, str2);
        return !E(tokenP) ? Tasks.forResult(new InstanceIdResultImpl(strH, tokenP.b)) : this.i.a(str, str2, new RequestDeduplicator.GetTokenRequest(this, strH, str, str2, tokenP) { // from class: com.google.firebase.iid.FirebaseInstanceId$$Lambda$3
            private final FirebaseInstanceId a;
            private final String b;
            private final String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final String f4086d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final Store.Token f4087e;

            {
                this.a = this;
                this.b = strH;
                this.c = str;
                this.f4086d = str2;
                this.f4087e = tokenP;
            }

            @Override // com.google.firebase.iid.RequestDeduplicator.GetTokenRequest
            public Task start() {
                return this.a.x(this.b, this.c, this.f4086d, this.f4087e);
            }
        });
    }
}
