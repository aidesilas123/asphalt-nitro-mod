package com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.redexgen.X.C1078Hx;
import com.facebook.ads.redexgen.X.DS;
import com.facebook.ads.redexgen.X.HI;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class InternalFrame extends Id3Frame {
    public static byte[] A03;
    public static String[] A04 = {"6rP4TJ9dhvMapE0BBZceDYfMTh4TojcA", "lrdqSGw0HHSMAmwwx11wdr3YvkS3wUYa", "52ASZuwC", "0jlxCR8O", "LXKWLHHeOrS5lOritYi", "jXqOduePiWSkMNmBBFDcJBYI5WgIxX01", "Y9tl", "Ni0nwvF"};
    public static final Parcelable.Creator<InternalFrame> CREATOR;
    public final String A00;
    public final String A01;
    public final String A02;

    static {
        A01();
        CREATOR = new DS();
    }

    public InternalFrame(Parcel parcel) {
        super(A00(14, 4, 82));
        this.A01 = (String) HI.A01(parcel.readString());
        this.A00 = (String) HI.A01(parcel.readString());
        this.A02 = (String) HI.A01(parcel.readString());
    }

    public InternalFrame(String str, String str2, String str3) {
        super(A00(14, 4, 82));
        this.A01 = str;
        this.A00 = str2;
        this.A02 = str3;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 119);
            if (A04[4].length() != 19) {
                throw new RuntimeException();
            }
            A04[1] = "ksucHZMTxUYPWlnKQAaWw2DlZRkSfW4N";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{Ascii.CAN, Ascii.FF, 80, 81, 95, 79, 94, 85, 92, 96, 85, 91, 90, 41, -10, -10, -10, -10, Ascii.NAK, -5, 63, 74, 72, 60, 68, 73, Ascii.CAN};
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        InternalFrame internalFrame = (InternalFrame) obj;
        boolean zA0g = C1078Hx.A0g(this.A00, internalFrame.A00);
        if (A04[4].length() != 19) {
            throw new RuntimeException();
        }
        A04[4] = "WYnJcvlfdgkhEaINowX";
        return zA0g && C1078Hx.A0g(this.A01, internalFrame.A01) && C1078Hx.A0g(this.A02, internalFrame.A02);
    }

    public final int hashCode() {
        int i = 17 * 31;
        String str = this.A01;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.A00;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.A02;
        int iHashCode3 = iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        if (A04[2].length() != 8) {
            throw new RuntimeException();
        }
        A04[2] = "LCjFSYtL";
        return iHashCode3;
    }

    @Override // com.facebook.ads.internal.exoplayer2.thirdparty.metadata.id3.Id3Frame
    public final String toString() {
        return super.A00 + A00(18, 9, 100) + this.A01 + A00(0, 14, 117) + this.A00;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(super.A00);
        parcel.writeString(this.A01);
        parcel.writeString(this.A02);
    }
}
