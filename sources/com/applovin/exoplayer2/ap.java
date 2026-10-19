package com.applovin.exoplayer2;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ap extends a {
    private final int ha;
    private final int hb;
    private final int[] hc;
    private final int[] hd;
    private final ba[] he;
    private final Object[] hf;
    private final HashMap<Object, Integer> hg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ap(Collection<? extends ag> collection, com.applovin.exoplayer2.h.z zVar) {
        super(false, zVar);
        int iCP = 0;
        int size = collection.size();
        this.hc = new int[size];
        this.hd = new int[size];
        this.he = new ba[size];
        this.hf = new Object[size];
        this.hg = new HashMap<>();
        int iCQ = 0;
        int i = 0;
        for (ag agVar : collection) {
            this.he[i] = agVar.bf();
            this.hd[i] = iCP;
            this.hc[i] = iCQ;
            iCP += this.he[i].cP();
            iCQ += this.he[i].cQ();
            this.hf[i] = agVar.be();
            this.hg.put(this.hf[i], Integer.valueOf(i));
            i++;
        }
        this.ha = iCP;
        this.hb = iCQ;
    }

    @Override // com.applovin.exoplayer2.a
    protected int c(int i) {
        return com.applovin.exoplayer2.l.ai.a(this.hc, i + 1, false, false);
    }

    List<ba> cO() {
        return Arrays.asList(this.he);
    }

    @Override // com.applovin.exoplayer2.ba
    public int cP() {
        return this.ha;
    }

    @Override // com.applovin.exoplayer2.ba
    public int cQ() {
        return this.hb;
    }

    @Override // com.applovin.exoplayer2.a
    protected int d(int i) {
        return com.applovin.exoplayer2.l.ai.a(this.hd, i + 1, false, false);
    }

    @Override // com.applovin.exoplayer2.a
    protected int d(Object obj) {
        Integer num = this.hg.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.applovin.exoplayer2.a
    protected ba e(int i) {
        return this.he[i];
    }

    @Override // com.applovin.exoplayer2.a
    protected int f(int i) {
        return this.hc[i];
    }

    @Override // com.applovin.exoplayer2.a
    protected int g(int i) {
        return this.hd[i];
    }

    @Override // com.applovin.exoplayer2.a
    protected Object h(int i) {
        return this.hf[i];
    }
}
