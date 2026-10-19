package com.applovin.exoplayer2.l;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class m {
    private final SparseBooleanArray acb;

    public static final class a {
        private final SparseBooleanArray acb = new SparseBooleanArray();
        private boolean ih;

        public a a(m mVar) {
            for (int i = 0; i < mVar.size(); i++) {
                fo(mVar.fn(i));
            }
            return this;
        }

        public a fo(int i) {
            com.applovin.exoplayer2.l.a.checkState(!this.ih);
            this.acb.append(i, true);
            return this;
        }

        public a h(int... iArr) {
            for (int i : iArr) {
                fo(i);
            }
            return this;
        }

        public a o(int i, boolean z) {
            return z ? fo(i) : this;
        }

        public m oV() {
            com.applovin.exoplayer2.l.a.checkState(!this.ih);
            this.ih = true;
            return new m(this.acb);
        }
    }

    private m(SparseBooleanArray sparseBooleanArray) {
        this.acb = sparseBooleanArray;
    }

    public boolean X(int i) {
        return this.acb.get(i);
    }

    public boolean b(int... iArr) {
        for (int i : iArr) {
            if (X(i)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (ai.acV >= 24) {
            return this.acb.equals(mVar.acb);
        }
        if (size() != mVar.size()) {
            return false;
        }
        for (int i = 0; i < size(); i++) {
            if (fn(i) != mVar.fn(i)) {
                return false;
            }
        }
        return true;
    }

    public int fn(int i) {
        com.applovin.exoplayer2.l.a.h(i, 0, size());
        return this.acb.keyAt(i);
    }

    public int hashCode() {
        if (ai.acV >= 24) {
            return this.acb.hashCode();
        }
        int size = size();
        for (int i = 0; i < size(); i++) {
            size = (size * 31) + fn(i);
        }
        return size;
    }

    public int size() {
        return this.acb.size();
    }
}
