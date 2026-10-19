package com.applovin.exoplayer2.f;

import com.applovin.exoplayer2.f.l;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface k {
    public static final k IR = new k() { // from class: com.applovin.exoplayer2.f.x
        @Override // com.applovin.exoplayer2.f.k
        public final List getDecoderInfos(String str, boolean z, boolean z2) {
            return l.getDecoderInfos(str, z, z2);
        }
    };

    List<i> getDecoderInfos(String str, boolean z, boolean z2) throws l.b;
}
