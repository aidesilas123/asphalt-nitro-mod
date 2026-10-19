package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<T> extends ax<T> {

    @NullableDecl
    private T nB;
    private a oY = a.NOT_READY;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.common.a.b$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oZ;

        static {
            int[] iArr = new int[a.values().length];
            oZ = iArr;
            try {
                iArr[a.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oZ[a.READY.ordinal()] = 2;
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
        this.oY = a.FAILED;
        this.nB = eT();
        if (this.oY == a.DONE) {
            return false;
        }
        this.oY = a.READY;
        return true;
    }

    protected abstract T eT();

    protected final T eU() {
        this.oY = a.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.oY != a.FAILED);
        int i = AnonymousClass1.oZ[this.oY.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return eV();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.oY = a.NOT_READY;
        T t = this.nB;
        this.nB = null;
        return t;
    }
}
