package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
final class i<F, T> extends ai<F> implements Serializable {
    final Function<F, ? extends T> pE;
    final ai<T> pF;

    i(Function<F, ? extends T> function, ai<T> aiVar) {
        this.pE = (Function) Preconditions.checkNotNull(function);
        this.pF = (ai) Preconditions.checkNotNull(aiVar);
    }

    @Override // com.applovin.exoplayer2.common.a.ai, java.util.Comparator
    public int compare(F f2, F f3) {
        return this.pF.compare(this.pE.apply(f2), this.pE.apply(f3));
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.pE.equals(iVar.pE) && this.pF.equals(iVar.pF);
    }

    public int hashCode() {
        return Objects.hashCode(this.pE, this.pF);
    }

    public String toString() {
        return this.pF + ".onResultOf(" + this.pE + ")";
    }
}
