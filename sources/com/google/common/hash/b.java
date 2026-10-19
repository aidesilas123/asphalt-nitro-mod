package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: AbstractCompositeHashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class b extends c {
    final l[] a;

    /* JADX INFO: compiled from: AbstractCompositeHashFunction.java */
    class a implements m {
        final /* synthetic */ m[] a;

        a(m[] mVarArr) {
            this.a = mVarArr;
        }

        @Override // com.google.common.hash.v
        public m a(byte[] bArr) {
            for (m mVar : this.a) {
                mVar.a(bArr);
            }
            return this;
        }

        @Override // com.google.common.hash.v
        public m b(byte b) {
            for (m mVar : this.a) {
                mVar.b(b);
            }
            return this;
        }

        @Override // com.google.common.hash.v
        public m c(CharSequence charSequence) {
            for (m mVar : this.a) {
                mVar.c(charSequence);
            }
            return this;
        }

        @Override // com.google.common.hash.v
        public m d(byte[] bArr, int i, int i2) {
            for (m mVar : this.a) {
                mVar.d(bArr, i, i2);
            }
            return this;
        }

        @Override // com.google.common.hash.v
        public m e(CharSequence charSequence, Charset charset) {
            for (m mVar : this.a) {
                mVar.e(charSequence, charset);
            }
            return this;
        }

        @Override // com.google.common.hash.m
        public <T> m f(T t, k<? super T> kVar) {
            for (m mVar : this.a) {
                mVar.f(t, kVar);
            }
            return this;
        }

        @Override // com.google.common.hash.m
        public HashCode g() {
            return b.this.i(this.a);
        }

        @Override // com.google.common.hash.v
        public m putInt(int i) {
            for (m mVar : this.a) {
                mVar.putInt(i);
            }
            return this;
        }

        @Override // com.google.common.hash.v
        public m putLong(long j) {
            for (m mVar : this.a) {
                mVar.putLong(j);
            }
            return this;
        }
    }

    b(l... lVarArr) {
        for (l lVar : lVarArr) {
            Preconditions.checkNotNull(lVar);
        }
        this.a = lVarArr;
    }

    private m b(m[] mVarArr) {
        return new a(mVarArr);
    }

    @Override // com.google.common.hash.c, com.google.common.hash.l
    public m d(int i) {
        Preconditions.checkArgument(i >= 0);
        int length = this.a.length;
        m[] mVarArr = new m[length];
        for (int i2 = 0; i2 < length; i2++) {
            mVarArr[i2] = this.a[i2].d(i);
        }
        return b(mVarArr);
    }

    @Override // com.google.common.hash.l
    public m e() {
        int length = this.a.length;
        m[] mVarArr = new m[length];
        for (int i = 0; i < length; i++) {
            mVarArr[i] = this.a[i].e();
        }
        return b(mVarArr);
    }

    abstract HashCode i(m[] mVarArr);
}
