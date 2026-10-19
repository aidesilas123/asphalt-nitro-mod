package com.applovin.exoplayer2.d;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.d.g;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public interface f {

    public static class a extends IOException {
        public final int errorCode;

        public a(Throwable th, int i) {
            super(th);
            this.errorCode = i;
        }
    }

    boolean A(String str);

    int P();

    void a(@Nullable g.a aVar);

    void b(@Nullable g.a aVar);

    boolean hs();

    @Nullable
    a ht();

    UUID hu();

    @Nullable
    com.applovin.exoplayer2.c.b hv();

    @Nullable
    Map<String, String> hw();
}
