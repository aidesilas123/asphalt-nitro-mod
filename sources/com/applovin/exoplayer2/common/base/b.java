package com.applovin.exoplayer2.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
abstract class b<T> implements Iterator<T> {
    private a nA = a.NOT_READY;

    @NullableDecl
    private T nB;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.common.base.b$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] nC;

        static {
            int[] iArr = new int[a.values().length];
            nC = iArr;
            try {
                iArr[a.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                nC[a.DONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private enum a {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected b() {
    }

    private boolean eV() {
        this.nA = a.FAILED;
        this.nB = eT();
        if (this.nA == a.DONE) {
            return false;
        }
        this.nA = a.READY;
        return true;
    }

    protected abstract T eT();

    @NullableDecl
    protected final T eU() {
        this.nA = a.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.nA != a.FAILED);
        int i = AnonymousClass1.nC[this.nA.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return eV();
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.nA = a.NOT_READY;
        T t = this.nB;
        this.nB = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
