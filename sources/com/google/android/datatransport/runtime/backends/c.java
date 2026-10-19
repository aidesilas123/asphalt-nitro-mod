package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_CreationContext.java */
/* JADX INFO: loaded from: classes2.dex */
final class c extends CreationContext {
    private final Context a;
    private final com.google.android.datatransport.runtime.time.a b;
    private final com.google.android.datatransport.runtime.time.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3022d;

    c(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.a = context;
        Objects.requireNonNull(aVar, "Null wallClock");
        this.b = aVar;
        Objects.requireNonNull(aVar2, "Null monotonicClock");
        this.c = aVar2;
        Objects.requireNonNull(str, "Null backendName");
        this.f3022d = str;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public Context a() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    @NonNull
    public String b() {
        return this.f3022d;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public com.google.android.datatransport.runtime.time.a c() {
        return this.c;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public com.google.android.datatransport.runtime.time.a d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CreationContext)) {
            return false;
        }
        CreationContext creationContext = (CreationContext) obj;
        return this.a.equals(creationContext.a()) && this.b.equals(creationContext.d()) && this.c.equals(creationContext.c()) && this.f3022d.equals(creationContext.b());
    }

    public int hashCode() {
        return ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.f3022d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.a + ", wallClock=" + this.b + ", monotonicClock=" + this.c + ", backendName=" + this.f3022d + "}";
    }
}
