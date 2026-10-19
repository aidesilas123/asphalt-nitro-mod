package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.events.Publisher;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.internal.DataCollectionConfigStorage;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public class FirebaseApp {
    private static final Object a = new Object();
    private static final Executor b = new UiExecutor();
    static final Map<String, FirebaseApp> c = new ArrayMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f4023d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final FirebaseOptions f4025f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ComponentRuntime f4026g;
    private final Lazy<DataCollectionConfigStorage> j;
    private final Provider<DefaultHeartBeatController> k;
    private final AtomicBoolean h = new AtomicBoolean(false);
    private final AtomicBoolean i = new AtomicBoolean();
    private final List<BackgroundStateChangeListener> l = new CopyOnWriteArrayList();
    private final List<FirebaseAppLifecycleListener> m = new CopyOnWriteArrayList();

    @KeepForSdk
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z);
    }

    @TargetApi(14)
    private static class GlobalBackgroundStateListener implements BackgroundDetector.BackgroundStateChangeListener {
        private static AtomicReference<GlobalBackgroundStateListener> a = new AtomicReference<>();

        private GlobalBackgroundStateListener() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (a.get() == null) {
                    GlobalBackgroundStateListener globalBackgroundStateListener = new GlobalBackgroundStateListener();
                    if (a.compareAndSet(null, globalBackgroundStateListener)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(globalBackgroundStateListener);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z) {
            synchronized (FirebaseApp.a) {
                for (FirebaseApp firebaseApp : new ArrayList(FirebaseApp.c.values())) {
                    if (firebaseApp.h.get()) {
                        firebaseApp.u(z);
                    }
                }
            }
        }
    }

    private static class UiExecutor implements Executor {
        private static final Handler a = new Handler(Looper.getMainLooper());

        private UiExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            a.post(runnable);
        }
    }

    @TargetApi(24)
    private static class UserUnlockReceiver extends BroadcastReceiver {
        private static AtomicReference<UserUnlockReceiver> a = new AtomicReference<>();
        private final Context b;

        public UserUnlockReceiver(Context context) {
            this.b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (a.get() == null) {
                UserUnlockReceiver userUnlockReceiver = new UserUnlockReceiver(context);
                if (a.compareAndSet(null, userUnlockReceiver)) {
                    context.registerReceiver(userUnlockReceiver, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.b.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.a) {
                Iterator<FirebaseApp> it = FirebaseApp.c.values().iterator();
                while (it.hasNext()) {
                    it.next().m();
                }
            }
            c();
        }
    }

    protected FirebaseApp(final Context context, String str, FirebaseOptions firebaseOptions) {
        this.f4023d = (Context) Preconditions.checkNotNull(context);
        this.f4024e = Preconditions.checkNotEmpty(str);
        this.f4025f = (FirebaseOptions) Preconditions.checkNotNull(firebaseOptions);
        ComponentRuntime componentRuntimeD = ComponentRuntime.builder(b).c(ComponentDiscovery.forContext(context, ComponentDiscoveryService.class).a()).b(new FirebaseCommonRegistrar()).a(Component.of(context, Context.class, new Class[0])).a(Component.of(this, FirebaseApp.class, new Class[0])).a(Component.of(firebaseOptions, FirebaseOptions.class, new Class[0])).d();
        this.f4026g = componentRuntimeD;
        this.j = new Lazy<>(new Provider() { // from class: com.google.firebase.b
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return this.a.q(context);
            }
        });
        this.k = componentRuntimeD.d(DefaultHeartBeatController.class);
        e(new BackgroundStateChangeListener() { // from class: com.google.firebase.a
            @Override // com.google.firebase.FirebaseApp.BackgroundStateChangeListener
            public final void onBackgroundStateChanged(boolean z) {
                this.a.s(z);
            }
        });
    }

    @VisibleForTesting
    public static void clearInstancesForTest() {
        synchronized (a) {
            c.clear();
        }
    }

    private void f() {
        Preconditions.checkState(!this.i.get(), "FirebaseApp was deleted");
    }

    @NonNull
    public static List<FirebaseApp> getApps(@NonNull Context context) {
        ArrayList arrayList;
        synchronized (a) {
            arrayList = new ArrayList(c.values());
        }
        return arrayList;
    }

    @NonNull
    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (a) {
            firebaseApp = c.get("[DEFAULT]");
            if (firebaseApp == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return firebaseApp;
    }

    @NonNull
    public static FirebaseApp getInstance(@NonNull String str) {
        FirebaseApp firebaseApp;
        String str2;
        synchronized (a) {
            firebaseApp = c.get(t(str));
            if (firebaseApp == null) {
                List<String> listH = h();
                if (listH.isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "Available app names: " + TextUtils.join(", ", listH);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
            }
            firebaseApp.k.get().j();
        }
        return firebaseApp;
    }

    @KeepForSdk
    public static String getPersistenceKey(String str, FirebaseOptions firebaseOptions) {
        return Base64Utils.encodeUrlSafeNoPadding(str.getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(firebaseOptions.b().getBytes(Charset.defaultCharset()));
    }

    private static List<String> h() {
        ArrayList arrayList = new ArrayList();
        synchronized (a) {
            Iterator<FirebaseApp> it = c.values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().j());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @Nullable
    public static FirebaseApp initializeApp(@NonNull Context context) {
        synchronized (a) {
            if (c.containsKey("[DEFAULT]")) {
                return getInstance();
            }
            FirebaseOptions firebaseOptionsFromResource = FirebaseOptions.fromResource(context);
            if (firebaseOptionsFromResource == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return initializeApp(context, firebaseOptionsFromResource);
        }
    }

    @NonNull
    public static FirebaseApp initializeApp(@NonNull Context context, @NonNull FirebaseOptions firebaseOptions) {
        return initializeApp(context, firebaseOptions, "[DEFAULT]");
    }

    @NonNull
    public static FirebaseApp initializeApp(@NonNull Context context, @NonNull FirebaseOptions firebaseOptions, @NonNull String str) {
        FirebaseApp firebaseApp;
        GlobalBackgroundStateListener.b(context);
        String strT = t(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (a) {
            Map<String, FirebaseApp> map = c;
            Preconditions.checkState(!map.containsKey(strT), "FirebaseApp name " + strT + " already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context, strT, firebaseOptions);
            map.put(strT, firebaseApp);
        }
        firebaseApp.m();
        return firebaseApp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (!UserManagerCompat.isUserUnlocked(this.f4023d)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + j());
            UserUnlockReceiver.b(this.f4023d);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + j());
        this.f4026g.g(o());
        this.k.get().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ DataCollectionConfigStorage q(Context context) {
        return new DataCollectionConfigStorage(context, l(), (Publisher) this.f4026g.a(Publisher.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(boolean z) {
        if (z) {
            return;
        }
        this.k.get().j();
    }

    private static String t(@NonNull String str) {
        return str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        Iterator<BackgroundStateChangeListener> it = this.l.iterator();
        while (it.hasNext()) {
            it.next().onBackgroundStateChanged(z);
        }
    }

    @KeepForSdk
    public void e(BackgroundStateChangeListener backgroundStateChangeListener) {
        f();
        if (this.h.get() && BackgroundDetector.getInstance().isInBackground()) {
            backgroundStateChangeListener.onBackgroundStateChanged(true);
        }
        this.l.add(backgroundStateChangeListener);
    }

    public boolean equals(Object obj) {
        if (obj instanceof FirebaseApp) {
            return this.f4024e.equals(((FirebaseApp) obj).j());
        }
        return false;
    }

    @KeepForSdk
    public <T> T g(Class<T> cls) {
        f();
        return (T) this.f4026g.a(cls);
    }

    public int hashCode() {
        return this.f4024e.hashCode();
    }

    @NonNull
    public Context i() {
        f();
        return this.f4023d;
    }

    @NonNull
    public String j() {
        f();
        return this.f4024e;
    }

    @NonNull
    public FirebaseOptions k() {
        f();
        return this.f4025f;
    }

    @KeepForSdk
    public String l() {
        return Base64Utils.encodeUrlSafeNoPadding(j().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(k().b().getBytes(Charset.defaultCharset()));
    }

    @KeepForSdk
    public boolean n() {
        f();
        return this.j.get().b();
    }

    @KeepForSdk
    @VisibleForTesting
    public boolean o() {
        return "[DEFAULT]".equals(j());
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", this.f4024e).add(SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, this.f4025f).toString();
    }
}
