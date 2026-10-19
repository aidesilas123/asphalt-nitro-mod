package com.facebook.ads.redexgen.X;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WB implements InterfaceC0920Ba {
    public static String[] A08 = {"pV6afMZIVEGTOqSkK4PJAxqV3cRTXe0d", "IAHwWl6p9dkO64XBfZ0QYdoG1FARrH3l", "8O8qDLmpQAmlCV9yXa4a4pqjSYQFT4zH", "zdF1gQZIlZar6BQddk1LhfG9pE3e2nBq", "3CFwU8lFm", "v9T9Lg78nTaSAiVLG9Jw7rJGA2UCfL0z", "6lAaLpwrnWkg", "Pzi"};
    public static final InterfaceC0923Bd A09 = new WC();
    public long A00;
    public InterfaceC0922Bc A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final SparseArray<C0946Cn> A05;
    public final C1062Hh A06;
    public final C1074Ht A07;

    public WB() {
        this(new C1074Ht(0L));
    }

    public WB(C1074Ht c1074Ht) {
        this.A07 = c1074Ht;
        this.A06 = new C1062Hh(4096);
        this.A05 = new SparseArray<>();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A01 = interfaceC0922Bc;
        interfaceC0922Bc.AEx(new X0(C.TIME_UNSET));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        if (!interfaceC0921Bb.ADm(this.A06.A00, 0, 4, true)) {
            return -1;
        }
        this.A06.A0Y(0);
        int iA08 = this.A06.A08();
        if (iA08 == 441) {
            return -1;
        }
        if (iA08 == 442) {
            interfaceC0921Bb.ADl(this.A06.A00, 0, 10);
            this.A06.A0Y(9);
            interfaceC0921Bb.AFe((this.A06.A0E() & 7) + 14);
            return 0;
        }
        if (iA08 != 443) {
            if (((iA08 & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
                interfaceC0921Bb.AFe(1);
                return 0;
            }
            int i = iA08 & 255;
            C0946Cn c0946Cn = this.A05.get(i);
            if (!this.A02) {
                if (c0946Cn == null) {
                    InterfaceC0941Cg wj = null;
                    if (i == 189) {
                        wj = new WQ();
                        this.A03 = true;
                        this.A00 = interfaceC0921Bb.A7a();
                    } else if ((i & 224) == 192) {
                        wj = new WE();
                        this.A03 = true;
                        this.A00 = interfaceC0921Bb.A7a();
                    } else if ((i & PsExtractor.VIDEO_STREAM_MASK) == 224) {
                        wj = new WJ();
                        this.A04 = true;
                        this.A00 = interfaceC0921Bb.A7a();
                    }
                    if (wj != null) {
                        wj.A4l(this.A01, new C0952Cu(i, 256));
                        c0946Cn = new C0946Cn(wj, this.A07);
                        this.A05.put(i, c0946Cn);
                    }
                }
                if (interfaceC0921Bb.A7a() > ((this.A03 && this.A04) ? this.A00 + PlaybackStateCompat.ACTION_PLAY_FROM_URI : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                    this.A02 = true;
                    InterfaceC0922Bc interfaceC0922Bc = this.A01;
                    if (A08[6].length() != 7) {
                        A08[4] = "xdmI1xGjCkbROfx6HlMFi8Q1HtnAUXbK";
                        interfaceC0922Bc.A5T();
                    }
                }
            }
            interfaceC0921Bb.ADl(this.A06.A00, 0, 2);
            this.A06.A0Y(0);
            int iA0I = this.A06.A0I() + 6;
            if (c0946Cn == null) {
                interfaceC0921Bb.AFe(iA0I);
            } else {
                this.A06.A0W(iA0I);
                interfaceC0921Bb.readFully(this.A06.A00, 0, iA0I);
                this.A06.A0Y(6);
                c0946Cn.A03(this.A06);
                C1062Hh c1062Hh = this.A06;
                c1062Hh.A0X(c1062Hh.A05());
            }
            return 0;
        }
        interfaceC0921Bb.ADl(this.A06.A00, 0, 2);
        this.A06.A0Y(0);
        int iA0I2 = this.A06.A0I() + 6;
        if (A08[7].length() != 22) {
            String[] strArr = A08;
            strArr[5] = "HKquBkRqV5bg6e7zOk5qC1bF2o25gd0c";
            strArr[0] = "faW9VDigV6ilhrF8PW3drZ4wwMfODA0N";
            interfaceC0921Bb.AFe(iA0I2);
            return 0;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void AEw(long j, long j2) {
        this.A07.A08();
        for (int i = 0; i < this.A05.size(); i++) {
            this.A05.valueAt(i).A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final boolean AFg(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        byte[] bArr = new byte[14];
        interfaceC0921Bb.ADl(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4) {
            return false;
        }
        int i = bArr[8] & 4;
        if (A08[4].length() != 31) {
            A08[6] = "Yb1F33WkxQfWiaSVh137";
            if (i != 4) {
                return false;
            }
            String[] strArr = A08;
            if (strArr[5].charAt(30) == strArr[0].charAt(30)) {
                String[] strArr2 = A08;
                strArr2[2] = "0jRSG84WTzZndWahG37MGXBabYk0DmjV";
                strArr2[3] = "QaZZpRdUVGXpS1N3yC2DPVE3W204sMee";
                if ((bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
                    return false;
                }
                interfaceC0921Bb.A3S(bArr[13] & 7);
                interfaceC0921Bb.ADl(bArr, 0, 3);
                return 1 == ((bArr[2] & 255) | (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)));
            }
        }
        throw new RuntimeException();
    }
}
