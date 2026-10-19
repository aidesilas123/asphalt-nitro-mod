package io.didomi.drawable;

import android.content.SharedPreferences;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class N8 implements b<M8> {
    private final a<SharedPreferences> a;

    public N8(a<SharedPreferences> aVar) {
        this.a = aVar;
    }

    public static M8 a(SharedPreferences sharedPreferences) {
        return new M8(sharedPreferences);
    }

    public static N8 a(a<SharedPreferences> aVar) {
        return new N8(aVar);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public M8 get() {
        return a(this.a.get());
    }
}
