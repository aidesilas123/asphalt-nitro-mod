package com.applovin.exoplayer2.e.c;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.y;

/* JADX INFO: loaded from: classes.dex */
abstract class d {
    protected final x wl;

    public static final class a extends ai {
        public a(String str) {
            super(str, null, false, 1);
        }
    }

    protected d(x xVar) {
        this.wl = xVar;
    }

    protected abstract boolean a(y yVar, long j) throws ai;

    public final boolean b(y yVar, long j) throws ai {
        return e(yVar) && a(yVar, j);
    }

    protected abstract boolean e(y yVar) throws ai;
}
