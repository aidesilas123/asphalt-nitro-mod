package com.applovin.impl.sdk.e;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.applovin.impl.sdk.e.a {
    private final com.applovin.impl.sdk.d.e aHi;
    private final String aTA;
    private final boolean aTB;
    private final a aTC;
    private final List<String> aTp;
    private final com.applovin.impl.sdk.ad.e aiL;
    private final com.applovin.impl.sdk.n sdk;

    public interface a {
        void q(@Nullable Uri uri);
    }

    public c(String str, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.d.e eVar2, com.applovin.impl.sdk.n nVar, a aVar) {
        this(str, eVar, eVar.Gx(), true, eVar2, nVar, aVar);
    }

    public c(String str, com.applovin.impl.sdk.ad.e eVar, List<String> list, boolean z, com.applovin.impl.sdk.d.e eVar2, com.applovin.impl.sdk.n nVar, a aVar) {
        super("AsyncTaskCacheResource", nVar);
        this.aTA = str;
        this.aiL = eVar;
        this.aTp = list;
        this.aTB = z;
        this.aHi = eVar2;
        this.sdk = nVar;
        this.aTC = aVar;
    }

    private void r(@Nullable Uri uri) {
        a aVar;
        if (this.aTn.get() || (aVar = this.aTC) == null) {
            return;
        }
        aVar.q(uri);
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: Kc, reason: merged with bridge method [inline-methods] */
    public Boolean call() throws Exception {
        if (this.aTn.get()) {
            return Boolean.FALSE;
        }
        String strA = this.sdk.Cc().a(rQ(), this.aTA, this.aiL.getCachePrefix(), this.aTp, this.aTB, this.aHi);
        if (TextUtils.isEmpty(strA)) {
            r(null);
            return Boolean.FALSE;
        }
        if (this.aTn.get()) {
            return Boolean.FALSE;
        }
        File fileA = this.sdk.Cc().a(strA, rQ());
        if (fileA == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Unable to retrieve File for cached filename = " + strA);
            }
            r(null);
            return Boolean.FALSE;
        }
        if (this.aTn.get()) {
            return Boolean.FALSE;
        }
        Uri uriFromFile = Uri.fromFile(fileA);
        if (uriFromFile == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Unable to extract Uri from file");
            }
            r(null);
            return Boolean.FALSE;
        }
        if (this.aTn.get()) {
            return Boolean.FALSE;
        }
        r(uriFromFile);
        return Boolean.TRUE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.aTA.equals(((c) obj).aTA);
    }

    public int hashCode() {
        String str = this.aTA;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }
}
