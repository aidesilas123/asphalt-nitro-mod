package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.AndroidClientInfo;

/* JADX INFO: compiled from: AutoValue_AndroidClientInfo.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends AndroidClientInfo {
    private final Integer a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f2988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f2989g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;

    /* JADX INFO: renamed from: com.google.android.datatransport.cct.internal.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoValue_AndroidClientInfo.java */
    static final class C0222b extends AndroidClientInfo.a {
        private Integer a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2990d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2991e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f2992f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f2993g;
        private String h;
        private String i;
        private String j;
        private String k;
        private String l;

        C0222b() {
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo a() {
            return new b(this.a, this.b, this.c, this.f2990d, this.f2991e, this.f2992f, this.f2993g, this.h, this.i, this.j, this.k, this.l);
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a b(@Nullable String str) {
            this.l = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a c(@Nullable String str) {
            this.j = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a d(@Nullable String str) {
            this.f2990d = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a e(@Nullable String str) {
            this.h = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a f(@Nullable String str) {
            this.c = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a g(@Nullable String str) {
            this.i = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a h(@Nullable String str) {
            this.f2993g = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a i(@Nullable String str) {
            this.k = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a j(@Nullable String str) {
            this.b = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a k(@Nullable String str) {
            this.f2992f = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a l(@Nullable String str) {
            this.f2991e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.a
        public AndroidClientInfo.a m(@Nullable Integer num) {
            this.a = num;
            return this;
        }
    }

    private b(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11) {
        this.a = num;
        this.b = str;
        this.c = str2;
        this.f2986d = str3;
        this.f2987e = str4;
        this.f2988f = str5;
        this.f2989g = str6;
        this.h = str7;
        this.i = str8;
        this.j = str9;
        this.k = str10;
        this.l = str11;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String a() {
        return this.l;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String b() {
        return this.j;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String c() {
        return this.f2986d;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String d() {
        return this.h;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AndroidClientInfo)) {
            return false;
        }
        AndroidClientInfo androidClientInfo = (AndroidClientInfo) obj;
        Integer num = this.a;
        if (num != null ? num.equals(androidClientInfo.l()) : androidClientInfo.l() == null) {
            String str = this.b;
            if (str != null ? str.equals(androidClientInfo.i()) : androidClientInfo.i() == null) {
                String str2 = this.c;
                if (str2 != null ? str2.equals(androidClientInfo.e()) : androidClientInfo.e() == null) {
                    String str3 = this.f2986d;
                    if (str3 != null ? str3.equals(androidClientInfo.c()) : androidClientInfo.c() == null) {
                        String str4 = this.f2987e;
                        if (str4 != null ? str4.equals(androidClientInfo.k()) : androidClientInfo.k() == null) {
                            String str5 = this.f2988f;
                            if (str5 != null ? str5.equals(androidClientInfo.j()) : androidClientInfo.j() == null) {
                                String str6 = this.f2989g;
                                if (str6 != null ? str6.equals(androidClientInfo.g()) : androidClientInfo.g() == null) {
                                    String str7 = this.h;
                                    if (str7 != null ? str7.equals(androidClientInfo.d()) : androidClientInfo.d() == null) {
                                        String str8 = this.i;
                                        if (str8 != null ? str8.equals(androidClientInfo.f()) : androidClientInfo.f() == null) {
                                            String str9 = this.j;
                                            if (str9 != null ? str9.equals(androidClientInfo.b()) : androidClientInfo.b() == null) {
                                                String str10 = this.k;
                                                if (str10 != null ? str10.equals(androidClientInfo.h()) : androidClientInfo.h() == null) {
                                                    String str11 = this.l;
                                                    if (str11 == null) {
                                                        if (androidClientInfo.a() == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(androidClientInfo.a())) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String f() {
        return this.i;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String g() {
        return this.f2989g;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String h() {
        return this.k;
    }

    public int hashCode() {
        Integer num = this.a;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f2986d;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f2987e;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f2988f;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f2989g;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.h;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.i;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.j;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.k;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.l;
        return iHashCode11 ^ (str11 != null ? str11.hashCode() : 0);
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String i() {
        return this.b;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String j() {
        return this.f2988f;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public String k() {
        return this.f2987e;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    @Nullable
    public Integer l() {
        return this.a;
    }

    public String toString() {
        return "AndroidClientInfo{sdkVersion=" + this.a + ", model=" + this.b + ", hardware=" + this.c + ", device=" + this.f2986d + ", product=" + this.f2987e + ", osBuild=" + this.f2988f + ", manufacturer=" + this.f2989g + ", fingerprint=" + this.h + ", locale=" + this.i + ", country=" + this.j + ", mccMnc=" + this.k + ", applicationBuild=" + this.l + "}";
    }
}
