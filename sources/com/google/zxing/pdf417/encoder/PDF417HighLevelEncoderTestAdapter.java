package com.google.zxing.pdf417.encoder;

import com.google.zxing.g;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public final class PDF417HighLevelEncoderTestAdapter {
    private PDF417HighLevelEncoderTestAdapter() {
    }

    public static String encodeHighLevel(String str, Compaction compaction, Charset charset, boolean z) throws g {
        return f.e(str, compaction, charset, z);
    }
}
