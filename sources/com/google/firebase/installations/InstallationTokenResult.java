package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import com.google.firebase.installations.AutoValue_InstallationTokenResult;

/* JADX INFO: loaded from: classes3.dex */
@AutoValue
public abstract class InstallationTokenResult {

    @AutoValue.Builder
    public static abstract class Builder {
        @NonNull
        public abstract InstallationTokenResult a();

        @NonNull
        public abstract Builder b(@NonNull String str);

        @NonNull
        public abstract Builder c(long j);

        @NonNull
        public abstract Builder d(long j);
    }

    @NonNull
    public static Builder builder() {
        return new AutoValue_InstallationTokenResult.Builder();
    }

    @NonNull
    public abstract String a();

    @NonNull
    public abstract long b();

    @NonNull
    public abstract long c();
}
