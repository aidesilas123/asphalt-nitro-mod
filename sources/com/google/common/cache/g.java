package com.google.common.cache;

import com.google.common.cache.i;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* JADX INFO: compiled from: LongAdder.java */
/* JADX INFO: loaded from: classes3.dex */
final class g extends i implements Serializable, f {
    private static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.i = 0;
        this.f3532g = null;
        this.h = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(d());
    }

    public long d() {
        long j = this.h;
        i.b[] bVarArr = this.f3532g;
        if (bVarArr != null) {
            for (i.b bVar : bVarArr) {
                if (bVar != null) {
                    throw null;
                }
            }
        }
        return j;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return d();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return d();
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) d();
    }

    @Override // java.lang.Number
    public long longValue() {
        return d();
    }

    public String toString() {
        return Long.toString(d());
    }
}
