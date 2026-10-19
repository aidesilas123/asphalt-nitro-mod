package com.squareup.imagelib;

import android.content.Context;
import com.applovin.sdk.AppLovinEventTypes;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.u;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContentStreamRequestHandler.java */
/* JADX INFO: loaded from: classes4.dex */
class g extends u {
    final Context a;

    g(Context context) {
        this.a = context;
    }

    @Override // com.squareup.imagelib.u
    public boolean c(s sVar) {
        return AppLovinEventTypes.USER_VIEWED_CONTENT.equals(sVar.f7764e.getScheme());
    }

    @Override // com.squareup.imagelib.u
    public u.a f(s sVar, int i) throws IOException {
        return new u.a(j(sVar), Picasso.LoadedFrom.DISK);
    }

    InputStream j(s sVar) throws FileNotFoundException {
        return this.a.getContentResolver().openInputStream(sVar.f7764e);
    }
}
