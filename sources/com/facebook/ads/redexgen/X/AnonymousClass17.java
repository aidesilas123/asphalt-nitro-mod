package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.Serializable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.17, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass17 extends BroadcastReceiver {
    public static byte[] A03;
    public static String[] A04 = {"X1IVw5mZrPwWgp59pDL9aLZ3Fov3W2Wm", "N1AsLxATz8LfRIPBbwS0prqi9bKFNGwZ", "KvfN8PD7zJtQDsMeVTqT5dRzLvhiPQFs", "CwJ4sBopjGul5sxVyPsrv7O0APgi12j8", "riYYfsMk5nddhbnpPSj9znzkTr5bDpPf", "Be1xHvNUMQ0R9QZ", "t7JwnvsmbbV8km6q46", "oSYhwD14tF3vT8zAS1lFRiV2H2FAfEUD"};
    public Context A00;
    public AF A01;
    public boolean A02 = false;

    static {
        A01();
    }

    public AnonymousClass17(AF af, Context context) {
        this.A01 = af;
        this.A00 = context;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{Ascii.EM, 3, Ascii.SI, Ascii.CR, 78, 6, 1, 3, 5, 2, Ascii.SI, Ascii.SI, Ascii.VT, 78, 1, 4, 19, 78, 9, Ascii.SO, Ascii.DC4, 5, Ascii.DC2, 19, Ascii.DC4, 9, Ascii.DC4, 9, 1, Ascii.FF, 78, 4, 9, 19, Ascii.DLE, Ascii.FF, 1, Ascii.EM, 5, 4, 19, Ascii.US, Ascii.GS, 94, Ascii.SYN, 17, 19, Ascii.NAK, Ascii.DC2, Ascii.US, Ascii.US, Ascii.ESC, 94, 17, Ascii.DC4, 3, 94, Ascii.EM, Ascii.RS, 4, Ascii.NAK, 2, 3, 4, Ascii.EM, 4, Ascii.EM, 17, Ascii.FS, 94, Ascii.DC4, Ascii.EM, 3, 0, Ascii.FS, 17, 9, Ascii.NAK, Ascii.DC4, 74, Ascii.DC2, 1, Ascii.DC2, Ascii.EM, 3, 81, 68, 83, 71, 78, 83, 76, 98, 85, 64, 98, 77, 72, 66, 74, 83, 70, 81, 69, 76, 81, 78, 96, 87, 66, 96, 79, 74, 64, 72, Ascii.EM, 45, 50, 63, 62, 52, Ascii.DC2, 53, 47, 62, 41, 40, 47, 50, 47, 58, 55, Ascii.RS, 45, 62, 53, 47, 2, Ascii.GS, Ascii.DLE, 17, Ascii.ESC, 61, Ascii.SUB, 0, 17, 6, 7, 0, Ascii.GS, 0, Ascii.NAK, Ascii.CAN, 49, 2, 17, Ascii.SUB, 0, 78};
    }

    public final void A02() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A00(40, 40, 17) + this.A01.getUniqueId());
        intentFilter.addAction(A00(137, 22, 21) + this.A01.getUniqueId());
        intentFilter.addAction(A00(100, 16, 66) + this.A01.getUniqueId());
        C07042c.A00(this.A00).A06(this, intentFilter);
    }

    public final void A03() {
        try {
            C07042c.A00(this.A00).A05(this);
        } catch (Exception unused) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String[] strArrSplit = intent.getAction().split(A00(0, 1, 66));
        if (strArrSplit.length == 2 && strArrSplit[1].equals(this.A01.getUniqueId())) {
            if (strArrSplit[0].equals(A00(1, 39, 1))) {
                if (this.A01.getListener() != null) {
                    this.A01.getListener().ABF();
                    this.A01.getListener().ADY();
                    return;
                }
                return;
            }
            String str = strArrSplit[0];
            if (A04[2].charAt(17) != 'T') {
                throw new RuntimeException();
            }
            A04[7] = "czH1g8WXqBVBzZgoSLVA20jYFFcQLh15";
            if (!str.equals(A00(116, 21, 58))) {
                if (strArrSplit[0].equals(A00(85, 15, 64))) {
                    this.A01.A0m();
                    return;
                }
                return;
            }
            Serializable serializableExtra = intent.getSerializableExtra(A00(80, 5, 22));
            if (serializableExtra instanceof M8) {
                if (this.A01.getListener() != null) {
                    this.A01.getListener().ABL();
                    this.A01.getListener().ADY();
                }
                if (this.A02) {
                    this.A01.A0Y(1);
                } else {
                    this.A01.A0Y(((M8) serializableExtra).A01());
                }
                this.A01.setVisibility(0);
                this.A01.A0b(EnumC1267Pj.A04, 1);
                return;
            }
            if (serializableExtra instanceof NQ) {
                if (this.A01.getListener() != null) {
                    M2 listener = this.A01.getListener();
                    if (A04[4].charAt(15) != 'p') {
                        throw new RuntimeException();
                    }
                    A04[0] = "WizhEabCQfIhxCPZxjxQrLo8096TZ2te";
                    listener.ABS();
                    return;
                }
                return;
            }
            if (serializableExtra instanceof N3) {
                if (this.A01.getListener() != null) {
                    this.A01.getListener().ABU();
                    return;
                }
                return;
            }
            if (serializableExtra instanceof AnonymousClass75) {
                if (this.A01.getListener() != null) {
                    this.A01.getListener().AAt();
                }
                this.A02 = true;
            } else {
                if (!(serializableExtra instanceof MJ)) {
                    if (!(serializableExtra instanceof AnonymousClass72) || this.A01.getListener() == null) {
                        return;
                    }
                    this.A01.getListener().onPause();
                    return;
                }
                if (this.A01.getListener() != null) {
                    M2 listener2 = this.A01.getListener();
                    if (A04[5].length() != 15) {
                        A04[5] = "OhpiyJuLhpOH2Z5";
                        listener2.ACL();
                    } else {
                        A04[1] = "rjxpcIZarLCWG40Y5u8euDt94bevKfNO";
                        listener2.ACL();
                    }
                }
                this.A02 = false;
            }
        }
    }
}
