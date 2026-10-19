package com.applovin.exoplayer2.h;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ba;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface p {

    public static final class a extends o {
        public a(o oVar) {
            super(oVar);
        }

        public a(Object obj) {
            super(obj);
        }

        public a(Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public a(Object obj, long j, int i) {
            super(obj, j, i);
        }

        @Override // com.applovin.exoplayer2.h.o
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public a G(Object obj) {
            return new a(super.G(obj));
        }
    }

    public interface b {
        void onSourceInfoRefreshed(p pVar, ba baVar);
    }

    n a(a aVar, com.applovin.exoplayer2.k.b bVar, long j);

    void a(Handler handler, q qVar);

    void a(b bVar);

    void a(b bVar, @Nullable com.applovin.exoplayer2.k.aa aaVar);

    void a(q qVar);

    void b(Handler handler, com.applovin.exoplayer2.d.g gVar);

    void b(b bVar);

    void c(b bVar);

    void f(com.applovin.exoplayer2.d.g gVar);

    void f(n nVar);

    void kS() throws IOException;

    com.applovin.exoplayer2.ab kZ();

    @Nullable
    ba lb();

    boolean lc();
}
