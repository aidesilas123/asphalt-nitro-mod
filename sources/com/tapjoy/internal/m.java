package com.tapjoy.internal;

import android.util.Base64;
import com.tapjoy.TapjoyUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes4.dex */
public final class m {
    public final String a;
    public final int b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f7937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f7938e;

    public m(String str) {
        int length = str.length();
        if (!str.matches("[A-Za-z0-9\\-_]*") || length < 60 || (length & 3) != 0) {
            throw new IllegalArgumentException("The given API key was malformed.");
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 8);
            int length2 = bArrDecode.length;
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArrDecode);
            byteBufferWrap.order(ByteOrder.BIG_ENDIAN);
            int length3 = bArrDecode.length - 4;
            int i = byteBufferWrap.getInt(length3);
            CRC32 crc32 = new CRC32();
            crc32.update(bArrDecode, 0, length3);
            if (i != ((int) crc32.getValue())) {
                throw new IllegalArgumentException("The given API key was invalid.");
            }
            this.a = str;
            this.c = new UUID(byteBufferWrap.getLong(0), byteBufferWrap.getLong(8)).toString();
            byte b = byteBufferWrap.get(16);
            int iA = l.a(byteBufferWrap.get(17));
            this.b = iA;
            this.f7937d = str.substring(24, 44);
            if (b == 1) {
                this.f7938e = null;
                return;
            }
            if (b != 2 || iA != 1) {
                throw new IllegalArgumentException("The given API key was not supported.");
            }
            if (length2 < 57) {
                throw new IllegalArgumentException("The given API key was invalid.");
            }
            byte[] bArr = new byte[12];
            System.arraycopy(bArrDecode, 33, bArr, 0, 12);
            this.f7938e = TapjoyUtil.convertToHex(bArr);
        } catch (IllegalArgumentException e2) {
            throw new IllegalArgumentException("The given API key was malformed.", e2);
        }
    }

    public static String a(String str) {
        if (!str.regionMatches(13, "-8000-8000-", 0, 11)) {
            throw new IllegalArgumentException("The given UUID did not come from 5Rocks.");
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str.substring(0, 8));
        stringBuffer.append(str.substring(24, 30));
        stringBuffer.append(str.substring(9, 13));
        stringBuffer.append(str.substring(30));
        return stringBuffer.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof m) {
            return this.a.equals(((m) obj).a);
        }
        return false;
    }

    public final String toString() {
        return this.a;
    }
}
