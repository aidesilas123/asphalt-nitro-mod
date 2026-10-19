package com.facebook.ads.redexgen.X;

import android.view.Surface;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XP implements InterfaceC08779i, DH, AR, IL, InterfaceC0991Em, GW, B8 {
    public static String[] A05 = {"3ui7943oJKQ0earBMheCpqpPzXrDt0u1", "Y87VavrouiKi9z", "P6cMiRGLac5hfjC0tRGIGRLUUUjxE7XX", "Gp12Iojej9PCs1Iei8EmhswJ2d7MPPra", "iPLJe15l61uvnh9YTjVALhylcUuC36cq", "JkCpp1uc3ZLfv8H0X3nexU5u26UQU15j", "bG94g9DZx4SnKjROolD8g6Osz0P9GRGH", "l5hRkIxgm3MuCDpPoC4K2VrrhVSesDup"};
    public InterfaceC08829n A00;
    public final HL A03;
    public final CopyOnWriteArraySet<A4> A04 = new CopyOnWriteArraySet<>();
    public final A1 A02 = new A1();
    public final C08929y A01 = new C08929y();

    public XP(InterfaceC08829n interfaceC08829n, HL hl) {
        this.A00 = interfaceC08829n;
        this.A03 = (HL) HI.A01(hl);
    }

    private A3 A00() {
        return A05(this.A02.A03());
    }

    private A3 A01() {
        return A05(this.A02.A04());
    }

    private A3 A02() {
        return A05(this.A02.A05());
    }

    private A3 A03() {
        return A05(this.A02.A06());
    }

    private final A3 A04(int i, EW ew) {
        HI.A01(this.A00);
        long jA5O = this.A03.A5O();
        AbstractC08939z abstractC08939zA6Z = this.A00.A6Z();
        return new A3(jA5O, abstractC08939zA6Z, i, ew, i == this.A00.A6a() ? (ew == null || !ew.A01()) ? this.A00.A6S() : (this.A00.A6U() == ew.A00 && this.A00.A6V() == ew.A01) ? this.A00.A6X() : 0L : (i >= abstractC08939zA6Z.A01() || (ew != null && ew.A01())) ? 0L : abstractC08939zA6Z.A0B(i, this.A01).A00(), this.A00.A6X(), this.A00.A67() - this.A00.A6S());
    }

    private A3 A05(A2 a2) {
        if (a2 != null) {
            return A04(a2.A00, a2.A01);
        }
        Object objA01 = HI.A01(this.A00);
        String[] strArr = A05;
        if (strArr[5].charAt(24) != strArr[3].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[4] = "It2FvVQ6GuD0QkNXfVFrE8OCooaDSMpJ";
        strArr2[2] = "a2HOGJm5UwCLA4g7R7QNf278R1ClTDAB";
        int iA6a = ((InterfaceC08829n) objA01).A6a();
        return A04(iA6a, this.A02.A07(iA6a));
    }

    public final void A06() {
        if (this.A02.A0F()) {
            return;
        }
        A3 a3A02 = A02();
        A1 a1 = this.A02;
        if (A05[7].charAt(15) == 'w') {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[4] = "qsPEDs7YPcMFbl4XVvGjNAFSUVJ30e5d";
        strArr[2] = "wNEtz3pAWSMGqURdz3XYnwNQJEjBbTAW";
        a1.A09();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onSeekStarted(a3A02);
        }
    }

    public final void A07() {
        for (A2 a2 : new ArrayList(this.A02.A05)) {
            AC5(a2.A00, a2.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAZ(String str, long j, long j2) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(a3A03, 1, str, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAa(C0914Au c0914Au) {
        A3 a3A00 = A00();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(a3A00, 1, c0914Au);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAb(C0914Au c0914Au) {
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(a3A02, 1, c0914Au);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAc(Format format) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(a3A03, 1, format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAd(int i) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onAudioSessionId(a3A03, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AR
    public final void AAe(int i, long j, long j2) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onAudioUnderrun(a3A03, i, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.GW
    public final void AAh(int i, long j, long j2) {
        A01();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0991Em
    public final void AB8(int i, EW ew, C0990El c0990El) {
        A3 a3A04 = A04(i, ew);
        Iterator<A4> it = this.A04.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            A05[7] = "A4QXCUmAUOBVX64TvaZ46B5z8oAUnNZh";
            if (!zHasNext) {
                return;
            } else {
                it.next().onDownstreamFormatChanged(a3A04, c0990El);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B8
    public final void AB9() {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysLoaded(a3A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B8
    public final void ABA() {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[4] = "H8nHlV26gM4XBGJAm7WOVvtwu96ZUK2X";
            strArr[2] = "PAYN32B5Yp2dRtm6BiBsWpdjvopWw5ut";
            if (!zHasNext) {
                return;
            } else {
                it.next().onDrmKeysRemoved(a3A03);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B8
    public final void ABB() {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysRestored(a3A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B8
    public final void ABC(Exception exc) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmSessionManagerError(a3A03, exc);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ABD(int i, long j) {
        A3 a3A00 = A00();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDroppedVideoFrames(a3A00, i, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0991Em
    public final void ABo(int i, EW ew, C0989Ek c0989Ek, C0990El c0990El) {
        A04(i, ew);
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0991Em
    public final void ABq(int i, EW ew, C0989Ek c0989Ek, C0990El c0990El) {
        A04(i, ew);
        Iterator<A4> it = this.A04.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[0] = "U0y5Da5mII5YR5LLA1Yw3vUoz2XQzjRa";
            strArr[6] = "AsACfu1w80VTJMOzwO3g8Y2nz7gc0iIE";
            if (!zHasNext) {
                return;
            } else {
                it.next();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0991Em
    public final void ABt(int i, EW ew, C0989Ek c0989Ek, C0990El c0990El, IOException iOException, boolean z) {
        A3 a3A04 = A04(i, ew);
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onLoadError(a3A04, c0989Ek, c0990El, iOException, z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0991Em
    public final void ABv(int i, EW ew, C0989Ek c0989Ek, C0990El c0990El) {
        A04(i, ew);
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08779i
    public final void ABx(boolean z) {
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onLoadingChanged(a3A02, z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0991Em
    public final void AC4(int i, EW ew) {
        this.A02.A0B(i, ew);
        A3 a3A04 = A04(i, ew);
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onMediaPeriodCreated(a3A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0991Em
    public final void AC5(int i, EW ew) {
        this.A02.A0C(i, ew);
        A3 a3A04 = A04(i, ew);
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onMediaPeriodReleased(a3A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.DH
    public final void AC8(Metadata metadata) {
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onMetadata(a3A02, metadata);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08779i
    public final void ACO(C08749f c08749f) {
        A3 a3A02 = A02();
        for (A4 a4 : this.A04) {
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[5] = "tyr0dpEvlbVKV2bQNXg9NMaK2xy6BoSW";
            strArr[3] = "0QT1knH3BDrt7WSXrhNoOdrd2qYVbD8e";
            a4.onPlaybackParametersChanged(a3A02, c08749f);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08779i
    public final void ACQ(C9K c9k) {
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onPlayerError(a3A02, c9k);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08779i
    public final void ACS(boolean z, int i) {
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A05;
            if (strArr[0].charAt(24) != strArr[6].charAt(24)) {
                throw new RuntimeException();
            }
            A05[1] = "LXJ0q";
            if (!zHasNext) {
                return;
            }
            A4 next = it.next();
            String[] strArr2 = A05;
            if (strArr2[4].charAt(29) != strArr2[2].charAt(29)) {
                String[] strArr3 = A05;
                strArr3[5] = "X7wD26nry5cKRUDoaHEW6GIg2BkBQsxF";
                strArr3[3] = "mBKm4QAdZAalWFRu5fZgU4pH2nbenvRU";
                next.onPlayerStateChanged(a3A02, z, i);
            } else {
                String[] strArr4 = A05;
                strArr4[5] = "Z6EwV7KsnuzYN7ajnraaFM2k28xO4kcl";
                strArr4[3] = "L2gfOX15V0Xhx6fkmzEhPGDX2RpQhPed";
                next.onPlayerStateChanged(a3A02, z, i);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08779i
    public final void ACU(int i) {
        this.A02.A0A(i);
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onPositionDiscontinuity(a3A02, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0991Em
    public final void ACe(int i, EW ew) {
        this.A02.A0D(i, ew);
        A3 a3A04 = A04(i, ew);
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onReadingStarted(a3A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ACi(Surface surface) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onRenderedFirstFrame(a3A03, surface);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08779i
    public final void ACt() {
        if (this.A02.A0F()) {
            this.A02.A08();
            A3 a3A02 = A02();
            Iterator<A4> it = this.A04.iterator();
            while (it.hasNext()) {
                it.next().onSeekProcessed(a3A02);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08779i
    public final void AD9(AbstractC08939z abstractC08939z, Object obj, int i) {
        this.A02.A0E(abstractC08939z);
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onTimelineChanged(a3A02, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC08779i
    public final void ADC(TrackGroupArray trackGroupArray, GP gp) {
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onTracksChanged(a3A02, trackGroupArray, gp);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADK(String str, long j, long j2) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(a3A03, 2, str, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADL(C0914Au c0914Au) {
        A3 a3A00 = A00();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(a3A00, 2, c0914Au);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADM(C0914Au c0914Au) {
        A3 a3A02 = A02();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(a3A02, 2, c0914Au);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADQ(Format format) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(a3A03, 2, format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IL
    public final void ADV(int i, int i2, int i3, float f2) {
        A3 a3A03 = A03();
        Iterator<A4> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onVideoSizeChanged(a3A03, i, i2, i3, f2);
        }
    }
}
