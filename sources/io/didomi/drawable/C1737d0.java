package io.didomi.drawable;

import android.content.SharedPreferences;
import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: renamed from: io.didomi.sdk.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1737d0 implements b<SharedPreferences> {
    private final C1717b0 a;

    public C1737d0(C1717b0 c1717b0) {
        this.a = c1717b0;
    }

    public static C1737d0 a(C1717b0 c1717b0) {
        return new C1737d0(c1717b0);
    }

    public static SharedPreferences b(C1717b0 c1717b0) {
        return (SharedPreferences) Preconditions.checkNotNullFromProvides(c1717b0.b());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SharedPreferences get() {
        return b(this.a);
    }
}
