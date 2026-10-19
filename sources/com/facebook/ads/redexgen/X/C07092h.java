package com.facebook.ads.redexgen.X;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2h, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C07092h<T> implements Iterator<T> {
    public int A00;
    public int A01;
    public boolean A02 = false;
    public final int A03;
    public final /* synthetic */ AbstractC07142m A04;

    public C07092h(AbstractC07142m abstractC07142m, int i) {
        this.A04 = abstractC07142m;
        this.A03 = i;
        this.A01 = abstractC07142m.A04();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.A00 < this.A01;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        T t = (T) this.A04.A0B(this.A00, this.A03);
        this.A00++;
        this.A02 = true;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.A02) {
            throw new IllegalStateException();
        }
        int i = this.A00 - 1;
        this.A00 = i;
        this.A01--;
        this.A02 = false;
        this.A04.A0E(i);
    }
}
