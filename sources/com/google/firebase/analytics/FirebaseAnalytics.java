package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzio;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.FirebaseInstallations;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics a;
    private final zzee b;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
    public enum ConsentStatus {
        GRANTED,
        DENIED
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
    public enum ConsentType {
        AD_STORAGE,
        ANALYTICS_STORAGE
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
    public static class Event {
        protected Event() {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
    public static class Param {
        protected Param() {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
    public static class UserProperty {
        protected UserProperty() {
        }
    }

    public FirebaseAnalytics(zzee zzeeVar) {
        Preconditions.checkNotNull(zzeeVar);
        this.b = zzeeVar;
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (a == null) {
            synchronized (FirebaseAnalytics.class) {
                if (a == null) {
                    a = new FirebaseAnalytics(zzee.zzg(context, null, null, null, null));
                }
            }
        }
        return a;
    }

    @Nullable
    @Keep
    public static zzio getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        zzee zzeeVarZzg = zzee.zzg(context, null, null, null, bundle);
        if (zzeeVarZzg == null) {
            return null;
        }
        return new zzc(zzeeVarZzg);
    }

    public void a(@NonNull @Size(max = 40, min = 1) String str, @Nullable Bundle bundle) {
        this.b.zzx(str, bundle);
    }

    public void b() {
        this.b.zzC();
    }

    @NonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(FirebaseInstallations.getInstance().getId(), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            throw new IllegalStateException(e2);
        } catch (ExecutionException e3) {
            throw new IllegalStateException(e3.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @MainThread
    @Deprecated
    public void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.b.zzG(activity, str, str2);
    }
}
