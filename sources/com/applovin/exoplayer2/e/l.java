package com.applovin.exoplayer2.e;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface l {
    public static final l ux = new l() { // from class: com.applovin.exoplayer2.e.a0
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ h[] a(Uri uri, Map map) {
            return c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            return c0.b();
        }
    };

    h[] a(Uri uri, Map<String, List<String>> map);

    h[] createExtractors();
}
