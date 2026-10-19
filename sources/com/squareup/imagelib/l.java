package com.squareup.imagelib;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.u;
import java.io.IOException;

/* JADX INFO: compiled from: FileRequestHandler.java */
/* JADX INFO: loaded from: classes4.dex */
class l extends g {
    l(Context context) {
        super(context);
    }

    static int k(Uri uri) throws IOException {
        return new ExifInterface(uri.getPath()).getAttributeInt("Orientation", 1);
    }

    @Override // com.squareup.imagelib.g, com.squareup.imagelib.u
    public boolean c(s sVar) {
        return "file".equals(sVar.f7764e.getScheme());
    }

    @Override // com.squareup.imagelib.g, com.squareup.imagelib.u
    public u.a f(s sVar, int i) throws IOException {
        return new u.a(null, j(sVar), Picasso.LoadedFrom.DISK, k(sVar.f7764e));
    }
}
