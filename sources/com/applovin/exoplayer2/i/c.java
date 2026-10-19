package com.applovin.exoplayer2.i;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.c.i;
import com.applovin.exoplayer2.common.a.s;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c implements g {
    private final b On = new b();
    private final j Oo = new j();
    private final Deque<k> Op = new ArrayDeque();
    private int Oq;
    private boolean cw;

    private static final class a implements f {
        private final s<com.applovin.exoplayer2.i.a> Or;
        private final long rJ;

        public a(long j, s<com.applovin.exoplayer2.i.a> sVar) {
            this.rJ = j;
            this.Or = sVar;
        }

        @Override // com.applovin.exoplayer2.i.f
        public int be(long j) {
            return this.rJ > j ? 0 : -1;
        }

        @Override // com.applovin.exoplayer2.i.f
        public List<com.applovin.exoplayer2.i.a> bf(long j) {
            return j >= this.rJ ? this.Or : s.ga();
        }

        @Override // com.applovin.exoplayer2.i.f
        public long ej(int i) {
            com.applovin.exoplayer2.l.a.checkArgument(i == 0);
            return this.rJ;
        }

        @Override // com.applovin.exoplayer2.i.f
        public int lX() {
            return 1;
        }
    }

    public c() {
        for (int i = 0; i < 2; i++) {
            this.Op.addFirst(new e(new i.a() { // from class: com.applovin.exoplayer2.i.o
                @Override // com.applovin.exoplayer2.c.i.a
                public final void releaseOutputBuffer(com.applovin.exoplayer2.c.i iVar) {
                    this.a.a((k) iVar);
                }
            }));
        }
        this.Oq = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(k kVar) {
        com.applovin.exoplayer2.l.a.checkState(this.Op.size() < 2);
        com.applovin.exoplayer2.l.a.checkArgument(!this.Op.contains(kVar));
        kVar.clear();
        this.Op.addFirst(kVar);
    }

    @Override // com.applovin.exoplayer2.c.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void D(j jVar) throws h {
        com.applovin.exoplayer2.l.a.checkState(!this.cw);
        com.applovin.exoplayer2.l.a.checkState(this.Oq == 1);
        com.applovin.exoplayer2.l.a.checkArgument(this.Oo == jVar);
        this.Oq = 2;
    }

    @Override // com.applovin.exoplayer2.i.g
    public void bd(long j) {
    }

    @Override // com.applovin.exoplayer2.c.d
    public void dI() {
        com.applovin.exoplayer2.l.a.checkState(!this.cw);
        this.Oo.clear();
        this.Oq = 0;
    }

    @Override // com.applovin.exoplayer2.c.d
    @Nullable
    /* JADX INFO: renamed from: lV, reason: merged with bridge method [inline-methods] */
    public j hc() throws h {
        com.applovin.exoplayer2.l.a.checkState(!this.cw);
        if (this.Oq != 0) {
            return null;
        }
        this.Oq = 1;
        return this.Oo;
    }

    @Override // com.applovin.exoplayer2.c.d
    @Nullable
    /* JADX INFO: renamed from: lW, reason: merged with bridge method [inline-methods] */
    public k hd() throws h {
        com.applovin.exoplayer2.l.a.checkState(!this.cw);
        if (this.Oq != 2 || this.Op.isEmpty()) {
            return null;
        }
        k kVarRemoveFirst = this.Op.removeFirst();
        if (this.Oo.gY()) {
            kVarRemoveFirst.bt(4);
        } else {
            j jVar = this.Oo;
            kVarRemoveFirst.a(this.Oo.rJ, new a(jVar.rJ, this.On.F(((ByteBuffer) com.applovin.exoplayer2.l.a.checkNotNull(jVar.rH)).array())), 0L);
        }
        this.Oo.clear();
        this.Oq = 0;
        return kVarRemoveFirst;
    }

    @Override // com.applovin.exoplayer2.c.d
    public void release() {
        this.cw = true;
    }
}
