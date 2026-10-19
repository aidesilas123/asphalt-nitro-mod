package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import com.google.firebase.installations.local.AutoValue_PersistedInstallationEntry;
import com.google.firebase.installations.local.PersistedInstallation;

/* JADX INFO: loaded from: classes3.dex */
@AutoValue
public abstract class PersistedInstallationEntry {

    @NonNull
    public static PersistedInstallationEntry a = builder().a();

    @AutoValue.Builder
    public static abstract class Builder {
        @NonNull
        public abstract PersistedInstallationEntry a();

        @NonNull
        public abstract Builder b(@Nullable String str);

        @NonNull
        public abstract Builder c(long j);

        @NonNull
        public abstract Builder d(@NonNull String str);

        @NonNull
        public abstract Builder e(@Nullable String str);

        @NonNull
        public abstract Builder f(@Nullable String str);

        @NonNull
        public abstract Builder g(@NonNull PersistedInstallation.RegistrationStatus registrationStatus);

        @NonNull
        public abstract Builder h(long j);
    }

    @NonNull
    public static Builder builder() {
        return new AutoValue_PersistedInstallationEntry.Builder().h(0L).g(PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION).c(0L);
    }

    @Nullable
    public abstract String a();

    public abstract long b();

    @Nullable
    public abstract String c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract String e();

    @NonNull
    public abstract PersistedInstallation.RegistrationStatus f();

    public abstract long g();

    public boolean h() {
        return f() == PersistedInstallation.RegistrationStatus.REGISTER_ERROR;
    }

    public boolean i() {
        return f() == PersistedInstallation.RegistrationStatus.NOT_GENERATED || f() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION;
    }

    public boolean j() {
        return f() == PersistedInstallation.RegistrationStatus.REGISTERED;
    }

    public boolean k() {
        return f() == PersistedInstallation.RegistrationStatus.UNREGISTERED;
    }

    public boolean l() {
        return f() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION;
    }

    @NonNull
    public abstract Builder m();

    @NonNull
    public PersistedInstallationEntry n(@NonNull String str, long j, long j2) {
        return m().b(str).c(j).h(j2).a();
    }

    @NonNull
    public PersistedInstallationEntry o() {
        return m().b(null).a();
    }

    @NonNull
    public PersistedInstallationEntry p(@NonNull String str) {
        return m().e(str).g(PersistedInstallation.RegistrationStatus.REGISTER_ERROR).a();
    }

    @NonNull
    public PersistedInstallationEntry q() {
        return m().g(PersistedInstallation.RegistrationStatus.NOT_GENERATED).a();
    }

    @NonNull
    public PersistedInstallationEntry r(@NonNull String str, @NonNull String str2, long j, @Nullable String str3, long j2) {
        return m().d(str).g(PersistedInstallation.RegistrationStatus.REGISTERED).b(str3).f(str2).c(j2).h(j).a();
    }

    @NonNull
    public PersistedInstallationEntry s(@NonNull String str) {
        return m().d(str).g(PersistedInstallation.RegistrationStatus.UNREGISTERED).a();
    }
}
