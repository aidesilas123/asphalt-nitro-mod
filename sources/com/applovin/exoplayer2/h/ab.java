package com.applovin.exoplayer2.h;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
final class ab<V> {
    private int NC;
    private final SparseArray<V> ND;
    private final com.applovin.exoplayer2.l.h<V> NE;

    public ab() {
        this(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.h.a0
            @Override // com.applovin.exoplayer2.l.h
            public final void accept(Object obj) {
                ab.I(obj);
            }
        });
    }

    public ab(com.applovin.exoplayer2.l.h<V> hVar) {
        this.ND = new SparseArray<>();
        this.NE = hVar;
        this.NC = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I(Object obj) {
    }

    public void b(int i, V v) {
        if (this.NC == -1) {
            com.applovin.exoplayer2.l.a.checkState(this.ND.size() == 0);
            this.NC = 0;
        }
        if (this.ND.size() > 0) {
            SparseArray<V> sparseArray = this.ND;
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            com.applovin.exoplayer2.l.a.checkArgument(i >= iKeyAt);
            if (iKeyAt == i) {
                com.applovin.exoplayer2.l.h<V> hVar = this.NE;
                SparseArray<V> sparseArray2 = this.ND;
                hVar.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.ND.append(i, v);
    }

    public void clear() {
        for (int i = 0; i < this.ND.size(); i++) {
            this.NE.accept(this.ND.valueAt(i));
        }
        this.NC = -1;
        this.ND.clear();
    }

    public void dX(int i) {
        int i2 = 0;
        while (i2 < this.ND.size() - 1) {
            int i3 = i2 + 1;
            if (i < this.ND.keyAt(i3)) {
                return;
            }
            this.NE.accept(this.ND.valueAt(i2));
            this.ND.removeAt(i2);
            int i4 = this.NC;
            if (i4 > 0) {
                this.NC = i4 - 1;
            }
            i2 = i3;
        }
    }

    public void dY(int i) {
        for (int size = this.ND.size() - 1; size >= 0 && i < this.ND.keyAt(size); size--) {
            this.NE.accept(this.ND.valueAt(size));
            this.ND.removeAt(size);
        }
        this.NC = this.ND.size() > 0 ? Math.min(this.NC, this.ND.size() - 1) : -1;
    }

    public V get(int i) {
        if (this.NC == -1) {
            this.NC = 0;
        }
        while (true) {
            int i2 = this.NC;
            if (i2 <= 0 || i >= this.ND.keyAt(i2)) {
                break;
            }
            this.NC--;
        }
        while (this.NC < this.ND.size() - 1 && i >= this.ND.keyAt(this.NC + 1)) {
            this.NC++;
        }
        return this.ND.valueAt(this.NC);
    }

    public boolean isEmpty() {
        return this.ND.size() == 0;
    }

    public V lK() {
        return this.ND.valueAt(r0.size() - 1);
    }
}
