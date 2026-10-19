package com.squareup.imagelib;

import android.graphics.Bitmap;
import com.squareup.imagelib.Picasso;

/* JADX INFO: compiled from: FetchAction.java */
/* JADX INFO: loaded from: classes4.dex */
class k extends a<Object> {
    private final Object m;
    private e n;

    k(Picasso picasso, s sVar, int i, int i2, Object obj, String str, e eVar) {
        super(picasso, null, sVar, i, i2, 0, null, str, obj, false);
        this.m = new Object();
        this.n = eVar;
    }

    @Override // com.squareup.imagelib.a
    void a() {
        super.a();
        this.n = null;
    }

    @Override // com.squareup.imagelib.a
    void b(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        e eVar = this.n;
        if (eVar != null) {
            eVar.onSuccess();
        }
    }

    @Override // com.squareup.imagelib.a
    void c() {
        e eVar = this.n;
        if (eVar != null) {
            eVar.onError();
        }
    }

    @Override // com.squareup.imagelib.a
    Object k() {
        return this.m;
    }
}
