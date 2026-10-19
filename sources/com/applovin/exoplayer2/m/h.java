package com.applovin.exoplayer2.m;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.work.WorkRequest;
import com.applovin.exoplayer2.f.g;
import com.applovin.exoplayer2.f.l;
import com.applovin.exoplayer2.l.ah;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.m.n;
import com.applovin.exoplayer2.z1;
import com.google.android.gms.common.Scopes;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.applovin.exoplayer2.f.j {
    private static final int[] adL = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean adM;
    private static boolean adN;
    private final Context E;

    @Nullable
    private Surface Hm;
    private final m adO;
    private final n.a adP;
    private final long adQ;
    private final int adR;
    private final boolean adS;
    private a adT;
    private boolean adU;
    private boolean adV;

    @Nullable
    private d adW;
    private boolean adX;
    private int adY;
    private boolean adZ;
    private boolean aea;
    private boolean aeb;
    private long aec;
    private long aed;
    private long aee;
    private int aef;
    private int aeg;
    private int aeh;
    private long aei;
    private long aej;
    private int aek;
    private int ael;
    private int aem;
    private float aen;

    @Nullable
    private o aeo;
    private int aep;

    @Nullable
    b aeq;

    @Nullable
    private l aer;
    private boolean hi;
    private long rE;
    private int rF;

    protected static final class a {
        public final int aes;
        public final int dE;
        public final int height;

        public a(int i, int i2, int i3) {
            this.dE = i;
            this.height = i2;
            this.aes = i3;
        }
    }

    @RequiresApi(23)
    private final class b implements Handler.Callback, g.c {
        private final Handler jS;

        public b(com.applovin.exoplayer2.f.g gVar) {
            Handler handlerA = ai.a(this);
            this.jS = handlerA;
            gVar.a(this, handlerA);
        }

        private void bC(long j) {
            h hVar = h.this;
            if (this != hVar.aeq) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                hVar.qj();
                return;
            }
            try {
                hVar.by(j);
            } catch (com.applovin.exoplayer2.p e2) {
                h.this.b(e2);
            }
        }

        @Override // com.applovin.exoplayer2.f.g.c
        public void a(com.applovin.exoplayer2.f.g gVar, long j, long j2) {
            if (ai.acV >= 30) {
                bC(j);
            } else {
                this.jS.sendMessageAtFrontOfQueue(Message.obtain(this.jS, 0, (int) (j >> 32), (int) j));
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            bC(ai.O(message.arg1, message.arg2));
            return true;
        }
    }

    public h(Context context, g.b bVar, com.applovin.exoplayer2.f.k kVar, long j, boolean z, @Nullable Handler handler, @Nullable n nVar, int i) {
        super(2, bVar, kVar, z, 30.0f);
        this.adQ = j;
        this.adR = i;
        Context applicationContext = context.getApplicationContext();
        this.E = applicationContext;
        this.adO = new m(applicationContext);
        this.adP = new n.a(handler, nVar);
        this.adS = qt();
        this.aed = C.TIME_UNSET;
        this.aek = -1;
        this.ael = -1;
        this.aen = -1.0f;
        this.adY = 1;
        this.aep = 0;
        qo();
    }

    public h(Context context, com.applovin.exoplayer2.f.k kVar, long j, boolean z, @Nullable Handler handler, @Nullable n nVar, int i) {
        this(context, g.b.Hp, kVar, j, z, handler, nVar, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.applovin.exoplayer2.m.m] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.applovin.exoplayer2.e, com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.m.h] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.applovin.exoplayer2.m.d] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void S(@Nullable Object obj) throws com.applovin.exoplayer2.p {
        ?? C = obj instanceof Surface ? (Surface) obj : 0;
        if (C == 0) {
            d dVar = this.adW;
            if (dVar != null) {
                C = dVar;
            } else {
                com.applovin.exoplayer2.f.i iVarKb = kb();
                if (iVarKb != null && e(iVarKb)) {
                    C = d.c(this.E, iVarKb.Hu);
                    this.adW = C;
                }
            }
        }
        if (this.Hm == C) {
            if (C == 0 || C == this.adW) {
                return;
            }
            qq();
            qn();
            return;
        }
        this.Hm = C;
        this.adO.c(C);
        this.adX = false;
        int iP = P();
        com.applovin.exoplayer2.f.g gVarJZ = jZ();
        if (gVarJZ != null) {
            if (ai.acV < 23 || C == 0 || this.adU) {
                kd();
                jX();
            } else {
                a(gVarJZ, C);
            }
        }
        if (C == 0 || C == this.adW) {
            qo();
            ql();
            return;
        }
        qq();
        ql();
        if (iP == 2) {
            qk();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int a(com.applovin.exoplayer2.f.i r10, com.applovin.exoplayer2.v r11) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.m.h.a(com.applovin.exoplayer2.f.i, com.applovin.exoplayer2.v):int");
    }

    private static List<com.applovin.exoplayer2.f.i> a(com.applovin.exoplayer2.f.k kVar, com.applovin.exoplayer2.v vVar, boolean z, boolean z2) throws l.b {
        Pair<Integer, Integer> pairR;
        String str = vVar.dz;
        if (str == null) {
            return Collections.emptyList();
        }
        List<com.applovin.exoplayer2.f.i> listA = com.applovin.exoplayer2.f.l.a(kVar.getDecoderInfos(str, z, z2), vVar);
        if ("video/dolby-vision".equals(str) && (pairR = com.applovin.exoplayer2.f.l.r(vVar)) != null) {
            int iIntValue = ((Integer) pairR.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                listA.addAll(kVar.getDecoderInfos("video/hevc", z, z2));
            } else if (iIntValue == 512) {
                listA.addAll(kVar.getDecoderInfos("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(listA);
    }

    private void a(long j, long j2, com.applovin.exoplayer2.v vVar) {
        l lVar = this.aer;
        if (lVar != null) {
            lVar.a(j, j2, vVar, ka());
        }
    }

    @RequiresApi(21)
    private static void a(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    @RequiresApi(29)
    private static void a(com.applovin.exoplayer2.f.g gVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        gVar.u(bundle);
    }

    private static Point b(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar) {
        int i = vVar.height;
        int i2 = vVar.dE;
        boolean z = i > i2;
        int i3 = z ? i : i2;
        if (z) {
            i = i2;
        }
        float f2 = i / i3;
        for (int i4 : adL) {
            int i5 = (int) (i4 * f2);
            if (i4 <= i3 || i5 <= i) {
                break;
            }
            if (ai.acV >= 21) {
                int i6 = z ? i5 : i4;
                if (!z) {
                    i4 = i5;
                }
                Point pointD = iVar.D(i6, i4);
                if (iVar.a(pointD.x, pointD.y, vVar.dF)) {
                    return pointD;
                }
            } else {
                try {
                    int iN = ai.N(i4, 16) * 16;
                    int iN2 = ai.N(i5, 16) * 16;
                    if (iN * iN2 <= com.applovin.exoplayer2.f.l.kz()) {
                        int i7 = z ? iN2 : iN;
                        if (!z) {
                            iN = iN2;
                        }
                        return new Point(i7, iN);
                    }
                } catch (l.b unused) {
                }
            }
        }
        return null;
    }

    private static boolean bA(long j) {
        return j < -30000;
    }

    private static boolean bB(long j) {
        return j < -500000;
    }

    protected static int c(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar) {
        if (vVar.dA == -1) {
            return a(iVar, vVar);
        }
        int size = vVar.dB.size();
        int length = 0;
        for (int i = 0; i < size; i++) {
            length += vVar.dB.get(i).length;
        }
        return vVar.dA + length;
    }

    private boolean e(com.applovin.exoplayer2.f.i iVar) {
        return ai.acV >= 23 && !this.hi && !bo(iVar.name) && (!iVar.Hu || d.p(this.E));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void qj() {
        kt();
    }

    private void qk() {
        this.aed = this.adQ > 0 ? SystemClock.elapsedRealtime() + this.adQ : C.TIME_UNSET;
    }

    private void ql() {
        com.applovin.exoplayer2.f.g gVarJZ;
        this.adZ = false;
        if (ai.acV < 23 || !this.hi || (gVarJZ = jZ()) == null) {
            return;
        }
        this.aeq = new b(gVarJZ);
    }

    private void qn() {
        if (this.adX) {
            this.adP.T(this.Hm);
        }
    }

    private void qo() {
        this.aeo = null;
    }

    private void qp() {
        int i = this.aek;
        if (i == -1 && this.ael == -1) {
            return;
        }
        o oVar = this.aeo;
        if (oVar != null && oVar.dE == i && oVar.height == this.ael && oVar.afl == this.aem && oVar.dH == this.aen) {
            return;
        }
        o oVar2 = new o(this.aek, this.ael, this.aem, this.aen);
        this.aeo = oVar2;
        this.adP.b(oVar2);
    }

    private void qq() {
        o oVar = this.aeo;
        if (oVar != null) {
            this.adP.b(oVar);
        }
    }

    private void qr() {
        if (this.aef > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.adP.l(this.aef, jElapsedRealtime - this.aee);
            this.aef = 0;
            this.aee = jElapsedRealtime;
        }
    }

    private void qs() {
        int i = this.rF;
        if (i != 0) {
            this.adP.f(this.rE, i);
            this.rE = 0L;
            this.rF = 0;
        }
    }

    private static boolean qt() {
        return "NVIDIA".equals(ai.acX);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:610:0x0829  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001a  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean qu() {
        /*
            Method dump skipped, instruction units count: 3046
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.m.h.qu():boolean");
    }

    protected boolean C(long j, long j2) {
        return bA(j) && j2 > 100000;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected float a(float f2, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v[] vVarArr) {
        float fMax = -1.0f;
        for (com.applovin.exoplayer2.v vVar2 : vVarArr) {
            float f3 = vVar2.dF;
            if (f3 != -1.0f) {
                fMax = Math.max(fMax, f3);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f2;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected int a(com.applovin.exoplayer2.f.k kVar, com.applovin.exoplayer2.v vVar) throws l.b {
        int i = 0;
        if (!com.applovin.exoplayer2.l.u.aX(vVar.dz)) {
            return z1.b(0);
        }
        boolean z = vVar.dC != null;
        List<com.applovin.exoplayer2.f.i> listA = a(kVar, vVar, z, false);
        if (z && listA.isEmpty()) {
            listA = a(kVar, vVar, false, false);
        }
        if (listA.isEmpty()) {
            return z1.b(1);
        }
        if (!com.applovin.exoplayer2.f.j.q(vVar)) {
            return z1.b(2);
        }
        com.applovin.exoplayer2.f.i iVar = listA.get(0);
        boolean zL = iVar.l(vVar);
        int i2 = iVar.n(vVar) ? 16 : 8;
        if (zL) {
            List<com.applovin.exoplayer2.f.i> listA2 = a(kVar, vVar, z, true);
            if (!listA2.isEmpty()) {
                com.applovin.exoplayer2.f.i iVar2 = listA2.get(0);
                if (iVar2.l(vVar) && iVar2.n(vVar)) {
                    i = 32;
                }
            }
        }
        return z1.a(zL ? 4 : 3, i2, i);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(21)
    protected MediaFormat a(com.applovin.exoplayer2.v vVar, String str, a aVar, float f2, boolean z, int i) {
        Pair<Integer, Integer> pairR;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", vVar.dE);
        mediaFormat.setInteger("height", vVar.height);
        com.applovin.exoplayer2.l.t.a(mediaFormat, vVar.dB);
        com.applovin.exoplayer2.l.t.a(mediaFormat, "frame-rate", vVar.dF);
        com.applovin.exoplayer2.l.t.a(mediaFormat, "rotation-degrees", vVar.dG);
        com.applovin.exoplayer2.l.t.a(mediaFormat, vVar.dK);
        if ("video/dolby-vision".equals(vVar.dz) && (pairR = com.applovin.exoplayer2.f.l.r(vVar)) != null) {
            com.applovin.exoplayer2.l.t.a(mediaFormat, Scopes.PROFILE, ((Integer) pairR.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.dE);
        mediaFormat.setInteger("max-height", aVar.height);
        com.applovin.exoplayer2.l.t.a(mediaFormat, "max-input-size", aVar.aes);
        if (ai.acV >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f2 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            a(mediaFormat, i);
        }
        return mediaFormat;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected com.applovin.exoplayer2.c.h a(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v vVar2) {
        com.applovin.exoplayer2.c.h hVarA = iVar.a(vVar, vVar2);
        int i = hVarA.rR;
        int i2 = vVar2.dE;
        a aVar = this.adT;
        if (i2 > aVar.dE || vVar2.height > aVar.height) {
            i |= 256;
        }
        if (c(iVar, vVar2) > this.adT.aes) {
            i |= 64;
        }
        int i3 = i;
        return new com.applovin.exoplayer2.c.h(iVar.name, vVar, vVar2, i3 != 0 ? 0 : hVarA.pZ, i3);
    }

    @Override // com.applovin.exoplayer2.f.j
    @Nullable
    protected com.applovin.exoplayer2.c.h a(com.applovin.exoplayer2.w wVar) throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.c.h hVarA = super.a(wVar);
        this.adP.c(wVar.dU, hVarA);
        return hVarA;
    }

    @Override // com.applovin.exoplayer2.f.j
    @TargetApi(17)
    protected g.a a(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar, @Nullable MediaCrypto mediaCrypto, float f2) {
        d dVar = this.adW;
        if (dVar != null && dVar.Hu != iVar.Hu) {
            dVar.release();
            this.adW = null;
        }
        String str = iVar.Hr;
        a aVarB = b(iVar, vVar, af());
        this.adT = aVarB;
        MediaFormat mediaFormatA = a(vVar, str, aVarB, f2, this.adS, this.hi ? this.aep : 0);
        if (this.Hm == null) {
            if (!e(iVar)) {
                throw new IllegalStateException();
            }
            if (this.adW == null) {
                this.adW = d.c(this.E, iVar.Hu);
            }
            this.Hm = this.adW;
        }
        return g.a.a(iVar, mediaFormatA, vVar, this.Hm, mediaCrypto);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected com.applovin.exoplayer2.f.h a(Throwable th, @Nullable com.applovin.exoplayer2.f.i iVar) {
        return new g(th, iVar, this.Hm);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected List<com.applovin.exoplayer2.f.i> a(com.applovin.exoplayer2.f.k kVar, com.applovin.exoplayer2.v vVar, boolean z) throws l.b {
        return a(kVar, vVar, z, this.hi);
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e, com.applovin.exoplayer2.ar
    public void a(float f2, float f3) throws com.applovin.exoplayer2.p {
        super.a(f2, f3);
        this.adO.v(f2);
    }

    @Override // com.applovin.exoplayer2.e, com.applovin.exoplayer2.ao.b
    public void a(int i, @Nullable Object obj) throws com.applovin.exoplayer2.p {
        if (i == 1) {
            S(obj);
            return;
        }
        if (i == 7) {
            this.aer = (l) obj;
            return;
        }
        if (i == 10) {
            int iIntValue = ((Integer) obj).intValue();
            if (this.aep != iIntValue) {
                this.aep = iIntValue;
                if (this.hi) {
                    kd();
                    return;
                }
                return;
            }
            return;
        }
        if (i != 4) {
            if (i != 5) {
                super.a(i, obj);
                return;
            } else {
                this.adO.fS(((Integer) obj).intValue());
                return;
            }
        }
        this.adY = ((Integer) obj).intValue();
        com.applovin.exoplayer2.f.g gVarJZ = jZ();
        if (gVarJZ != null) {
            gVarJZ.cJ(this.adY);
        }
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    protected void a(long j, boolean z) throws com.applovin.exoplayer2.p {
        super.a(j, z);
        ql();
        this.adO.qx();
        this.aei = C.TIME_UNSET;
        this.aec = C.TIME_UNSET;
        this.aeg = 0;
        if (z) {
            qk();
        } else {
            this.aed = C.TIME_UNSET;
        }
    }

    @Override // com.applovin.exoplayer2.f.j
    @CallSuper
    protected void a(com.applovin.exoplayer2.c.g gVar) throws com.applovin.exoplayer2.p {
        boolean z = this.hi;
        if (!z) {
            this.aeh++;
        }
        if (ai.acV >= 23 || !z) {
            return;
        }
        by(gVar.rJ);
    }

    protected void a(com.applovin.exoplayer2.f.g gVar, int i, long j) {
        ah.bg("skipVideoBuffer");
        gVar.l(i, false);
        ah.pV();
        this.IL.rA++;
    }

    @RequiresApi(21)
    protected void a(com.applovin.exoplayer2.f.g gVar, int i, long j, long j2) {
        qp();
        ah.bg("releaseOutputBuffer");
        gVar.i(i, j2);
        ah.pV();
        this.aej = SystemClock.elapsedRealtime() * 1000;
        this.IL.rz++;
        this.aeg = 0;
        qm();
    }

    @RequiresApi(23)
    protected void a(com.applovin.exoplayer2.f.g gVar, Surface surface) {
        gVar.b(surface);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(com.applovin.exoplayer2.v vVar, @Nullable MediaFormat mediaFormat) {
        com.applovin.exoplayer2.f.g gVarJZ = jZ();
        if (gVarJZ != null) {
            gVarJZ.cJ(this.adY);
        }
        if (this.hi) {
            this.aek = vVar.dE;
            this.ael = vVar.height;
        } else {
            com.applovin.exoplayer2.l.a.checkNotNull(mediaFormat);
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            this.aek = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            this.ael = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        }
        float f2 = vVar.dH;
        this.aen = f2;
        if (ai.acV >= 21) {
            int i = vVar.dG;
            if (i == 90 || i == 270) {
                int i2 = this.aek;
                this.aek = this.ael;
                this.ael = i2;
                this.aen = 1.0f / f2;
            }
        } else {
            this.aem = vVar.dG;
        }
        this.adO.y(vVar.dF);
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    protected void a(boolean z, boolean z2) throws com.applovin.exoplayer2.p {
        super.a(z, z2);
        boolean z3 = ag().hi;
        com.applovin.exoplayer2.l.a.checkState((z3 && this.aep == 0) ? false : true);
        if (this.hi != z3) {
            this.hi = z3;
            kd();
        }
        this.adP.e(this.IL);
        this.adO.qw();
        this.aea = z2;
        this.aeb = false;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected boolean a(long j, long j2, @Nullable com.applovin.exoplayer2.f.g gVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, com.applovin.exoplayer2.v vVar) throws com.applovin.exoplayer2.p {
        long j4;
        boolean z3;
        com.applovin.exoplayer2.l.a.checkNotNull(gVar);
        if (this.aec == C.TIME_UNSET) {
            this.aec = j;
        }
        if (j3 != this.aei) {
            this.adO.bw(j3);
            this.aei = j3;
        }
        long jKu = ku();
        long j5 = j3 - jKu;
        if (z && !z2) {
            a(gVar, i, j5);
            return true;
        }
        double dKn = kn();
        boolean z4 = P() == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j6 = (long) ((j3 - j) / dKn);
        if (z4) {
            j6 -= jElapsedRealtime - j2;
        }
        if (this.Hm == this.adW) {
            if (!bA(j6)) {
                return false;
            }
            a(gVar, i, j5);
            bz(j6);
            return true;
        }
        long j7 = jElapsedRealtime - this.aej;
        if (this.aeb ? this.adZ : !(z4 || this.aea)) {
            j4 = j7;
            z3 = false;
        } else {
            j4 = j7;
            z3 = true;
        }
        if (this.aed == C.TIME_UNSET && j >= jKu && (z3 || (z4 && C(j6, j4)))) {
            long jNanoTime = System.nanoTime();
            a(j5, jNanoTime, vVar);
            if (ai.acV >= 21) {
                a(gVar, i, j5, jNanoTime);
            } else {
                c(gVar, i, j5);
            }
            bz(j6);
            return true;
        }
        if (z4 && j != this.aec) {
            long jNanoTime2 = System.nanoTime();
            long jBD = this.adO.bD((j6 * 1000) + jNanoTime2);
            long j8 = (jBD - jNanoTime2) / 1000;
            boolean z5 = this.aed != C.TIME_UNSET;
            if (b(j8, j2, z2) && h(j, z5)) {
                return false;
            }
            if (a(j8, j2, z2)) {
                if (z5) {
                    a(gVar, i, j5);
                } else {
                    b(gVar, i, j5);
                }
                bz(j8);
                return true;
            }
            if (ai.acV >= 21) {
                if (j8 < 50000) {
                    a(j5, jBD, vVar);
                    a(gVar, i, j5, jBD);
                    bz(j8);
                    return true;
                }
            } else if (j8 < WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                if (j8 > 11000) {
                    try {
                        Thread.sleep((j8 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                a(j5, jBD, vVar);
                c(gVar, i, j5);
                bz(j8);
                return true;
            }
        }
        return false;
    }

    protected boolean a(long j, long j2, boolean z) {
        return bA(j) && !z;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected boolean a(com.applovin.exoplayer2.f.i iVar) {
        return this.Hm != null || e(iVar);
    }

    @Override // com.applovin.exoplayer2.f.j
    @CallSuper
    protected void aN(long j) {
        super.aN(j);
        if (this.hi) {
            return;
        }
        this.aeh--;
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    protected void aa() {
        super.aa();
        this.aef = 0;
        this.aee = SystemClock.elapsedRealtime();
        this.aej = SystemClock.elapsedRealtime() * 1000;
        this.rE = 0L;
        this.rF = 0;
        this.adO.aa();
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    protected void ab() {
        this.aed = C.TIME_UNSET;
        qr();
        qs();
        this.adO.ab();
        super.ab();
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    protected void ac() {
        qo();
        ql();
        this.adX = false;
        this.adO.ac();
        this.aeq = null;
        try {
            super.ac();
        } finally {
            this.adP.f(this.IL);
        }
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    @TargetApi(17)
    protected void ad() {
        try {
            super.ad();
            d dVar = this.adW;
            if (dVar != null) {
                if (this.Hm == dVar) {
                    this.Hm = null;
                }
                dVar.release();
                this.adW = null;
            }
        } catch (Throwable th) {
            if (this.adW != null) {
                Surface surface = this.Hm;
                d dVar2 = this.adW;
                if (surface == dVar2) {
                    this.Hm = null;
                }
                dVar2.release();
                this.adW = null;
            }
            throw th;
        }
    }

    protected a b(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v[] vVarArr) {
        int iA;
        int iMax = vVar.dE;
        int iMax2 = vVar.height;
        int iC = c(iVar, vVar);
        if (vVarArr.length == 1) {
            if (iC != -1 && (iA = a(iVar, vVar)) != -1) {
                iC = Math.min((int) (iC * 1.5f), iA);
            }
            return new a(iMax, iMax2, iC);
        }
        int length = vVarArr.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            com.applovin.exoplayer2.v vVarBT = vVarArr[i];
            if (vVar.dK != null && vVarBT.dK == null) {
                vVarBT = vVarBT.bR().a(vVar.dK).bT();
            }
            if (iVar.a(vVar, vVarBT).pZ != 0) {
                int i2 = vVarBT.dE;
                z |= i2 == -1 || vVarBT.height == -1;
                iMax = Math.max(iMax, i2);
                iMax2 = Math.max(iMax2, vVarBT.height);
                iC = Math.max(iC, c(iVar, vVarBT));
            }
        }
        if (z) {
            com.applovin.exoplayer2.l.q.h("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointB = b(iVar, vVar);
            if (pointB != null) {
                iMax = Math.max(iMax, pointB.x);
                iMax2 = Math.max(iMax2, pointB.y);
                iC = Math.max(iC, a(iVar, vVar.bR().J(iMax).K(iMax2).bT()));
                com.applovin.exoplayer2.l.q.h("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new a(iMax, iMax2, iC);
    }

    protected void b(com.applovin.exoplayer2.f.g gVar, int i, long j) {
        ah.bg("dropVideoBuffer");
        gVar.l(i, false);
        ah.pV();
        fR(1);
    }

    protected boolean b(long j, long j2, boolean z) {
        return bB(j) && !z;
    }

    protected boolean bo(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (h.class) {
            if (!adM) {
                adN = qu();
                adM = true;
            }
        }
        return adN;
    }

    protected void by(long j) throws com.applovin.exoplayer2.p {
        aL(j);
        qp();
        this.IL.rz++;
        qm();
        aN(j);
    }

    protected void bz(long j) {
        this.IL.af(j);
        this.rE += j;
        this.rF++;
    }

    protected void c(com.applovin.exoplayer2.f.g gVar, int i, long j) {
        qp();
        ah.bg("releaseOutputBuffer");
        gVar.l(i, true);
        ah.pV();
        this.aej = SystemClock.elapsedRealtime() * 1000;
        this.IL.rz++;
        this.aeg = 0;
        qm();
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void e(String str, long j, long j2) {
        this.adP.c(str, j, j2);
        this.adU = bo(str);
        this.adV = ((com.applovin.exoplayer2.f.i) com.applovin.exoplayer2.l.a.checkNotNull(kb())).jW();
        if (ai.acV < 23 || !this.hi) {
            return;
        }
        this.aeq = new b((com.applovin.exoplayer2.f.g) com.applovin.exoplayer2.l.a.checkNotNull(jZ()));
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void eB() {
        super.eB();
        ql();
    }

    @Override // com.applovin.exoplayer2.f.j
    @TargetApi(29)
    protected void f(com.applovin.exoplayer2.c.g gVar) throws com.applovin.exoplayer2.p {
        if (this.adV) {
            ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.checkNotNull(gVar.rK);
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4 && b4 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    a(jZ(), bArr);
                }
            }
        }
    }

    protected void fR(int i) {
        com.applovin.exoplayer2.c.e eVar = this.IL;
        eVar.rB += i;
        this.aef += i;
        int i2 = this.aeg + i;
        this.aeg = i2;
        eVar.rC = Math.max(i2, eVar.rC);
        int i3 = this.adR;
        if (i3 <= 0 || this.aef < i3) {
            return;
        }
        qr();
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    protected boolean h(long j, boolean z) throws com.applovin.exoplayer2.p {
        int iE = e(j);
        if (iE == 0) {
            return false;
        }
        com.applovin.exoplayer2.c.e eVar = this.IL;
        eVar.rD++;
        int i = this.aeh + iE;
        if (z) {
            eVar.rA += i;
        } else {
            fR(i);
        }
        ke();
        return true;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void i(Exception exc) {
        com.applovin.exoplayer2.l.q.c("MediaCodecVideoRenderer", "Video codec error", exc);
        this.adP.k(exc);
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.ar
    public boolean isReady() {
        d dVar;
        if (super.isReady() && (this.adZ || (((dVar = this.adW) != null && this.Hm == dVar) || jZ() == null || this.hi))) {
            this.aed = C.TIME_UNSET;
            return true;
        }
        if (this.aed == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.aed) {
            return true;
        }
        this.aed = C.TIME_UNSET;
        return false;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected boolean jY() {
        return this.hi && ai.acV < 23;
    }

    @Override // com.applovin.exoplayer2.f.j
    @CallSuper
    protected void kh() {
        super.kh();
        this.aeh = 0;
    }

    void qm() {
        this.aeb = true;
        if (this.adZ) {
            return;
        }
        this.adZ = true;
        this.adP.T(this.Hm);
        this.adX = true;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void v(String str) {
        this.adP.t(str);
    }
}
