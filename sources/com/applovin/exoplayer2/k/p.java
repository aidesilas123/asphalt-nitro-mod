package com.applovin.exoplayer2.k;

import android.content.Context;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.k.i;
import com.applovin.exoplayer2.k.q;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class p implements i.a {
    private final Context E;
    private final i.a aas;

    @Nullable
    private final aa aat;

    public p(Context context, @Nullable aa aaVar, i.a aVar) {
        this.E = context.getApplicationContext();
        this.aat = aaVar;
        this.aas = aVar;
    }

    public p(Context context, @Nullable String str) {
        this(context, str, (aa) null);
    }

    public p(Context context, @Nullable String str, @Nullable aa aaVar) {
        this(context, aaVar, new q.a().aO(str));
    }

    @Override // com.applovin.exoplayer2.k.i.a
    /* JADX INFO: renamed from: ou, reason: merged with bridge method [inline-methods] */
    public o ox() {
        o oVar = new o(this.E, this.aas.ox());
        aa aaVar = this.aat;
        if (aaVar != null) {
            oVar.c(aaVar);
        }
        return oVar;
    }
}
