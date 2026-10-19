package com.applovin.exoplayer2.d;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.g;

/* JADX INFO: loaded from: classes.dex */
public interface h {
    public static final h ti;

    @Deprecated
    public static final h tj;

    public interface a {
        public static final a tk = new a() { // from class: com.applovin.exoplayer2.d.j0
            @Override // com.applovin.exoplayer2.d.h.a
            public final void release() {
                p0.a();
            }
        };

        void release();
    }

    static {
        h hVar = new h() { // from class: com.applovin.exoplayer2.d.h.1
            @Override // com.applovin.exoplayer2.d.h
            public /* synthetic */ a a(Looper looper, g.a aVar, com.applovin.exoplayer2.v vVar) {
                return o0.a(this, looper, aVar, vVar);
            }

            @Override // com.applovin.exoplayer2.d.h
            public /* synthetic */ void aD() {
                o0.b(this);
            }

            @Override // com.applovin.exoplayer2.d.h
            @Nullable
            public f b(Looper looper, @Nullable g.a aVar, com.applovin.exoplayer2.v vVar) {
                if (vVar.dC == null) {
                    return null;
                }
                return new l(new f.a(new t(1), 6001));
            }

            @Override // com.applovin.exoplayer2.d.h
            public int g(com.applovin.exoplayer2.v vVar) {
                return vVar.dC != null ? 1 : 0;
            }

            @Override // com.applovin.exoplayer2.d.h
            public /* synthetic */ void release() {
                o0.c(this);
            }
        };
        ti = hVar;
        tj = hVar;
    }

    a a(Looper looper, @Nullable g.a aVar, com.applovin.exoplayer2.v vVar);

    void aD();

    @Nullable
    f b(Looper looper, @Nullable g.a aVar, com.applovin.exoplayer2.v vVar);

    int g(com.applovin.exoplayer2.v vVar);

    void release();
}
