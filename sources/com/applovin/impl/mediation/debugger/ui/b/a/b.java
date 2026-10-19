package com.applovin.impl.mediation.debugger.ui.b.a;

import android.content.Context;
import android.text.SpannedString;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.privacy.a;

/* JADX INFO: loaded from: classes.dex */
public class b extends c {
    private final Context E;
    private final a.C0076a arW;
    private final boolean arX;

    public b(a.C0076a c0076a, boolean z, Context context) {
        super(c.b.RIGHT_DETAIL);
        this.arW = c0076a;
        this.E = context;
        this.asv = new SpannedString(c0076a.getName());
        this.arX = z;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public boolean isEnabled() {
        return false;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public SpannedString wG() {
        return new SpannedString(this.arW.C(this.E));
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public boolean wH() {
        Boolean boolB = this.arW.B(this.E);
        if (boolB != null) {
            return boolB.equals(Boolean.valueOf(this.arX));
        }
        return false;
    }
}
