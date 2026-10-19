package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.b;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class AndroidClientInfo {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract AndroidClientInfo a();

        @NonNull
        public abstract a b(@Nullable String str);

        @NonNull
        public abstract a c(@Nullable String str);

        @NonNull
        public abstract a d(@Nullable String str);

        @NonNull
        public abstract a e(@Nullable String str);

        @NonNull
        public abstract a f(@Nullable String str);

        @NonNull
        public abstract a g(@Nullable String str);

        @NonNull
        public abstract a h(@Nullable String str);

        @NonNull
        public abstract a i(@Nullable String str);

        @NonNull
        public abstract a j(@Nullable String str);

        @NonNull
        public abstract a k(@Nullable String str);

        @NonNull
        public abstract a l(@Nullable String str);

        @NonNull
        public abstract a m(@Nullable Integer num);
    }

    @NonNull
    public static a builder() {
        return new b.C0222b();
    }

    @Nullable
    public abstract String a();

    @Nullable
    public abstract String b();

    @Nullable
    public abstract String c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract String e();

    @Nullable
    public abstract String f();

    @Nullable
    public abstract String g();

    @Nullable
    public abstract String h();

    @Nullable
    public abstract String i();

    @Nullable
    public abstract String j();

    @Nullable
    public abstract String k();

    @Nullable
    public abstract Integer l();
}
