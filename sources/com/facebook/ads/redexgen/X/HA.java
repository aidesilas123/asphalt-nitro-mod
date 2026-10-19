package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class HA {
    public static byte[] A08;
    public static String[] A09 = {"tUmPyJA995IehdlgYh1M2HtFJdqk2qFq", "MsgCzq1VVfM7rzT56hJDHksvV5yXe4gF", "4HQ7m4N6DkH9M0uOuKNVPqKigOQvjf6k", "N6cNHUUPL7Fh24xE6qmpU0ogNc5efwpW", "s0cCARPqV4C670oPtvU1gEMcVzhG", "NrezJK25om3nHdODHZffKD7POu79MIOp", "J5KrgCJUtsnBlTAtkJ9UTDt78OFQHXma", "N8WE0W2EMF4cGNiI42Wit4NkXIy23rap"};
    public C1069Ho A00;
    public boolean A01;
    public final SparseArray<String> A02;
    public final HK A03;
    public final HashMap<String, H9> A04;
    public final Cipher A05;
    public final SecretKeySpec A06;
    public final boolean A07;

    static {
        A05();
    }

    public HA(File file, byte[] bArr, boolean z) {
        this.A07 = z;
        if (bArr != null) {
            HI.A03(bArr.length == 16);
            try {
                this.A05 = A03();
                this.A06 = new SecretKeySpec(bArr, A02(0, 3, 51));
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
                throw new IllegalStateException(e2);
            }
        } else {
            HI.A04(!z);
            this.A05 = null;
            this.A06 = null;
        }
        this.A04 = new HashMap<>();
        this.A02 = new SparseArray<>();
        this.A03 = new HK(new File(file, A02(25, 24, 29)));
    }

    public static int A00(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            iKeyAt = 0;
            while (iKeyAt < size && iKeyAt == sparseArray.keyAt(iKeyAt)) {
                iKeyAt++;
            }
        }
        return iKeyAt;
    }

    private H9 A01(String str) {
        H9 h9 = new H9(A00(this.A02), str);
        A06(h9);
        this.A01 = true;
        return h9;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static Cipher A03() throws NoSuchPaddingException, NoSuchAlgorithmException {
        int i = C1078Hx.A02;
        String strA02 = A02(3, 20, 105);
        if (i == 18) {
            try {
                return Cipher.getInstance(strA02, A02(23, 2, 95));
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance(strA02);
    }

    private void A04() throws H0 {
        try {
            try {
                HJ hjA03 = this.A03.A03();
                C1069Ho c1069Ho = this.A00;
                if (c1069Ho == null) {
                    this.A00 = new C1069Ho(hjA03);
                } else {
                    c1069Ho.A00(hjA03);
                }
                DataOutputStream dataOutputStream = new DataOutputStream(this.A00);
                dataOutputStream.writeInt(2);
                dataOutputStream.writeInt(this.A07 ? 1 : 0);
                if (this.A07) {
                    byte[] bArr = new byte[16];
                    new Random().nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        this.A05.init(1, this.A06, new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream = new DataOutputStream(new CipherOutputStream(this.A00, this.A05));
                    } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                        throw new IllegalStateException(e2);
                    }
                }
                dataOutputStream.writeInt(this.A04.size());
                int iA03 = 0;
                for (H9 h9 : this.A04.values()) {
                    h9.A0A(dataOutputStream);
                    iA03 += h9.A03(2);
                }
                dataOutputStream.writeInt(iA03);
                this.A03.A06(dataOutputStream);
                C1078Hx.A0X(null);
            } catch (IOException e3) {
                throw new H0(e3);
            }
        } catch (Throwable th) {
            C1078Hx.A0X(null);
            throw th;
        }
    }

    public static void A05() {
        A08 = new byte[]{-90, -86, -72, -36, -32, -18, -54, -34, -35, -34, -54, -21, -26, -34, -18, -48, -21, -36, -33, -33, -28, -23, -30, -45, -44, -78, -80, -78, -73, -76, -77, -82, -78, -66, -67, -61, -76, -67, -61, -82, -72, -67, -77, -76, -57, 125, -76, -57, -72};
    }

    private void A06(H9 h9) {
        this.A04.put(h9.A03, h9);
        this.A02.put(h9.A02, h9.A03);
    }

    private boolean A07() {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.A03.A04());
            DataInputStream dataInputStream = new DataInputStream(bufferedInputStream);
            int i = dataInputStream.readInt();
            if (i >= 0) {
                if (A09[5].charAt(29) == 'y') {
                    throw new RuntimeException();
                }
                A09[2] = "8D0UmEy2ZnW8UG7osX1W3JX0L9oaaEfw";
                if (i <= 2) {
                    if ((dataInputStream.readInt() & 1) != 0) {
                        if (this.A05 == null) {
                            C1078Hx.A0X(dataInputStream);
                            return false;
                        }
                        byte[] bArr = new byte[16];
                        dataInputStream.readFully(bArr);
                        try {
                            this.A05.init(2, this.A06, new IvParameterSpec(bArr));
                            dataInputStream = new DataInputStream(new CipherInputStream(bufferedInputStream, this.A05));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                            throw new IllegalStateException(e2);
                        }
                    } else if (this.A07) {
                        this.A01 = true;
                    }
                    int i2 = dataInputStream.readInt();
                    int iA03 = 0;
                    for (int i3 = 0; i3 < i2; i3++) {
                        H9 h9A00 = H9.A00(i, dataInputStream);
                        A06(h9A00);
                        iA03 += h9A00.A03(i);
                    }
                    int i4 = dataInputStream.readInt();
                    boolean z = dataInputStream.read() == -1;
                    if (i4 == iA03 && z) {
                        C1078Hx.A0X(dataInputStream);
                        return true;
                    }
                    C1078Hx.A0X(dataInputStream);
                    return false;
                }
            }
            C1078Hx.A0X(dataInputStream);
            return false;
        } catch (IOException unused) {
            if (0 != 0) {
                C1078Hx.A0X(null);
            }
            return false;
        } catch (Throwable th) {
            if (0 != 0) {
                C1078Hx.A0X(null);
            }
            throw th;
        }
    }

    public final int A08(String str) {
        return A0A(str).A02;
    }

    public final H9 A09(String str) {
        return this.A04.get(str);
    }

    public final H9 A0A(String str) {
        H9 h9 = this.A04.get(str);
        return h9 == null ? A01(str) : h9;
    }

    public final HC A0B(String str) {
        H9 h9A09 = A09(str);
        return h9A09 != null ? h9A09.A05() : C1410Ux.A04;
    }

    public final String A0C(int i) {
        return this.A02.get(i);
    }

    public final Collection<H9> A0D() {
        return this.A04.values();
    }

    public final void A0E() {
        HI.A04(!this.A01);
        if (A07()) {
            return;
        }
        this.A03.A05();
        this.A04.clear();
        this.A02.clear();
    }

    public final void A0F() {
        String[] strArr = new String[this.A04.size()];
        this.A04.keySet().toArray(strArr);
        for (String str : strArr) {
            A0H(str);
        }
    }

    public final void A0G() throws H0 {
        if (this.A01) {
            A04();
            this.A01 = false;
        }
    }

    public final void A0H(String str) {
        H9 h9 = this.A04.get(str);
        if (h9 == null || !h9.A0C() || h9.A0D()) {
            return;
        }
        this.A04.remove(str);
        this.A02.remove(h9.A02);
        if (A09[7].charAt(6) != '2') {
            throw new RuntimeException();
        }
        A09[7] = "jdWRL72EOrbCMRK3hJiACfcup0he26HP";
        this.A01 = true;
    }

    public final void A0I(String str, HE he) {
        if (A0A(str).A0F(he)) {
            this.A01 = true;
        }
    }
}
