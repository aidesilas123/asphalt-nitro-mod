package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class FC extends AbstractC1551aD {
    public static String[] A04 = {"9yCAU6vHH5iW2uzgCW6HgdGPEZSQZZfL", "J47", "6rlZoFx9Uu0Bsrona1cKRXumzm4YYBbS", "bhq", "umQrlUDl61wUXIIBom7yT3QugrS", "j4Wkewb2uBFqLUCHLR63rcK9C", "eNU4QeIs11d2vjS0Im22LGZCKxJhHCKO", "6j5HGQ5u8FmBkqYMwiejF76PKOqfr1XC"};
    public final /* synthetic */ FA A00;
    public final /* synthetic */ AbstractC1570aW A01;
    public final /* synthetic */ C1003Ey A02;
    public final /* synthetic */ boolean A03;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FC(FA fa, boolean z, boolean z2, C1003Ey c1003Ey, AbstractC1570aW abstractC1570aW) {
        super(z);
        this.A00 = fa;
        this.A03 = z2;
        this.A02 = c1003Ey;
        this.A01 = abstractC1570aW;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1551aD
    public final void A00() {
        this.A00.A01.ACq(this.A01, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1551aD
    public final void A01(boolean z) {
        if (IP.A1S(this.A00.A04) && this.A03) {
            FA fa = this.A00;
            fa.A06 = C1240Oi.A01(fa.A04, this.A02, 0, new C1577ad(this));
            return;
        }
        AtomicBoolean atomicBoolean = this.A00.A0C;
        if (A04[4].length() == 16) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[1] = "NG7";
        strArr[3] = "cbl";
        atomicBoolean.set(true);
        this.A00.A01.ACn(this.A01);
    }
}
