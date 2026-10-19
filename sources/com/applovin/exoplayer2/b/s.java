package com.applovin.exoplayer2.b;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class s {
    private static byte[] Y(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    private static long Z(long j) {
        return (j * C.NANOS_PER_SECOND) / 48000;
    }

    public static int i(byte[] bArr) {
        return bArr[9] & 255;
    }

    public static List<byte[]> j(byte[] bArr) {
        long jZ = Z(k(bArr));
        long jZ2 = Z(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(Y(jZ));
        arrayList.add(Y(jZ2));
        return arrayList;
    }

    private static int k(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }
}
