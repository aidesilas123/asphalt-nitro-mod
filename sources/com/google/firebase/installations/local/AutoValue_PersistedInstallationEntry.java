package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_PersistedInstallationEntry extends PersistedInstallationEntry {
    private final String b;
    private final PersistedInstallation.RegistrationStatus c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4111e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f4112f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f4113g;
    private final String h;

    static final class Builder extends PersistedInstallationEntry.Builder {
        private String a;
        private PersistedInstallation.RegistrationStatus b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f4114d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f4115e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Long f4116f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f4117g;

        Builder() {
        }

        private Builder(PersistedInstallationEntry persistedInstallationEntry) {
            this.a = persistedInstallationEntry.c();
            this.b = persistedInstallationEntry.f();
            this.c = persistedInstallationEntry.a();
            this.f4114d = persistedInstallationEntry.e();
            this.f4115e = Long.valueOf(persistedInstallationEntry.b());
            this.f4116f = Long.valueOf(persistedInstallationEntry.g());
            this.f4117g = persistedInstallationEntry.d();
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry a() {
            String str = "";
            if (this.b == null) {
                str = " registrationStatus";
            }
            if (this.f4115e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f4116f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new AutoValue_PersistedInstallationEntry(this.a, this.b, this.c, this.f4114d, this.f4115e.longValue(), this.f4116f.longValue(), this.f4117g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder b(@Nullable String str) {
            this.c = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder c(long j) {
            this.f4115e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder d(String str) {
            this.a = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder e(@Nullable String str) {
            this.f4117g = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder f(@Nullable String str) {
            this.f4114d = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder g(PersistedInstallation.RegistrationStatus registrationStatus) {
            Objects.requireNonNull(registrationStatus, "Null registrationStatus");
            this.b = registrationStatus;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public PersistedInstallationEntry.Builder h(long j) {
            this.f4116f = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_PersistedInstallationEntry(@Nullable String str, PersistedInstallation.RegistrationStatus registrationStatus, @Nullable String str2, @Nullable String str3, long j, long j2, @Nullable String str4) {
        this.b = str;
        this.c = registrationStatus;
        this.f4110d = str2;
        this.f4111e = str3;
        this.f4112f = j;
        this.f4113g = j2;
        this.h = str4;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String a() {
        return this.f4110d;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public long b() {
        return this.f4112f;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String c() {
        return this.b;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String d() {
        return this.h;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @Nullable
    public String e() {
        return this.f4111e;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersistedInstallationEntry)) {
            return false;
        }
        PersistedInstallationEntry persistedInstallationEntry = (PersistedInstallationEntry) obj;
        String str3 = this.b;
        if (str3 != null ? str3.equals(persistedInstallationEntry.c()) : persistedInstallationEntry.c() == null) {
            if (this.c.equals(persistedInstallationEntry.f()) && ((str = this.f4110d) != null ? str.equals(persistedInstallationEntry.a()) : persistedInstallationEntry.a() == null) && ((str2 = this.f4111e) != null ? str2.equals(persistedInstallationEntry.e()) : persistedInstallationEntry.e() == null) && this.f4112f == persistedInstallationEntry.b() && this.f4113g == persistedInstallationEntry.g()) {
                String str4 = this.h;
                if (str4 == null) {
                    if (persistedInstallationEntry.d() == null) {
                        return true;
                    }
                } else if (str4.equals(persistedInstallationEntry.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    @NonNull
    public PersistedInstallation.RegistrationStatus f() {
        return this.c;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public long g() {
        return this.f4113g;
    }

    public int hashCode() {
        String str = this.b;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003;
        String str2 = this.f4110d;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f4111e;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j = this.f4112f;
        int i = (iHashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f4113g;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.h;
        return i2 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public PersistedInstallationEntry.Builder m() {
        return new Builder(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.b + ", registrationStatus=" + this.c + ", authToken=" + this.f4110d + ", refreshToken=" + this.f4111e + ", expiresInSecs=" + this.f4112f + ", tokenCreationEpochInSecs=" + this.f4113g + ", fisError=" + this.h + "}";
    }
}
