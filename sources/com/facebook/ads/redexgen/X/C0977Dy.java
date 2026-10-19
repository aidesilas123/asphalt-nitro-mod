package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.offline.DownloadAction;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0977Dy {
    public static byte[] A0F;
    public static String[] A0G = {"68X6mTnOwXdfZzYVO84LiBNlITu89iQX", "mcCM", "SB1U", "GkXNtRrGsWIfNkCQn88aLdXmD8Z6vhvm", "Qey5CsRmzWj382X", "n9", "Qz1jsOzCfP5BXHleCyslZPCOD1Jlt2Hf", "OEfF4KTHhKUz1ci9ksApPyeCZN0rEDYT"};
    public int A00;
    public boolean A01;
    public boolean A02;
    public boolean A03;
    public final int A04;
    public final int A05;
    public final Handler A06;
    public final Handler A07;
    public final HandlerThread A08;
    public final C0959De A09;
    public final E3 A0A;
    public final ArrayList<RunnableC0974Dv> A0B;
    public final ArrayList<RunnableC0974Dv> A0C;
    public final CopyOnWriteArraySet<InterfaceC0970Dr> A0D;
    public final DownloadAction.Deserializer[] A0E;

    static {
        A0C();
    }

    public C0977Dy(E3 e3, int i, int i2, File file, DownloadAction.Deserializer... deserializerArr) {
        HI.A05(deserializerArr.length > 0, A05(16, 38, 36));
        this.A0A = e3;
        this.A04 = i;
        this.A05 = i2;
        this.A09 = new C0959De(file);
        this.A0E = deserializerArr;
        this.A01 = true;
        this.A0C = new ArrayList<>();
        this.A0B = new ArrayList<>();
        Looper looperMyLooper = Looper.myLooper();
        this.A07 = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper);
        HandlerThread handlerThread = new HandlerThread(A05(54, 24, 51));
        this.A08 = handlerThread;
        handlerThread.start();
        this.A06 = new Handler(handlerThread.getLooper());
        this.A0D = new CopyOnWriteArraySet<>();
        A08();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RunnableC0974Dv A02(DownloadAction downloadAction) {
        int i = this.A00;
        this.A00 = i + 1;
        RunnableC0974Dv runnableC0974Dv = new RunnableC0974Dv(i, this, downloadAction, this.A05, null);
        this.A0C.add(runnableC0974Dv);
        A0J(A05(78, 13, 91), runnableC0974Dv);
        return runnableC0974Dv;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 37);
        }
        return new String(bArrCopyOfRange);
    }

    private void A08() {
        this.A06.post(new RunnableC0968Dp(this));
    }

    private void A09() {
        if (!A0R()) {
            return;
        }
        Iterator<InterfaceC0970Dr> it = this.A0D.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0G[3].charAt(7) == 'd') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[5] = "Uj";
            strArr[4] = "M47RheKcpZxFkBs";
            if (!zHasNext) {
                return;
            } else {
                it.next().ABW(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        DownloadAction downloadAction;
        boolean z;
        if (!this.A02 || this.A03) {
            return;
        }
        boolean z2 = this.A01 || this.A0B.size() == this.A04;
        for (int i = 0; i < this.A0C.size(); i++) {
            RunnableC0974Dv runnableC0974Dv = this.A0C.get(i);
            boolean zA0E = runnableC0974Dv.A0E();
            if (A0G[0].charAt(7) == 'Z') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[5] = "ZZ";
            strArr[4] = "k3SOhcJE6F5rWIN";
            if (zA0E && ((z = (downloadAction = runnableC0974Dv.A04).A03) || !z2)) {
                boolean z3 = true;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        break;
                    }
                    RunnableC0974Dv runnableC0974Dv2 = this.A0C.get(i2);
                    if (runnableC0974Dv2.A04.A09(downloadAction)) {
                        if (!z) {
                            if (runnableC0974Dv2.A04.A03) {
                                z3 = false;
                                z2 = true;
                                break;
                            }
                        } else {
                            z3 = false;
                            String str = runnableC0974Dv + A05(0, 14, 3) + runnableC0974Dv2;
                            runnableC0974Dv2.A08();
                        }
                    }
                    i2++;
                }
                if (z3) {
                    runnableC0974Dv.A0A();
                    if (!z) {
                        this.A0B.add(runnableC0974Dv);
                        z2 = this.A0B.size() == this.A04;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        if (this.A03) {
            return;
        }
        DownloadAction[] downloadActionArr = new DownloadAction[this.A0C.size()];
        for (int i = 0; i < this.A0C.size(); i++) {
            downloadActionArr[i] = this.A0C.get(i).A04;
        }
        this.A06.post(new RunnableC0969Dq(this, downloadActionArr));
    }

    public static void A0C() {
        A0F = new byte[]{6, 69, 74, 71, 85, 78, 67, 85, 6, 81, 79, 82, 78, 6, 62, 36, 64, 117, 33, 109, 100, 96, 114, 117, 33, 110, 111, 100, 33, 69, 100, 114, 100, 115, 104, 96, 109, 104, 123, 100, 115, 33, 104, 114, 33, 115, 100, 112, 116, 104, 115, 100, 101, 47, 82, 121, 97, 120, 122, 121, 119, 114, 91, 119, 120, 119, 113, 115, 100, 54, 112, Ascii.DEL, 122, 115, 54, Ascii.DEL, 57, 121, 42, Ascii.US, Ascii.CR, Ascii.NAK, 94, Ascii.ETB, Ascii.CR, 94, Ascii.US, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.SUB, 9, 60, 46, 54, 125, 46, 41, 60, 41, 56, 125, 52, 46, 125, 62, 53, 60, 51, 58, 56, 57};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(RunnableC0974Dv runnableC0974Dv) {
        A0J(A05(91, 21, 120), runnableC0974Dv);
        C0976Dx c0976DxA0K = runnableC0974Dv.A0K();
        Iterator<InterfaceC0970Dr> it = this.A0D.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0G[0].charAt(7) == 'Z') {
                throw new RuntimeException();
            }
            A0G[0] = "TUrgn6We5nsrVkZlQG2KUeV0nEHaGaai";
            if (!zHasNext) {
                return;
            } else {
                it.next().AD8(this, c0976DxA0K);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E(RunnableC0974Dv runnableC0974Dv) {
        if (this.A03) {
            return;
        }
        boolean z = !runnableC0974Dv.A0L();
        if (z) {
            this.A0B.remove(runnableC0974Dv);
        }
        A0D(runnableC0974Dv);
        if (A0G[3].charAt(7) == 'd') {
            throw new RuntimeException();
        }
        A0G[6] = "xCRZPuTuqF5VhljpIGNZbvIN3H6gjFvE";
        if (runnableC0974Dv.A0M()) {
            this.A0C.remove(runnableC0974Dv);
            A0B();
        }
        if (z) {
            A0A();
            A09();
        }
    }

    public static void A0J(String str, RunnableC0974Dv runnableC0974Dv) {
        String str2 = str + A05(14, 2, 33) + runnableC0974Dv;
    }

    public final int A0O(DownloadAction downloadAction) {
        HI.A04(!this.A03);
        RunnableC0974Dv runnableC0974DvA02 = A02(downloadAction);
        if (this.A02) {
            A0B();
            A0A();
            if (runnableC0974DvA02.A06 == 0) {
                A0D(runnableC0974DvA02);
            }
        }
        return runnableC0974DvA02.A02;
    }

    public final void A0P() {
        HI.A04(!this.A03);
        if (this.A01) {
            this.A01 = false;
            A0A();
        }
    }

    public final void A0Q(InterfaceC0970Dr interfaceC0970Dr) {
        this.A0D.add(interfaceC0970Dr);
    }

    public final boolean A0R() {
        HI.A04(!this.A03);
        if (!this.A02) {
            return false;
        }
        for (int i = 0; i < this.A0C.size(); i++) {
            if (this.A0C.get(i).A0L()) {
                return false;
            }
        }
        return true;
    }

    public final C0976Dx[] A0S() {
        HI.A04(!this.A03);
        C0976Dx[] c0976DxArr = new C0976Dx[this.A0C.size()];
        for (int i = 0; i < c0976DxArr.length; i++) {
            c0976DxArr[i] = this.A0C.get(i).A0K();
        }
        return c0976DxArr;
    }
}
