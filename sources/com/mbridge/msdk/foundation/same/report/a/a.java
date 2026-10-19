package com.mbridge.msdk.foundation.same.report.a;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.db.l;
import com.mbridge.msdk.foundation.entity.h;
import com.mbridge.msdk.foundation.tools.w;

/* JADX INFO: compiled from: CampaignRequestTimeUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private h a;
    private com.mbridge.msdk.foundation.db.h b;
    private Context c;

    public a(h hVar) {
        Context context;
        this.b = null;
        this.a = hVar;
        Context contextG = b.d().g();
        this.c = contextG;
        this.b = com.mbridge.msdk.foundation.db.h.a(contextG);
        if (this.a == null || (context = this.c) == null) {
            return;
        }
        int iR = w.r(context);
        this.a.d(iR);
        this.a.c(w.a(this.c, iR));
    }

    public final void a() {
        if (this.a != null) {
            l.a(this.b).a(this.a);
        }
    }

    public final void a(int i) {
        h hVar = this.a;
        if (hVar != null) {
            hVar.b(i);
        }
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(str);
    }

    public final void b(int i) {
        h hVar = this.a;
        if (hVar != null) {
            hVar.c(i);
        }
    }

    public final void b(String str) {
        h hVar = this.a;
        if (hVar != null) {
            hVar.b(str);
        }
    }

    public final void c(int i) {
        h hVar = this.a;
        if (hVar != null) {
            hVar.a(i);
        }
    }
}
