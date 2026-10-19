package com.nearme.game.sdk.common.util;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.json.b4;

/* JADX INFO: loaded from: classes4.dex */
public class LongSparseArray<E> implements Cloneable {
    private static final Object a = new Object();
    private boolean b;
    private long[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f7681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7682e;

    static class ContainerHelpers {
        static final int[] a = new int[0];
        static final long[] b = new long[0];
        static final Object[] c = new Object[0];

        ContainerHelpers() {
        }

        static int a(long[] jArr, int i, long j) {
            int i2 = i - 1;
            int i3 = 0;
            while (i3 <= i2) {
                int i4 = (i3 + i2) >>> 1;
                long j2 = jArr[i4];
                if (j2 < j) {
                    i3 = i4 + 1;
                } else {
                    if (j2 <= j) {
                        return i4;
                    }
                    i2 = i4 - 1;
                }
            }
            return ~i3;
        }

        public static boolean equal(Object obj, Object obj2) {
            if (obj != obj2) {
                return obj != null && obj.equals(obj2);
            }
            return true;
        }

        public static int idealByteArraySize(int i) {
            for (int i2 = 4; i2 < 32; i2++) {
                int i3 = (1 << i2) - 12;
                if (i <= i3) {
                    return i3;
                }
            }
            return i;
        }

        public static int idealIntArraySize(int i) {
            return idealByteArraySize(i * 4) / 4;
        }

        public static int idealLongArraySize(int i) {
            return idealByteArraySize(i * 8) / 8;
        }
    }

    public LongSparseArray() {
        this(10);
    }

    public LongSparseArray(int i) {
        this.b = false;
        if (i == 0) {
            this.c = ContainerHelpers.b;
            this.f7681d = ContainerHelpers.c;
        } else {
            int iIdealLongArraySize = ContainerHelpers.idealLongArraySize(i);
            this.c = new long[iIdealLongArraySize];
            this.f7681d = new Object[iIdealLongArraySize];
        }
        this.f7682e = 0;
    }

    private void i() {
        int i = this.f7682e;
        long[] jArr = this.c;
        Object[] objArr = this.f7681d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.f7682e = i2;
    }

    public void b() {
        int i = this.f7682e;
        Object[] objArr = this.f7681d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f7682e = 0;
        this.b = false;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public LongSparseArray<E> clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            try {
                longSparseArray.c = (long[]) this.c.clone();
                longSparseArray.f7681d = (Object[]) this.f7681d.clone();
                return longSparseArray;
            } catch (CloneNotSupportedException unused) {
                return longSparseArray;
            }
        } catch (CloneNotSupportedException unused2) {
            return null;
        }
    }

    public void e(long j) {
        int iA = ContainerHelpers.a(this.c, this.f7682e, j);
        if (iA >= 0) {
            Object[] objArr = this.f7681d;
            Object obj = objArr[iA];
            Object obj2 = a;
            if (obj != obj2) {
                objArr[iA] = obj2;
                this.b = true;
            }
        }
    }

    public E f(long j) {
        return g(j, null);
    }

    public E g(long j, E e2) {
        int iA = ContainerHelpers.a(this.c, this.f7682e, j);
        if (iA >= 0) {
            Object[] objArr = this.f7681d;
            if (objArr[iA] != a) {
                return (E) objArr[iA];
            }
        }
        return e2;
    }

    public long h(int i) {
        if (this.b) {
            i();
        }
        return this.c[i];
    }

    public void j(long j, E e2) {
        int iA = ContainerHelpers.a(this.c, this.f7682e, j);
        if (iA >= 0) {
            this.f7681d[iA] = e2;
            return;
        }
        int i = ~iA;
        int i2 = this.f7682e;
        if (i < i2) {
            Object[] objArr = this.f7681d;
            if (objArr[i] == a) {
                this.c[i] = j;
                objArr[i] = e2;
                return;
            }
        }
        if (this.b && i2 >= this.c.length) {
            i();
            i = ~ContainerHelpers.a(this.c, this.f7682e, j);
        }
        int i3 = this.f7682e;
        if (i3 >= this.c.length) {
            int iIdealLongArraySize = ContainerHelpers.idealLongArraySize(i3 + 1);
            long[] jArr = new long[iIdealLongArraySize];
            Object[] objArr2 = new Object[iIdealLongArraySize];
            long[] jArr2 = this.c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f7681d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.c = jArr;
            this.f7681d = objArr2;
        }
        int i4 = this.f7682e;
        if (i4 - i != 0) {
            long[] jArr3 = this.c;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4 - i);
            Object[] objArr4 = this.f7681d;
            System.arraycopy(objArr4, i, objArr4, i5, this.f7682e - i);
        }
        this.c[i] = j;
        this.f7681d[i] = e2;
        this.f7682e++;
    }

    public void k(long j) {
        e(j);
    }

    public int l() {
        if (this.b) {
            i();
        }
        return this.f7682e;
    }

    public E m(int i) {
        if (this.b) {
            i();
        }
        return (E) this.f7681d[i];
    }

    public String toString() {
        if (l() <= 0) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuilder sb = new StringBuilder(this.f7682e * 28);
        sb.append('{');
        for (int i = 0; i < this.f7682e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(h(i));
            sb.append(b4.R);
            E eM = m(i);
            if (eM != this) {
                sb.append(eM);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
