package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import com.google.firebase.platforminfo.UserAgentPublisher;
import com.json.v4;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes3.dex */
class GmsRpc {
    private final FirebaseApp a;
    private final Metadata b;
    private final Rpc c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider<UserAgentPublisher> f4145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Provider<HeartBeatInfo> f4146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final FirebaseInstallationsApi f4147f;

    @VisibleForTesting
    GmsRpc(FirebaseApp firebaseApp, Metadata metadata, Rpc rpc, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.a = firebaseApp;
        this.b = metadata;
        this.c = rpc;
        this.f4145d = provider;
        this.f4146e = provider2;
        this.f4147f = firebaseInstallationsApi;
    }

    GmsRpc(FirebaseApp firebaseApp, Metadata metadata, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi) {
        this(firebaseApp, metadata, new Rpc(firebaseApp.i()), provider, provider2, firebaseInstallationsApi);
    }

    private static String a(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private Task<String> b(Task<Bundle> task) {
        return task.continueWith(t.a, new Continuation() { // from class: com.google.firebase.messaging.q
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.a.h(task2);
            }
        });
    }

    private String c() {
        try {
            return a(MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1).digest(this.a.j().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    @AnyThread
    private String e(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("unregistered");
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if ("RST".equals(string3)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string3 != null) {
            throw new IOException(string3);
        }
        Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    static boolean f(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String h(Task task) throws Exception {
        return e((Bundle) task.getResult(IOException.class));
    }

    private void i(String str, String str2, Bundle bundle) throws ExecutionException, InterruptedException {
        HeartBeatInfo.HeartBeat heartBeatB;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("gmp_app_id", this.a.k().b());
        bundle.putString("gmsv", Integer.toString(this.b.d()));
        bundle.putString(v4.y, Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.b.a());
        bundle.putString("app_ver_name", this.b.b());
        bundle.putString("firebase-app-name-hash", c());
        try {
            String strA = ((InstallationTokenResult) Tasks.await(this.f4147f.a(false))).a();
            if (TextUtils.isEmpty(strA)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", strA);
            }
        } catch (InterruptedException | ExecutionException e2) {
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e2);
        }
        bundle.putString("appid", (String) Tasks.await(this.f4147f.getId()));
        bundle.putString("cliv", "fcm-23.0.2");
        HeartBeatInfo heartBeatInfo = this.f4146e.get();
        UserAgentPublisher userAgentPublisher = this.f4145d.get();
        if (heartBeatInfo == null || userAgentPublisher == null || (heartBeatB = heartBeatInfo.b("fire-iid")) == HeartBeatInfo.HeartBeat.NONE) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(heartBeatB.e()));
        bundle.putString("Firebase-Client", userAgentPublisher.getUserAgent());
    }

    private Task<Bundle> j(String str, String str2, Bundle bundle) {
        try {
            i(str, str2, bundle);
            return this.c.send(bundle);
        } catch (InterruptedException | ExecutionException e2) {
            return Tasks.forException(e2);
        }
    }

    Task<String> d() {
        return b(j(Metadata.c(this.a), ProxyConfig.MATCH_ALL_SCHEMES, new Bundle()));
    }

    Task<?> k(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return b(j(str, "/topics/" + str2, bundle));
    }

    Task<?> l(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString("delete", "1");
        return b(j(str, "/topics/" + str2, bundle));
    }
}
