package com.google.android.ump;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.consent_sdk.zzcn;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public class ConsentDebugSettings {
    private final boolean a;
    private final int b;

    /* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
    public static class Builder {
        private final Context b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3475d;
        private final List a = new ArrayList();
        private int c = 0;

        public Builder(@RecentlyNonNull Context context) {
            this.b = context.getApplicationContext();
        }

        @RecentlyNonNull
        public Builder addTestDeviceHashedId(@RecentlyNonNull String str) {
            this.a.add(str);
            return this;
        }

        @RecentlyNonNull
        public ConsentDebugSettings build() {
            Context context = this.b;
            List list = this.a;
            boolean z = true;
            if (!zzcn.zzb() && !list.contains(zzcn.zza(context)) && !this.f3475d) {
                z = false;
            }
            return new ConsentDebugSettings(z, this, null);
        }

        @RecentlyNonNull
        public Builder setDebugGeography(int i) {
            this.c = i;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setForceTesting(boolean z) {
            this.f3475d = z;
            return this;
        }
    }

    /* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface DebugGeography {
        public static final int DEBUG_GEOGRAPHY_DISABLED = 0;
        public static final int DEBUG_GEOGRAPHY_EEA = 1;
        public static final int DEBUG_GEOGRAPHY_NOT_EEA = 2;
    }

    /* synthetic */ ConsentDebugSettings(boolean z, Builder builder, zza zzaVar) {
        this.a = z;
        this.b = builder.c;
    }

    public int getDebugGeography() {
        return this.b;
    }

    public boolean isTestDevice() {
        return this.a;
    }
}
