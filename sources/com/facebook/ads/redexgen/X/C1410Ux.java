package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ux, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1410Ux implements HC {
    public static byte[] A02;
    public static String[] A03 = {"V9uyJ8pLVYRD0ZldKEQ8Fm6zvmqMDXWy", "Hg71UAiYySRbQdhhlwilCiKnXjev2ePA", "dXXMV49sZASER8PJdu1teXvpuaC", "ItxDGkbDnUyb6oqtSMasVXx46j9iOzYk", "dhSjei0RHB98MxffIoNKZhf7ZhQ", "21gtHhMrMv89rh6v8Px22ucxkmd", "UIi9EoWARjlD8E8YBHi4CxflqQKZlpEG", "jZKVHFEUmyWXIM9jvQw89fwKPj"};
    public static final C1410Ux A04;
    public int A00;
    public final Map<String, byte[]> A01;

    static {
        A03();
        A04 = new C1410Ux(Collections.emptyMap());
    }

    public C1410Ux(Map<String, byte[]> map) {
        this.A01 = Collections.unmodifiableMap(map);
    }

    public static C1410Ux A00(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            String utf = dataInputStream.readUTF();
            int i3 = dataInputStream.readInt();
            if (i3 >= 0) {
                if (A03[5].length() == 7) {
                    throw new RuntimeException();
                }
                A03[5] = "wIzKKnz4WNrtvGk5MZN9OtyZE";
                if (i3 <= 10485760) {
                    byte[] bArr = new byte[i3];
                    dataInputStream.readFully(bArr);
                    map.put(utf, bArr);
                }
            }
            throw new IOException(A01(0, 20, 2) + i3);
        }
        return new C1410Ux(map);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static Map<String, byte[]> A02(Map<String, byte[]> map, HE he) {
        HashMap map2 = new HashMap(map);
        A04(map2, he.A04());
        A05(map2, he.A05());
        return map2;
    }

    public static void A03() {
        A02 = new byte[]{Ascii.DC4, 51, 43, 60, 49, 52, 57, 125, 43, 60, 49, 40, 56, 125, 46, 52, 39, 56, 103, 125, 87, 107, 102, 35, 112, 106, 121, 102, 35, 108, 101, 35, 38, 112, 35, 43, 38, 103, 42, 35, 106, 112, 35, 100, 113, 102, 98, 119, 102, 113, 35, 119, 107, 98, 109, 35, 110, 98, 123, 106, 110, 118, 110, 35, 98, 111, 111, 108, 116, 102, 103, 57, 35, 38, 103, 79, 78, 92, 55, 34};
    }

    public static void A04(HashMap<String, byte[]> map, List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            map.remove(list.get(i));
        }
    }

    public static void A05(HashMap<String, byte[]> map, Map<String, Object> map2) {
        for (String str : map2.keySet()) {
            byte[] bArrA07 = A07(map2.get(str));
            if (bArrA07.length > 10485760) {
                throw new IllegalArgumentException(String.format(A01(20, 55, 92), str, Integer.valueOf(bArrA07.length), 10485760));
            }
            map.put(str, bArrA07);
        }
    }

    private boolean A06(Map<String, byte[]> map) {
        if (this.A01.size() != map.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : this.A01.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public static byte[] A07(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(Charset.forName(A01(75, 5, 69)));
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    public final C1410Ux A08(HE he) {
        Map<String, byte[]> mapA02 = A02(this.A01, he);
        return A06(mapA02) ? this : new C1410Ux(mapA02);
    }

    public final void A09(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.A01.size());
        for (Map.Entry<String, byte[]> entry : this.A01.entrySet()) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    @Override // com.facebook.ads.redexgen.X.HC
    public final long A5l(String str, long j) {
        return this.A01.containsKey(str) ? ByteBuffer.wrap(this.A01.get(str)).getLong() : j;
    }

    @Override // com.facebook.ads.redexgen.X.HC
    public final String A5n(String str, String str2) {
        return this.A01.containsKey(str) ? new String(this.A01.get(str), Charset.forName(A01(75, 5, 69))) : str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return A06(((C1410Ux) obj).A01);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            int iHashCode = 0;
            for (Map.Entry<String, byte[]> entry : this.A01.entrySet()) {
                iHashCode += entry.getKey().hashCode() ^ Arrays.hashCode(entry.getValue());
            }
            this.A00 = iHashCode;
        }
        return this.A00;
    }
}
