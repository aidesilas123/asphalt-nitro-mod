package com.google.android.ump;

import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public class ConsentRequestParameters {
    private final boolean a;

    @Nullable
    private final String b;

    @Nullable
    private final ConsentDebugSettings c;

    /* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.1.0 */
    public static final class Builder {
        private boolean a;

        @Nullable
        private String b;

        @Nullable
        private ConsentDebugSettings c;

        @RecentlyNonNull
        public ConsentRequestParameters build() {
            return new ConsentRequestParameters(this, null);
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setAdMobAppId(@Nullable String str) {
            this.b = str;
            return this;
        }

        @RecentlyNonNull
        public Builder setConsentDebugSettings(@Nullable ConsentDebugSettings consentDebugSettings) {
            this.c = consentDebugSettings;
            return this;
        }

        @RecentlyNonNull
        public Builder setTagForUnderAgeOfConsent(boolean z) {
            this.a = z;
            return this;
        }
    }

    /* synthetic */ ConsentRequestParameters(Builder builder, zzb zzbVar) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
    }

    @RecentlyNullable
    public ConsentDebugSettings getConsentDebugSettings() {
        return this.c;
    }

    public boolean isTagForUnderAgeOfConsent() {
        return this.a;
    }

    @RecentlyNullable
    public final String zza() {
        return this.b;
    }
}
