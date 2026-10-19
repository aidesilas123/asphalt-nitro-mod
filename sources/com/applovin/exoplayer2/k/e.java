package com.applovin.exoplayer2.k;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class e implements i {
    private final boolean Zn;
    private final ArrayList<aa> Zo = new ArrayList<>(1);
    private int Zp;

    @Nullable
    private l tw;

    protected e(boolean z) {
        this.Zn = z;
    }

    protected final void b(l lVar) {
        for (int i = 0; i < this.Zp; i++) {
            this.Zo.get(i).a(this, lVar, this.Zn);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public final void c(aa aaVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(aaVar);
        if (this.Zo.contains(aaVar)) {
            return;
        }
        this.Zo.add(aaVar);
        this.Zp++;
    }

    protected final void c(l lVar) {
        this.tw = lVar;
        for (int i = 0; i < this.Zp; i++) {
            this.Zo.get(i).b(this, lVar, this.Zn);
        }
    }

    protected final void fe(int i) {
        l lVar = (l) ai.R(this.tw);
        for (int i2 = 0; i2 < this.Zp; i2++) {
            this.Zo.get(i2).a(this, lVar, this.Zn, i);
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public /* synthetic */ Map kT() {
        return f0.a(this);
    }

    protected final void oe() {
        l lVar = (l) ai.R(this.tw);
        for (int i = 0; i < this.Zp; i++) {
            this.Zo.get(i).c(this, lVar, this.Zn);
        }
        this.tw = null;
    }
}
