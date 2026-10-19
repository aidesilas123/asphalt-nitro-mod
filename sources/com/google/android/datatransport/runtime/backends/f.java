package com.google.android.datatransport.runtime.backends;

import android.content.Context;

/* JADX INFO: compiled from: CreationContextFactory.java */
/* JADX INFO: loaded from: classes2.dex */
class f {
    private final Context a;
    private final com.google.android.datatransport.runtime.time.a b;
    private final com.google.android.datatransport.runtime.time.a c;

    f(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2) {
        this.a = context;
        this.b = aVar;
        this.c = aVar2;
    }

    CreationContext a(String str) {
        return CreationContext.create(this.a, this.b, this.c, str);
    }
}
