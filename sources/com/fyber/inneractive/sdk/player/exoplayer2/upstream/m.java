package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements g {
    public final g a;
    public final g b;
    public final g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g f2584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public g f2585e;

    public m(Context context, a0<? super g> a0Var, g gVar) {
        this.a = (g) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(gVar);
        this.b = new q(a0Var);
        this.c = new c(context, a0Var);
        this.f2584d = new e(context, a0Var);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public int a(byte[] bArr, int i, int i2) throws IOException {
        return this.f2585e.a(bArr, i, i2);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public long a(j jVar) throws IOException {
        boolean z = true;
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.f2585e == null);
        String scheme = jVar.a.getScheme();
        Uri uri = jVar.a;
        int i = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a;
        String scheme2 = uri.getScheme();
        if (!TextUtils.isEmpty(scheme2) && !scheme2.equals("file")) {
            z = false;
        }
        if (z) {
            if (jVar.a.getPath().startsWith("/android_asset/")) {
                this.f2585e = this.c;
            } else {
                this.f2585e = this.b;
            }
        } else if ("asset".equals(scheme)) {
            this.f2585e = this.c;
        } else if (AppLovinEventTypes.USER_VIEWED_CONTENT.equals(scheme)) {
            this.f2585e = this.f2584d;
        } else {
            this.f2585e = this.a;
        }
        return this.f2585e.a(jVar);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public Uri a() {
        g gVar = this.f2585e;
        if (gVar == null) {
            return null;
        }
        return gVar.a();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public void close() throws IOException {
        g gVar = this.f2585e;
        if (gVar != null) {
            try {
                gVar.close();
            } finally {
                this.f2585e = null;
            }
        }
    }
}
