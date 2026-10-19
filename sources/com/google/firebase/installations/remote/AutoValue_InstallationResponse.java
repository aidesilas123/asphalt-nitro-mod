package com.google.firebase.installations.remote;

import androidx.annotation.Nullable;
import com.google.firebase.installations.remote.InstallationResponse;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_InstallationResponse extends InstallationResponse {
    private final String a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TokenResult f4121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final InstallationResponse.ResponseCode f4122e;

    static final class Builder extends InstallationResponse.Builder {
        private String a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TokenResult f4123d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private InstallationResponse.ResponseCode f4124e;

        Builder() {
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse a() {
            return new AutoValue_InstallationResponse(this.a, this.b, this.c, this.f4123d, this.f4124e);
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder b(TokenResult tokenResult) {
            this.f4123d = tokenResult;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder c(String str) {
            this.b = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder d(String str) {
            this.c = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder e(InstallationResponse.ResponseCode responseCode) {
            this.f4124e = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.Builder
        public InstallationResponse.Builder f(String str) {
            this.a = str;
            return this;
        }
    }

    private AutoValue_InstallationResponse(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable TokenResult tokenResult, @Nullable InstallationResponse.ResponseCode responseCode) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.f4121d = tokenResult;
        this.f4122e = responseCode;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public TokenResult a() {
        return this.f4121d;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String b() {
        return this.b;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String c() {
        return this.c;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public InstallationResponse.ResponseCode d() {
        return this.f4122e;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    @Nullable
    public String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.a;
        if (str != null ? str.equals(installationResponse.e()) : installationResponse.e() == null) {
            String str2 = this.b;
            if (str2 != null ? str2.equals(installationResponse.b()) : installationResponse.b() == null) {
                String str3 = this.c;
                if (str3 != null ? str3.equals(installationResponse.c()) : installationResponse.c() == null) {
                    TokenResult tokenResult = this.f4121d;
                    if (tokenResult != null ? tokenResult.equals(installationResponse.a()) : installationResponse.a() == null) {
                        InstallationResponse.ResponseCode responseCode = this.f4122e;
                        if (responseCode == null) {
                            if (installationResponse.d() == null) {
                                return true;
                            }
                        } else if (responseCode.equals(installationResponse.d())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        TokenResult tokenResult = this.f4121d;
        int iHashCode4 = (iHashCode3 ^ (tokenResult == null ? 0 : tokenResult.hashCode())) * 1000003;
        InstallationResponse.ResponseCode responseCode = this.f4122e;
        return iHashCode4 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.a + ", fid=" + this.b + ", refreshToken=" + this.c + ", authToken=" + this.f4121d + ", responseCode=" + this.f4122e + "}";
    }
}
