package com.applovin.exoplayer2.e;

import androidx.annotation.Nullable;
import com.json.o2;

/* JADX INFO: loaded from: classes.dex */
public interface v {

    public static final class a {
        public final w uQ;
        public final w uR;

        public a(w wVar) {
            this(wVar, wVar);
        }

        public a(w wVar, w wVar2) {
            this.uQ = (w) com.applovin.exoplayer2.l.a.checkNotNull(wVar);
            this.uR = (w) com.applovin.exoplayer2.l.a.checkNotNull(wVar2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.uQ.equals(aVar.uQ) && this.uR.equals(aVar.uR);
        }

        public int hashCode() {
            return (this.uQ.hashCode() * 31) + this.uR.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(o2.i.f6490d);
            sb.append(this.uQ);
            if (this.uQ.equals(this.uR)) {
                str = "";
            } else {
                str = ", " + this.uR;
            }
            sb.append(str);
            sb.append(o2.i.f6491e);
            return sb.toString();
        }
    }

    public static class b implements v {
        private final long fH;
        private final a uS;

        public b(long j) {
            this(j, 0L);
        }

        public b(long j, long j2) {
            this.fH = j;
            this.uS = new a(j2 == 0 ? w.uT : new w(0L, j2));
        }

        @Override // com.applovin.exoplayer2.e.v
        public a ai(long j) {
            return this.uS;
        }

        @Override // com.applovin.exoplayer2.e.v
        public long dd() {
            return this.fH;
        }

        @Override // com.applovin.exoplayer2.e.v
        public boolean hU() {
            return false;
        }
    }

    a ai(long j);

    long dd();

    boolean hU();
}
