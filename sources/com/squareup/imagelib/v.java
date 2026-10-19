package com.squareup.imagelib;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.u;
import java.io.IOException;

/* JADX INFO: compiled from: ResourceRequestHandler.java */
/* JADX INFO: loaded from: classes4.dex */
class v extends u {
    private final Context a;

    v(Context context) {
        this.a = context;
    }

    private static Bitmap j(Resources resources, int i, s sVar) {
        BitmapFactory.Options optionsD = u.d(sVar);
        if (u.g(optionsD)) {
            BitmapFactory.decodeResource(resources, i, optionsD);
            u.b(sVar.i, sVar.j, optionsD, sVar);
        }
        return BitmapFactory.decodeResource(resources, i, optionsD);
    }

    @Override // com.squareup.imagelib.u
    public boolean c(s sVar) {
        if (sVar.f7765f != 0) {
            return true;
        }
        return "android.resource".equals(sVar.f7764e.getScheme());
    }

    @Override // com.squareup.imagelib.u
    public u.a f(s sVar, int i) throws IOException {
        Resources resourcesO = a0.o(this.a, sVar);
        return new u.a(j(resourcesO, a0.n(resourcesO, sVar), sVar), Picasso.LoadedFrom.DISK);
    }
}
