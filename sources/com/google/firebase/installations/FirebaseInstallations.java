package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.installations.internal.FidListenerHandle;
import com.google.firebase.installations.local.IidStore;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class FirebaseInstallations implements FirebaseInstallationsApi {
    private static final Object a = new Object();
    private static final ThreadFactory b = new ThreadFactory() { // from class: com.google.firebase.installations.FirebaseInstallations.1
        private final AtomicInteger a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.a.getAndIncrement())));
        }
    };
    private final FirebaseApp c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FirebaseInstallationServiceClient f4096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PersistedInstallation f4097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Utils f4098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final IidStore f4099g;
    private final RandomFidGenerator h;
    private final Object i;
    private final ExecutorService j;
    private final ExecutorService k;

    @GuardedBy("this")
    private String l;

    @GuardedBy("FirebaseInstallations.this")
    private Set<FidListener> m;

    @GuardedBy("lock")
    private final List<StateListener> n;

    /* JADX INFO: renamed from: com.google.firebase.installations.FirebaseInstallations$2, reason: invalid class name */
    class AnonymousClass2 implements FidListenerHandle {
    }

    /* JADX INFO: renamed from: com.google.firebase.installations.FirebaseInstallations$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    FirebaseInstallations(FirebaseApp firebaseApp, @NonNull Provider<HeartBeatController> provider) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), b), firebaseApp, new FirebaseInstallationServiceClient(firebaseApp.i(), provider), new PersistedInstallation(firebaseApp), Utils.getInstance(), new IidStore(firebaseApp), new RandomFidGenerator());
    }

    FirebaseInstallations(ExecutorService executorService, FirebaseApp firebaseApp, FirebaseInstallationServiceClient firebaseInstallationServiceClient, PersistedInstallation persistedInstallation, Utils utils, IidStore iidStore, RandomFidGenerator randomFidGenerator) {
        this.i = new Object();
        this.m = new HashSet();
        this.n = new ArrayList();
        this.c = firebaseApp;
        this.f4096d = firebaseInstallationServiceClient;
        this.f4097e = persistedInstallation;
        this.f4098f = utils;
        this.f4099g = iidStore;
        this.h = randomFidGenerator;
        this.j = executorService;
        this.k = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), b);
    }

    private synchronized void A(PersistedInstallationEntry persistedInstallationEntry, PersistedInstallationEntry persistedInstallationEntry2) {
        if (this.m.size() != 0 && !persistedInstallationEntry.c().equals(persistedInstallationEntry2.c())) {
            Iterator<FidListener> it = this.m.iterator();
            while (it.hasNext()) {
                it.next().a(persistedInstallationEntry2.c());
            }
        }
    }

    private Task<InstallationTokenResult> b() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        d(new GetAuthTokenListener(this.f4098f, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private Task<String> c() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        d(new GetIdListener(taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private void d(StateListener stateListener) {
        synchronized (this.i) {
            this.n.add(stateListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void p(boolean z) {
        PersistedInstallationEntry persistedInstallationEntryW;
        PersistedInstallationEntry persistedInstallationEntryK = k();
        try {
            if (persistedInstallationEntryK.h() || persistedInstallationEntryK.k()) {
                persistedInstallationEntryW = w(persistedInstallationEntryK);
            } else {
                if (!z && !this.f4098f.d(persistedInstallationEntryK)) {
                    return;
                }
                persistedInstallationEntryW = g(persistedInstallationEntryK);
            }
            n(persistedInstallationEntryW);
            A(persistedInstallationEntryK, persistedInstallationEntryW);
            if (persistedInstallationEntryW.j()) {
                z(persistedInstallationEntryW.c());
            }
            if (persistedInstallationEntryW.h()) {
                x(new FirebaseInstallationsException(FirebaseInstallationsException.Status.BAD_CONFIG));
            } else if (persistedInstallationEntryW.i()) {
                x(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
            } else {
                y(persistedInstallationEntryW);
            }
        } catch (FirebaseInstallationsException e2) {
            x(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final void t(final boolean z) {
        PersistedInstallationEntry persistedInstallationEntryL = l();
        if (z) {
            persistedInstallationEntryL = persistedInstallationEntryL.o();
        }
        y(persistedInstallationEntryL);
        this.k.execute(new Runnable() { // from class: com.google.firebase.installations.a
            @Override // java.lang.Runnable
            public final void run() {
                this.a.p(z);
            }
        });
    }

    private PersistedInstallationEntry g(@NonNull PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        TokenResult tokenResultE = this.f4096d.e(h(), persistedInstallationEntry.c(), m(), persistedInstallationEntry.e());
        int i = AnonymousClass3.b[tokenResultE.a().ordinal()];
        if (i == 1) {
            return persistedInstallationEntry.n(tokenResultE.b(), tokenResultE.c(), this.f4098f.b());
        }
        if (i == 2) {
            return persistedInstallationEntry.p("BAD CONFIG");
        }
        if (i != 3) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        z(null);
        return persistedInstallationEntry.q();
    }

    @NonNull
    public static FirebaseInstallations getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @NonNull
    public static FirebaseInstallations getInstance(@NonNull FirebaseApp firebaseApp) {
        Preconditions.checkArgument(firebaseApp != null, "Null is not a valid value of FirebaseApp.");
        return (FirebaseInstallations) firebaseApp.g(FirebaseInstallationsApi.class);
    }

    private synchronized String j() {
        return this.l;
    }

    private PersistedInstallationEntry k() {
        PersistedInstallationEntry persistedInstallationEntryD;
        synchronized (a) {
            CrossProcessLock crossProcessLockA = CrossProcessLock.a(this.c.i(), "generatefid.lock");
            try {
                persistedInstallationEntryD = this.f4097e.d();
            } finally {
                if (crossProcessLockA != null) {
                    crossProcessLockA.b();
                }
            }
        }
        return persistedInstallationEntryD;
    }

    private PersistedInstallationEntry l() {
        PersistedInstallationEntry persistedInstallationEntryD;
        synchronized (a) {
            CrossProcessLock crossProcessLockA = CrossProcessLock.a(this.c.i(), "generatefid.lock");
            try {
                persistedInstallationEntryD = this.f4097e.d();
                if (persistedInstallationEntryD.i()) {
                    persistedInstallationEntryD = this.f4097e.b(persistedInstallationEntryD.s(v(persistedInstallationEntryD)));
                }
            } finally {
                if (crossProcessLockA != null) {
                    crossProcessLockA.b();
                }
            }
        }
        return persistedInstallationEntryD;
    }

    private void n(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (a) {
            CrossProcessLock crossProcessLockA = CrossProcessLock.a(this.c.i(), "generatefid.lock");
            try {
                this.f4097e.b(persistedInstallationEntry);
            } finally {
                if (crossProcessLockA != null) {
                    crossProcessLockA.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r() {
        s(false);
    }

    private void u() {
        Preconditions.checkNotEmpty(i(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(m(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(h(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(Utils.f(i()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(Utils.e(h()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    private String v(PersistedInstallationEntry persistedInstallationEntry) {
        if ((!this.c.j().equals("CHIME_ANDROID_SDK") && !this.c.o()) || !persistedInstallationEntry.l()) {
            return this.h.a();
        }
        String strF = this.f4099g.f();
        return TextUtils.isEmpty(strF) ? this.h.a() : strF;
    }

    private PersistedInstallationEntry w(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {
        InstallationResponse installationResponseD = this.f4096d.d(h(), persistedInstallationEntry.c(), m(), i(), (persistedInstallationEntry.c() == null || persistedInstallationEntry.c().length() != 11) ? null : this.f4099g.i());
        int i = AnonymousClass3.a[installationResponseD.d().ordinal()];
        if (i == 1) {
            return persistedInstallationEntry.r(installationResponseD.b(), installationResponseD.c(), this.f4098f.b(), installationResponseD.a().b(), installationResponseD.a().c());
        }
        if (i == 2) {
            return persistedInstallationEntry.p("BAD CONFIG");
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    private void x(Exception exc) {
        synchronized (this.i) {
            Iterator<StateListener> it = this.n.iterator();
            while (it.hasNext()) {
                if (it.next().a(exc)) {
                    it.remove();
                }
            }
        }
    }

    private void y(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (this.i) {
            Iterator<StateListener> it = this.n.iterator();
            while (it.hasNext()) {
                if (it.next().b(persistedInstallationEntry)) {
                    it.remove();
                }
            }
        }
    }

    private synchronized void z(String str) {
        this.l = str;
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    @NonNull
    public Task<InstallationTokenResult> a(final boolean z) {
        u();
        Task<InstallationTokenResult> taskB = b();
        this.j.execute(new Runnable() { // from class: com.google.firebase.installations.c
            @Override // java.lang.Runnable
            public final void run() {
                this.a.t(z);
            }
        });
        return taskB;
    }

    @Override // com.google.firebase.installations.FirebaseInstallationsApi
    @NonNull
    public Task<String> getId() {
        u();
        String strJ = j();
        if (strJ != null) {
            return Tasks.forResult(strJ);
        }
        Task<String> taskC = c();
        this.j.execute(new Runnable() { // from class: com.google.firebase.installations.b
            @Override // java.lang.Runnable
            public final void run() {
                this.a.r();
            }
        });
        return taskC;
    }

    @Nullable
    String h() {
        return this.c.k().a();
    }

    @VisibleForTesting
    String i() {
        return this.c.k().b();
    }

    @Nullable
    String m() {
        return this.c.k().d();
    }
}
