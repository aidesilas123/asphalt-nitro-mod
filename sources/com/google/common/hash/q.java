package com.google.common.hash;

import com.google.common.hash.x;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* JADX INFO: compiled from: LongAdder.java */
/* JADX INFO: loaded from: classes3.dex */
final class q extends x implements Serializable, p {
    private static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.i = 0;
        this.f3907g = null;
        this.h = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(i());
    }

    @Override // com.google.common.hash.p
    public void a(long j) {
        int length;
        x.b bVar;
        x.b[] bVarArr = this.f3907g;
        if (bVarArr == null) {
            long j2 = this.h;
            if (d(j2, j2 + j)) {
                return;
            }
        }
        int[] iArr = x.a.get();
        boolean zA = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j3 = bVar.c;
            zA = bVar.a(j3, j3 + j);
            if (zA) {
                return;
            }
        }
        h(j, iArr, zA);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return i();
    }

    @Override // com.google.common.hash.x
    final long f(long j, long j2) {
        return j + j2;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return i();
    }

    public long i() {
        long j = this.h;
        x.b[] bVarArr = this.f3907g;
        if (bVarArr != null) {
            for (x.b bVar : bVarArr) {
                if (bVar != null) {
                    j += bVar.c;
                }
            }
        }
        return j;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) i();
    }

    @Override // java.lang.Number
    public long longValue() {
        return i();
    }

    public String toString() {
        return Long.toString(i());
    }
}
