package com.applovin.exoplayer2.e.g;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.y;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    private static class a {
        private final byte[] AI;
        private final UUID ey;
        private final int mH;

        public a(UUID uuid, int i, byte[] bArr) {
            this.ey = uuid;
            this.mH = i;
            this.AI = bArr;
        }
    }

    public static byte[] a(UUID uuid, @Nullable UUID[] uuidArr, @Nullable byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(1886614376);
        byteBufferAllocate.putInt(uuidArr != null ? 16777216 : 0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            byteBufferAllocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                byteBufferAllocate.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    @Nullable
    public static byte[] a(byte[] bArr, UUID uuid) {
        a aVarZ = z(bArr);
        if (aVarZ == null) {
            return null;
        }
        if (uuid.equals(aVarZ.ey)) {
            return aVarZ.AI;
        }
        com.applovin.exoplayer2.l.q.h("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + aVarZ.ey + ".");
        return null;
    }

    public static byte[] c(UUID uuid, @Nullable byte[] bArr) {
        return a(uuid, null, bArr);
    }

    public static boolean w(byte[] bArr) {
        return z(bArr) != null;
    }

    @Nullable
    public static UUID x(byte[] bArr) {
        a aVarZ = z(bArr);
        if (aVarZ == null) {
            return null;
        }
        return aVarZ.ey;
    }

    public static int y(byte[] bArr) {
        a aVarZ = z(bArr);
        if (aVarZ == null) {
            return -1;
        }
        return aVarZ.mH;
    }

    @Nullable
    private static a z(byte[] bArr) {
        y yVar = new y(bArr);
        if (yVar.pk() < 32) {
            return null;
        }
        yVar.fx(0);
        if (yVar.px() != yVar.pj() + 4 || yVar.px() != 1886614376) {
            return null;
        }
        int iCf = com.applovin.exoplayer2.e.g.a.cf(yVar.px());
        if (iCf > 1) {
            com.applovin.exoplayer2.l.q.h("PsshAtomUtil", "Unsupported pssh version: " + iCf);
            return null;
        }
        UUID uuid = new UUID(yVar.pz(), yVar.pz());
        if (iCf == 1) {
            yVar.fz(yVar.pD() * 16);
        }
        int iPD = yVar.pD();
        if (iPD != yVar.pj()) {
            return null;
        }
        byte[] bArr2 = new byte[iPD];
        yVar.r(bArr2, 0, iPD);
        return new a(uuid, iCf, bArr2);
    }
}
