package com.applovin.exoplayer2.i.a;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.c.i;
import com.applovin.exoplayer2.i.a.c;
import com.applovin.exoplayer2.i.g;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.i.j;
import com.applovin.exoplayer2.i.k;
import com.applovin.exoplayer2.l.ai;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
abstract class c implements g {
    private long KL;
    private final ArrayDeque<a> Qg = new ArrayDeque<>();
    private final ArrayDeque<k> Qh;
    private final PriorityQueue<a> Qi;

    @Nullable
    private a Qj;
    private long Qk;

    private static final class a extends j implements Comparable<a> {
        private long Qk;

        private a() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            if (gY() != aVar.gY()) {
                return gY() ? 1 : -1;
            }
            long j = this.rJ - aVar.rJ;
            if (j == 0) {
                j = this.Qk - aVar.Qk;
                if (j == 0) {
                    return 0;
                }
            }
            return j > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b extends k {
        private i.a<b> Os;

        public b(i.a<b> aVar) {
            this.Os = aVar;
        }

        @Override // com.applovin.exoplayer2.c.i
        public final void release() {
            this.Os.releaseOutputBuffer(this);
        }
    }

    public c() {
        for (int i = 0; i < 10; i++) {
            this.Qg.add(new a());
        }
        this.Qh = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.Qh.add(new b(new i.a() { // from class: com.applovin.exoplayer2.i.a.e
                @Override // com.applovin.exoplayer2.c.i.a
                public final void releaseOutputBuffer(i iVar) {
                    this.a.a((c.b) iVar);
                }
            }));
        }
        this.Qi = new PriorityQueue<>();
    }

    private void a(a aVar) {
        aVar.clear();
        this.Qg.add(aVar);
    }

    @Override // com.applovin.exoplayer2.c.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void D(j jVar) throws h {
        com.applovin.exoplayer2.l.a.checkArgument(jVar == this.Qj);
        a aVar = (a) jVar;
        if (aVar.gX()) {
            a(aVar);
        } else {
            long j = this.Qk;
            this.Qk = 1 + j;
            aVar.Qk = j;
            this.Qi.add(aVar);
        }
        this.Qj = null;
    }

    protected void a(k kVar) {
        kVar.clear();
        this.Qh.add(kVar);
    }

    protected final long au() {
        return this.KL;
    }

    protected abstract void b(j jVar);

    @Override // com.applovin.exoplayer2.i.g
    public void bd(long j) {
        this.KL = j;
    }

    @Override // com.applovin.exoplayer2.c.d
    public void dI() {
        this.Qk = 0L;
        this.KL = 0L;
        while (!this.Qi.isEmpty()) {
            a((a) ai.R(this.Qi.poll()));
        }
        a aVar = this.Qj;
        if (aVar != null) {
            a(aVar);
            this.Qj = null;
        }
    }

    @Override // com.applovin.exoplayer2.c.d
    @Nullable
    /* JADX INFO: renamed from: lV, reason: merged with bridge method [inline-methods] */
    public j hc() throws h {
        com.applovin.exoplayer2.l.a.checkState(this.Qj == null);
        if (this.Qg.isEmpty()) {
            return null;
        }
        a aVarPollFirst = this.Qg.pollFirst();
        this.Qj = aVarPollFirst;
        return aVarPollFirst;
    }

    @Override // com.applovin.exoplayer2.c.d
    @Nullable
    /* JADX INFO: renamed from: lW, reason: merged with bridge method [inline-methods] */
    public k hd() throws h {
        if (this.Qh.isEmpty()) {
            return null;
        }
        while (!this.Qi.isEmpty() && ((a) ai.R(this.Qi.peek())).rJ <= this.KL) {
            a aVar = (a) ai.R(this.Qi.poll());
            if (aVar.gY()) {
                k kVar = (k) ai.R(this.Qh.pollFirst());
                kVar.bt(4);
                a(aVar);
                return kVar;
            }
            b(aVar);
            if (mg()) {
                com.applovin.exoplayer2.i.f fVarMh = mh();
                k kVar2 = (k) ai.R(this.Qh.pollFirst());
                kVar2.a(aVar.rJ, fVarMh, Long.MAX_VALUE);
                a(aVar);
                return kVar2;
            }
            a(aVar);
        }
        return null;
    }

    @Nullable
    protected final k mA() {
        return this.Qh.pollFirst();
    }

    protected abstract boolean mg();

    protected abstract com.applovin.exoplayer2.i.f mh();

    @Override // com.applovin.exoplayer2.c.d
    public void release() {
    }
}
