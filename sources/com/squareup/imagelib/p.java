package com.squareup.imagelib;

import android.graphics.Bitmap;
import android.net.NetworkInfo;
import androidx.webkit.ProxyConfig;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.j;
import com.squareup.imagelib.u;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: NetworkRequestHandler.java */
/* JADX INFO: loaded from: classes4.dex */
class p extends u {
    private final j a;
    private final w b;

    /* JADX INFO: compiled from: NetworkRequestHandler.java */
    static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public p(j jVar, w wVar) {
        this.a = jVar;
        this.b = wVar;
    }

    @Override // com.squareup.imagelib.u
    public boolean c(s sVar) {
        String scheme = sVar.f7764e.getScheme();
        return ProxyConfig.MATCH_HTTP.equals(scheme) || "https".equals(scheme);
    }

    @Override // com.squareup.imagelib.u
    int e() {
        return 2;
    }

    @Override // com.squareup.imagelib.u
    public u.a f(s sVar, int i) throws IOException {
        j.a aVarA = this.a.a(sVar.f7764e, sVar.f7763d);
        if (aVarA == null) {
            return null;
        }
        Picasso.LoadedFrom loadedFrom = aVarA.c ? Picasso.LoadedFrom.DISK : Picasso.LoadedFrom.NETWORK;
        Bitmap bitmapA = aVarA.a();
        if (bitmapA != null) {
            return new u.a(bitmapA, loadedFrom);
        }
        InputStream inputStreamC = aVarA.c();
        if (inputStreamC == null) {
            return null;
        }
        if (loadedFrom == Picasso.LoadedFrom.DISK && aVarA.b() == 0) {
            a0.e(inputStreamC);
            throw new a("Received response with 0 content-length header.");
        }
        if (loadedFrom == Picasso.LoadedFrom.NETWORK && aVarA.b() > 0) {
            this.b.f(aVarA.b());
        }
        return new u.a(inputStreamC, loadedFrom);
    }

    @Override // com.squareup.imagelib.u
    boolean h(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // com.squareup.imagelib.u
    boolean i() {
        return true;
    }
}
