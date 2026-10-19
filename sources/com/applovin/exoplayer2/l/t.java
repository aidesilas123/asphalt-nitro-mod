package com.applovin.exoplayer2.l;

import android.media.MediaFormat;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class t {
    public static void a(MediaFormat mediaFormat, @Nullable com.applovin.exoplayer2.m.b bVar) {
        if (bVar != null) {
            a(mediaFormat, "color-transfer", bVar.yk);
            a(mediaFormat, "color-standard", bVar.yj);
            a(mediaFormat, "color-range", bVar.yl);
            a(mediaFormat, "hdr-static-info", bVar.adl);
        }
    }

    public static void a(MediaFormat mediaFormat, String str, float f2) {
        if (f2 != -1.0f) {
            mediaFormat.setFloat(str, f2);
        }
    }

    public static void a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void a(MediaFormat mediaFormat, String str, @Nullable byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer("csd-" + i, ByteBuffer.wrap(list.get(i)));
        }
    }
}
