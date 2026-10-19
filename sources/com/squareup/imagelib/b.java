package com.squareup.imagelib;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.u;
import java.io.IOException;

/* JADX INFO: compiled from: AssetRequestHandler.java */
/* JADX INFO: loaded from: classes4.dex */
class b extends u {
    private static final int a = 22;
    private final AssetManager b;

    public b(Context context) {
        this.b = context.getAssets();
    }

    static String j(s sVar) {
        return sVar.f7764e.toString().substring(a);
    }

    @Override // com.squareup.imagelib.u
    public boolean c(s sVar) {
        Uri uri = sVar.f7764e;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // com.squareup.imagelib.u
    public u.a f(s sVar, int i) throws IOException {
        return new u.a(this.b.open(j(sVar)), Picasso.LoadedFrom.DISK);
    }
}
