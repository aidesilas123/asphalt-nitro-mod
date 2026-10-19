package com.applovin.exoplayer2.f;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.c.g;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.m0;
import com.applovin.exoplayer2.f.a;
import com.applovin.exoplayer2.f.g;
import com.applovin.exoplayer2.f.l;
import com.applovin.exoplayer2.l.af;
import com.applovin.exoplayer2.l.ah;
import com.applovin.exoplayer2.l.ai;
import com.google.android.gms.games.GamesStatusCodes;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class j extends com.applovin.exoplayer2.e {
    private static final byte[] Hz = {0, 0, 1, 103, 66, -64, Ascii.VT, -38, 37, -112, 0, 0, 1, 104, -50, Ascii.SI, 19, 32, 0, 0, 1, 101, -120, -124, Ascii.CR, -50, 113, Ascii.CAN, -96, 0, 47, -65, Ascii.FS, 49, -61, 39, 93, 120};
    private final g.b HA;
    private final float HB;
    private final com.applovin.exoplayer2.c.g HC;
    private final com.applovin.exoplayer2.c.g HD;
    private final com.applovin.exoplayer2.c.g HE;
    private final d HF;
    private final af<com.applovin.exoplayer2.v> HG;
    private final ArrayList<Long> HH;
    private final MediaCodec.BufferInfo HI;
    private final long[] HJ;
    private final long[] HK;
    private final long[] HL;

    @Nullable
    private com.applovin.exoplayer2.v HM;

    @Nullable
    private com.applovin.exoplayer2.d.f HN;

    @Nullable
    private com.applovin.exoplayer2.d.f HO;

    @Nullable
    private MediaCrypto HP;
    private boolean HQ;
    private long HR;
    private float HS;
    private float HU;

    @Nullable
    private g HV;

    @Nullable
    private com.applovin.exoplayer2.v HW;

    @Nullable
    private MediaFormat HX;
    private boolean HY;
    private float HZ;

    @Nullable
    private i Hk;
    private boolean IA;
    private boolean IB;
    private boolean IC;
    private long ID;
    private long IE;
    private boolean IF;
    private boolean IG;
    private boolean IH;
    private boolean II;
    private boolean IJ;

    @Nullable
    private com.applovin.exoplayer2.p IK;
    protected com.applovin.exoplayer2.c.e IL;
    private long IM;
    private long IN;
    private int IO;

    @Nullable
    private ArrayDeque<i> Ia;

    @Nullable
    private a Ib;
    private int Ic;
    private boolean Id;
    private boolean Ie;
    private boolean If;
    private boolean Ig;
    private boolean Ih;
    private boolean Ii;
    private boolean Ij;
    private boolean Ik;
    private boolean Il;
    private boolean Im;

    @Nullable
    private e In;
    private long Io;
    private int Ip;
    private int Iq;
    private boolean Ir;
    private boolean Is;
    private boolean It;
    private boolean Iu;
    private boolean Iv;
    private boolean Iw;
    private int Ix;
    private int Iy;
    private int Iz;
    private final boolean bf;
    private final k bg;
    private boolean bi;
    private boolean bj;

    @Nullable
    private ByteBuffer kT;

    @Nullable
    private com.applovin.exoplayer2.v lS;

    public static class a extends Exception {

        @Nullable
        public final i Hk;

        @Nullable
        public final String Hq;
        public final boolean IP;

        @Nullable
        public final a IQ;
        public final String eg;

        public a(com.applovin.exoplayer2.v vVar, @Nullable Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + vVar, th, vVar.dz, z, null, cV(i), null);
        }

        public a(com.applovin.exoplayer2.v vVar, @Nullable Throwable th, boolean z, i iVar) {
            this("Decoder init failed: " + iVar.name + ", " + vVar, th, vVar.dz, z, iVar, ai.acV >= 21 ? g(th) : null, null);
        }

        private a(String str, @Nullable Throwable th, String str2, boolean z, @Nullable i iVar, @Nullable String str3, @Nullable a aVar) {
            super(str, th);
            this.eg = str2;
            this.IP = z;
            this.Hk = iVar;
            this.Hq = str3;
            this.IQ = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public a a(a aVar) {
            return new a(getMessage(), getCause(), this.eg, this.IP, this.Hk, this.Hq, aVar);
        }

        private static String cV(int i) {
            return "com.applovin.exoplayer2.mediacodec.MediaCodecRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }

        @Nullable
        @RequiresApi(21)
        private static String g(@Nullable Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    public j(int i, g.b bVar, k kVar, boolean z, float f2) {
        super(i);
        this.HA = bVar;
        this.bg = (k) com.applovin.exoplayer2.l.a.checkNotNull(kVar);
        this.bf = z;
        this.HB = f2;
        this.HC = com.applovin.exoplayer2.c.g.hf();
        this.HD = new com.applovin.exoplayer2.c.g(0);
        this.HE = new com.applovin.exoplayer2.c.g(2);
        d dVar = new d();
        this.HF = dVar;
        this.HG = new af<>();
        this.HH = new ArrayList<>();
        this.HI = new MediaCodec.BufferInfo();
        this.HS = 1.0f;
        this.HU = 1.0f;
        this.HR = C.TIME_UNSET;
        this.HJ = new long[10];
        this.HK = new long[10];
        this.HL = new long[10];
        this.IM = C.TIME_UNSET;
        this.IN = C.TIME_UNSET;
        dVar.by(0);
        dVar.rH.order(ByteOrder.nativeOrder());
        this.HZ = -1.0f;
        this.Ic = 0;
        this.Ix = 0;
        this.Ip = -1;
        this.Iq = -1;
        this.Io = C.TIME_UNSET;
        this.ID = C.TIME_UNSET;
        this.IE = C.TIME_UNSET;
        this.Iy = 0;
        this.Iz = 0;
    }

    private List<i> P(boolean z) throws l.b {
        List<i> listA = a(this.bg, this.lS, z);
        if (listA.isEmpty() && z) {
            listA = a(this.bg, this.lS, false);
            if (!listA.isEmpty()) {
                com.applovin.exoplayer2.l.q.h("MediaCodecRenderer", "Drm session requires secure decoder for " + this.lS.dz + ", but no secure decoder available. Trying to proceed with " + listA + ".");
            }
        }
        return listA;
    }

    private static boolean Q(String str) {
        int i = ai.acV;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i == 19 && ai.acY.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private int R(String str) {
        int i = ai.acV;
        if (i <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = ai.acY;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = ai.acW;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private static boolean S(String str) {
        return ai.acV == 29 && "c2.android.aac.decoder".equals(str);
    }

    private static boolean T(String str) {
        int i = ai.acV;
        if (i > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i <= 19) {
                String str2 = ai.acW;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean U(String str) {
        if (ai.acV < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(ai.acX)) {
            String str2 = ai.acW;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private static boolean V(String str) {
        return ai.acV == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private void a(MediaCrypto mediaCrypto, boolean z) throws a {
        if (this.Ia == null) {
            try {
                List<i> listP = P(z);
                ArrayDeque<i> arrayDeque = new ArrayDeque<>();
                this.Ia = arrayDeque;
                if (this.bf) {
                    arrayDeque.addAll(listP);
                } else if (!listP.isEmpty()) {
                    this.Ia.add(listP.get(0));
                }
                this.Ib = null;
            } catch (l.b e2) {
                throw new a(this.lS, e2, z, -49998);
            }
        }
        if (this.Ia.isEmpty()) {
            throw new a(this.lS, (Throwable) null, z, -49999);
        }
        while (this.HV == null) {
            i iVarPeekFirst = this.Ia.peekFirst();
            if (!a(iVarPeekFirst)) {
                return;
            }
            try {
                a(iVarPeekFirst, mediaCrypto);
            } catch (Exception e3) {
                com.applovin.exoplayer2.l.q.b("MediaCodecRenderer", "Failed to initialize decoder: " + iVarPeekFirst, e3);
                this.Ia.removeFirst();
                a aVar = new a(this.lS, e3, z, iVarPeekFirst);
                i(aVar);
                if (this.Ib == null) {
                    this.Ib = aVar;
                } else {
                    this.Ib = this.Ib.a(aVar);
                }
                if (this.Ia.isEmpty()) {
                    throw this.Ib;
                }
            }
        }
        this.Ia = null;
    }

    private void a(i iVar, MediaCrypto mediaCrypto) throws Exception {
        String str = iVar.name;
        int i = ai.acV;
        float fA = i < 23 ? -1.0f : a(this.HU, this.lS, af());
        float f2 = fA > this.HB ? fA : -1.0f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ah.bg("createCodec:" + str);
        g.a aVarA = a(iVar, this.lS, mediaCrypto, f2);
        g gVarB = (!this.IJ || i < 23) ? this.HA.b(aVarA) : new a.C0037a(M(), this.bi, this.bj).b(aVarA);
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        this.HV = gVarB;
        this.Hk = iVar;
        this.HZ = f2;
        this.HW = this.lS;
        this.Ic = R(str);
        this.Id = a(str, this.HW);
        this.Ie = Q(str);
        this.If = S(str);
        this.Ig = T(str);
        this.Ih = V(str);
        this.Ii = U(str);
        this.Ij = b(str, this.HW);
        this.Im = b(iVar) || jY();
        if (gVarB.jC()) {
            this.Iw = true;
            this.Ix = 1;
            this.Ik = this.Ic != 0;
        }
        if ("c2.android.mp3.decoder".equals(iVar.name)) {
            this.In = new e();
        }
        if (P() == 2) {
            this.Io = SystemClock.elapsedRealtime() + 1000;
        }
        this.IL.rv++;
        e(str, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
    }

    private boolean a(i iVar, com.applovin.exoplayer2.v vVar, @Nullable com.applovin.exoplayer2.d.f fVar, @Nullable com.applovin.exoplayer2.d.f fVar2) throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.d.n nVarE;
        if (fVar == fVar2) {
            return false;
        }
        if (fVar2 == null || fVar == null || ai.acV < 23) {
            return true;
        }
        UUID uuid = com.applovin.exoplayer2.h.an;
        if (uuid.equals(fVar.hu()) || uuid.equals(fVar2.hu()) || (nVarE = e(fVar2)) == null) {
            return true;
        }
        return !iVar.Hu && (nVarE.tp ? false : fVar2.A(vVar.dz));
    }

    private static boolean a(String str, com.applovin.exoplayer2.v vVar) {
        return ai.acV < 21 && vVar.dB.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private boolean aM(long j) {
        return this.HR == C.TIME_UNSET || SystemClock.elapsedRealtime() - j < this.HR;
    }

    private boolean aO(long j) {
        int size = this.HH.size();
        for (int i = 0; i < size; i++) {
            if (this.HH.get(i).longValue() == j) {
                this.HH.remove(i);
                return true;
            }
        }
        return false;
    }

    private static boolean b(i iVar) {
        String str = iVar.name;
        int i = ai.acV;
        return (i <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(ai.acX) && "AFTS".equals(ai.acY) && iVar.Hu));
    }

    private static boolean b(IllegalStateException illegalStateException) {
        if (ai.acV >= 21 && c(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    private static boolean b(String str, com.applovin.exoplayer2.v vVar) {
        return ai.acV <= 18 && vVar.dL == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private void c(@Nullable com.applovin.exoplayer2.d.f fVar) {
        m0.b(this.HO, fVar);
        this.HO = fVar;
    }

    @RequiresApi(21)
    private static boolean c(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    private boolean cU(int i) throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.w wVarAe = ae();
        this.HC.clear();
        int iA = a(wVarAe, this.HC, i | 4);
        if (iA == -5) {
            a(wVarAe);
            return true;
        }
        if (iA != -4 || !this.HC.gY()) {
            return false;
        }
        this.IF = true;
        ks();
        return false;
    }

    private void d(@Nullable com.applovin.exoplayer2.d.f fVar) {
        m0.b(this.HN, fVar);
        this.HN = fVar;
    }

    @RequiresApi(21)
    private static boolean d(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    @Nullable
    private com.applovin.exoplayer2.d.n e(com.applovin.exoplayer2.d.f fVar) throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.c.b bVarHv = fVar.hv();
        if (bVarHv == null || (bVarHv instanceof com.applovin.exoplayer2.d.n)) {
            return (com.applovin.exoplayer2.d.n) bVarHv;
        }
        throw a(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + bVarHv), this.lS, 6001);
    }

    private void kc() {
        this.Iv = false;
        this.HF.clear();
        this.HE.clear();
        this.Iu = false;
        this.It = false;
    }

    private void kg() {
        try {
            this.HV.dI();
        } finally {
            kh();
        }
    }

    private boolean kj() {
        return this.Iq >= 0;
    }

    private void kk() {
        this.Ip = -1;
        this.HD.rH = null;
    }

    private void kl() {
        this.Iq = -1;
        this.kT = null;
    }

    private boolean km() throws com.applovin.exoplayer2.p {
        g gVar = this.HV;
        if (gVar == null || this.Iy == 2 || this.IF) {
            return false;
        }
        if (this.Ip < 0) {
            int iJD = gVar.jD();
            this.Ip = iJD;
            if (iJD < 0) {
                return false;
            }
            this.HD.rH = this.HV.cH(iJD);
            this.HD.clear();
        }
        if (this.Iy == 1) {
            if (!this.Im) {
                this.IB = true;
                this.HV.a(this.Ip, 0, 0, 0L, 4);
                kk();
            }
            this.Iy = 2;
            return false;
        }
        if (this.Ik) {
            this.Ik = false;
            ByteBuffer byteBuffer = this.HD.rH;
            byte[] bArr = Hz;
            byteBuffer.put(bArr);
            this.HV.a(this.Ip, 0, bArr.length, 0L, 0);
            kk();
            this.IA = true;
            return true;
        }
        if (this.Ix == 1) {
            for (int i = 0; i < this.HW.dB.size(); i++) {
                this.HD.rH.put(this.HW.dB.get(i));
            }
            this.Ix = 2;
        }
        int iPosition = this.HD.rH.position();
        com.applovin.exoplayer2.w wVarAe = ae();
        try {
            int iA = a(wVarAe, this.HD, 0);
            if (R()) {
                this.IE = this.ID;
            }
            if (iA == -3) {
                return false;
            }
            if (iA == -5) {
                if (this.Ix == 2) {
                    this.HD.clear();
                    this.Ix = 1;
                }
                a(wVarAe);
                return true;
            }
            if (this.HD.gY()) {
                if (this.Ix == 2) {
                    this.HD.clear();
                    this.Ix = 1;
                }
                this.IF = true;
                if (!this.IA) {
                    ks();
                    return false;
                }
                try {
                    if (!this.Im) {
                        this.IB = true;
                        this.HV.a(this.Ip, 0, 0, 0L, 4);
                        kk();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e2) {
                    throw a(e2, this.lS, com.applovin.exoplayer2.h.r(e2.getErrorCode()));
                }
            }
            if (!this.IA && !this.HD.gZ()) {
                this.HD.clear();
                if (this.Ix == 2) {
                    this.Ix = 1;
                }
                return true;
            }
            boolean zHg = this.HD.hg();
            if (zHg) {
                this.HD.rG.bw(iPosition);
            }
            if (this.Id && !zHg) {
                com.applovin.exoplayer2.l.v.m(this.HD.rH);
                if (this.HD.rH.position() == 0) {
                    return true;
                }
                this.Id = false;
            }
            com.applovin.exoplayer2.c.g gVar2 = this.HD;
            long jA = gVar2.rJ;
            e eVar = this.In;
            if (eVar != null) {
                jA = eVar.a(this.lS, gVar2);
                this.ID = Math.max(this.ID, this.In.k(this.lS));
            }
            long j = jA;
            if (this.HD.gX()) {
                this.HH.add(Long.valueOf(j));
            }
            if (this.IH) {
                this.HG.a(j, this.lS);
                this.IH = false;
            }
            this.ID = Math.max(this.ID, j);
            this.HD.hh();
            if (this.HD.ha()) {
                f(this.HD);
            }
            a(this.HD);
            try {
                if (zHg) {
                    this.HV.a(this.Ip, 0, this.HD.rG, j, 0);
                } else {
                    this.HV.a(this.Ip, 0, this.HD.rH.limit(), j, 0);
                }
                kk();
                this.IA = true;
                this.Ix = 0;
                this.IL.rx++;
                return true;
            } catch (MediaCodec.CryptoException e3) {
                throw a(e3, this.lS, com.applovin.exoplayer2.h.r(e3.getErrorCode()));
            }
        } catch (g.a e4) {
            i(e4);
            cU(0);
            kg();
            return true;
        }
    }

    private boolean ko() {
        if (this.IA) {
            this.Iy = 1;
            if (this.Ie || this.Ig) {
                this.Iz = 3;
                return false;
            }
            this.Iz = 1;
        }
        return true;
    }

    @TargetApi(23)
    private boolean kp() throws com.applovin.exoplayer2.p {
        if (this.IA) {
            this.Iy = 1;
            if (this.Ie || this.Ig) {
                this.Iz = 3;
                return false;
            }
            this.Iz = 2;
        } else {
            kw();
        }
        return true;
    }

    private void kq() throws com.applovin.exoplayer2.p {
        if (!this.IA) {
            kv();
        } else {
            this.Iy = 1;
            this.Iz = 3;
        }
    }

    private void kr() {
        this.IC = true;
        MediaFormat mediaFormatJE = this.HV.jE();
        if (this.Ic != 0 && mediaFormatJE.getInteger("width") == 32 && mediaFormatJE.getInteger("height") == 32) {
            this.Il = true;
            return;
        }
        if (this.Ij) {
            mediaFormatJE.setInteger("channel-count", 1);
        }
        this.HX = mediaFormatJE;
        this.HY = true;
    }

    @TargetApi(23)
    private void ks() throws com.applovin.exoplayer2.p {
        int i = this.Iz;
        if (i == 1) {
            kg();
            return;
        }
        if (i == 2) {
            kg();
            kw();
        } else if (i == 3) {
            kv();
        } else {
            this.IG = true;
            eC();
        }
    }

    private void kv() throws com.applovin.exoplayer2.p {
        kd();
        jX();
    }

    @RequiresApi(23)
    private void kw() throws com.applovin.exoplayer2.p {
        try {
            this.HP.setMediaDrmSession(e(this.HO).su);
            d(this.HO);
            this.Iy = 0;
            this.Iz = 0;
        } catch (MediaCryptoException e2) {
            throw a(e2, this.lS, 6006);
        }
    }

    private void kx() throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.l.a.checkState(!this.IF);
        com.applovin.exoplayer2.w wVarAe = ae();
        this.HE.clear();
        do {
            this.HE.clear();
            int iA = a(wVarAe, this.HE, 0);
            if (iA == -5) {
                a(wVarAe);
                return;
            }
            if (iA != -4) {
                if (iA != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else {
                if (this.HE.gY()) {
                    this.IF = true;
                    return;
                }
                if (this.IH) {
                    com.applovin.exoplayer2.v vVar = (com.applovin.exoplayer2.v) com.applovin.exoplayer2.l.a.checkNotNull(this.lS);
                    this.HM = vVar;
                    a(vVar, (MediaFormat) null);
                    this.IH = false;
                }
                this.HE.hh();
            }
        } while (this.HF.d(this.HE));
        this.Iu = true;
    }

    private void o(com.applovin.exoplayer2.v vVar) {
        kc();
        String str = vVar.dz;
        if (MimeTypes.AUDIO_AAC.equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.HF.cQ(32);
        } else {
            this.HF.cQ(1);
        }
        this.It = true;
    }

    private boolean p(com.applovin.exoplayer2.v vVar) throws com.applovin.exoplayer2.p {
        if (ai.acV >= 23 && this.HV != null && this.Iz != 3 && P() != 0) {
            float fA = a(this.HU, vVar, af());
            float f2 = this.HZ;
            if (f2 == fA) {
                return true;
            }
            if (fA == -1.0f) {
                kq();
                return false;
            }
            if (f2 == -1.0f && fA <= this.HB) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fA);
            this.HV.u(bundle);
            this.HZ = fA;
        }
        return true;
    }

    protected static boolean q(com.applovin.exoplayer2.v vVar) {
        int i = vVar.dR;
        return i == 0 || i == 2;
    }

    private boolean t(long j, long j2) throws com.applovin.exoplayer2.p {
        boolean z;
        boolean zA;
        int iA;
        if (!kj()) {
            if (this.Ih && this.IB) {
                try {
                    iA = this.HV.a(this.HI);
                } catch (IllegalStateException unused) {
                    ks();
                    if (this.IG) {
                        kd();
                    }
                    return false;
                }
            } else {
                iA = this.HV.a(this.HI);
            }
            if (iA < 0) {
                if (iA == -2) {
                    kr();
                    return true;
                }
                if (this.Im && (this.IF || this.Iy == 2)) {
                    ks();
                }
                return false;
            }
            if (this.Il) {
                this.Il = false;
                this.HV.l(iA, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.HI;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                ks();
                return false;
            }
            this.Iq = iA;
            ByteBuffer byteBufferCI = this.HV.cI(iA);
            this.kT = byteBufferCI;
            if (byteBufferCI != null) {
                byteBufferCI.position(this.HI.offset);
                ByteBuffer byteBuffer = this.kT;
                MediaCodec.BufferInfo bufferInfo2 = this.HI;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.Ii) {
                MediaCodec.BufferInfo bufferInfo3 = this.HI;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j3 = this.ID;
                    if (j3 != C.TIME_UNSET) {
                        bufferInfo3.presentationTimeUs = j3;
                    }
                }
            }
            this.Ir = aO(this.HI.presentationTimeUs);
            long j4 = this.IE;
            long j5 = this.HI.presentationTimeUs;
            this.Is = j4 == j5;
            aL(j5);
        }
        if (this.Ih && this.IB) {
            try {
                g gVar = this.HV;
                ByteBuffer byteBuffer2 = this.kT;
                int i = this.Iq;
                MediaCodec.BufferInfo bufferInfo4 = this.HI;
                z = false;
                try {
                    zA = a(j, j2, gVar, byteBuffer2, i, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.Ir, this.Is, this.HM);
                } catch (IllegalStateException unused2) {
                    ks();
                    if (this.IG) {
                        kd();
                    }
                    return z;
                }
            } catch (IllegalStateException unused3) {
                z = false;
            }
        } else {
            z = false;
            g gVar2 = this.HV;
            ByteBuffer byteBuffer3 = this.kT;
            int i2 = this.Iq;
            MediaCodec.BufferInfo bufferInfo5 = this.HI;
            zA = a(j, j2, gVar2, byteBuffer3, i2, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.Ir, this.Is, this.HM);
        }
        if (zA) {
            aN(this.HI.presentationTimeUs);
            boolean z2 = (this.HI.flags & 4) != 0;
            kl();
            if (!z2) {
                return true;
            }
            ks();
        }
        return z;
    }

    private boolean u(long j, long j2) throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.l.a.checkState(!this.IG);
        if (this.HF.jS()) {
            d dVar = this.HF;
            if (!a(j, j2, null, dVar.rH, this.Iq, 0, dVar.iI(), this.HF.jQ(), this.HF.gX(), this.HF.gY(), this.HM)) {
                return false;
            }
            aN(this.HF.jR());
            this.HF.clear();
        }
        if (this.IF) {
            this.IG = true;
            return false;
        }
        if (this.Iu) {
            com.applovin.exoplayer2.l.a.checkState(this.HF.d(this.HE));
            this.Iu = false;
        }
        if (this.Iv) {
            if (this.HF.jS()) {
                return true;
            }
            kc();
            this.Iv = false;
            jX();
            if (!this.It) {
                return false;
            }
        }
        kx();
        if (this.HF.jS()) {
            this.HF.hh();
        }
        return this.HF.jS() || this.IF || this.Iv;
    }

    public void M(boolean z) {
        this.IJ = z;
    }

    public void N(boolean z) {
        this.bi = z;
    }

    public void O(boolean z) {
        this.bj = z;
    }

    @Override // com.applovin.exoplayer2.e, com.applovin.exoplayer2.as
    public final int Z() {
        return 8;
    }

    protected float a(float f2, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v[] vVarArr) {
        return -1.0f;
    }

    protected abstract int a(k kVar, com.applovin.exoplayer2.v vVar) throws l.b;

    protected com.applovin.exoplayer2.c.h a(i iVar, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v vVar2) {
        return new com.applovin.exoplayer2.c.h(iVar.name, vVar, vVar2, 0, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x00cf  */
    @androidx.annotation.Nullable
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.applovin.exoplayer2.c.h a(com.applovin.exoplayer2.w r12) throws com.applovin.exoplayer2.p {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.f.j.a(com.applovin.exoplayer2.w):com.applovin.exoplayer2.c.h");
    }

    @Nullable
    protected abstract g.a a(i iVar, com.applovin.exoplayer2.v vVar, @Nullable MediaCrypto mediaCrypto, float f2);

    protected h a(Throwable th, @Nullable i iVar) {
        return new h(th, iVar);
    }

    protected abstract List<i> a(k kVar, com.applovin.exoplayer2.v vVar, boolean z) throws l.b;

    @Override // com.applovin.exoplayer2.e, com.applovin.exoplayer2.ar
    public void a(float f2, float f3) throws com.applovin.exoplayer2.p {
        this.HS = f2;
        this.HU = f3;
        p(this.HW);
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(long j, boolean z) throws com.applovin.exoplayer2.p {
        this.IF = false;
        this.IG = false;
        this.II = false;
        if (this.It) {
            this.HF.clear();
            this.HE.clear();
            this.Iu = false;
        } else {
            ke();
        }
        if (this.HG.size() > 0) {
            this.IH = true;
        }
        this.HG.clear();
        int i = this.IO;
        if (i != 0) {
            this.IN = this.HK[i - 1];
            this.IM = this.HJ[i - 1];
            this.IO = 0;
        }
    }

    protected void a(com.applovin.exoplayer2.c.g gVar) throws com.applovin.exoplayer2.p {
    }

    protected void a(com.applovin.exoplayer2.v vVar, @Nullable MediaFormat mediaFormat) throws com.applovin.exoplayer2.p {
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(boolean z, boolean z2) throws com.applovin.exoplayer2.p {
        this.IL = new com.applovin.exoplayer2.c.e();
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(com.applovin.exoplayer2.v[] vVarArr, long j, long j2) throws com.applovin.exoplayer2.p {
        if (this.IN == C.TIME_UNSET) {
            com.applovin.exoplayer2.l.a.checkState(this.IM == C.TIME_UNSET);
            this.IM = j;
            this.IN = j2;
            return;
        }
        int i = this.IO;
        if (i == this.HK.length) {
            com.applovin.exoplayer2.l.q.h("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.HK[this.IO - 1]);
        } else {
            this.IO = i + 1;
        }
        long[] jArr = this.HJ;
        int i2 = this.IO;
        jArr[i2 - 1] = j;
        this.HK[i2 - 1] = j2;
        this.HL[i2 - 1] = this.ID;
    }

    protected abstract boolean a(long j, long j2, @Nullable g gVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, com.applovin.exoplayer2.v vVar) throws com.applovin.exoplayer2.p;

    protected boolean a(i iVar) {
        return true;
    }

    protected final void aL(long j) throws com.applovin.exoplayer2.p {
        boolean z;
        com.applovin.exoplayer2.v vVarBp = this.HG.bp(j);
        if (vVarBp == null && this.HY) {
            vVarBp = this.HG.pollFirst();
        }
        if (vVarBp != null) {
            this.HM = vVarBp;
            z = true;
        } else {
            z = false;
        }
        if (z || (this.HY && this.HM != null)) {
            a(this.HM, this.HX);
            this.HY = false;
        }
    }

    @CallSuper
    protected void aN(long j) {
        while (true) {
            int i = this.IO;
            if (i == 0 || j < this.HL[0]) {
                return;
            }
            long[] jArr = this.HJ;
            this.IM = jArr[0];
            this.IN = this.HK[0];
            int i2 = i - 1;
            this.IO = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.HK;
            System.arraycopy(jArr2, 1, jArr2, 0, this.IO);
            long[] jArr3 = this.HL;
            System.arraycopy(jArr3, 1, jArr3, 0, this.IO);
            eB();
        }
    }

    @Override // com.applovin.exoplayer2.e
    protected void aa() {
    }

    @Override // com.applovin.exoplayer2.e
    protected void ab() {
    }

    @Override // com.applovin.exoplayer2.e
    protected void ac() {
        this.lS = null;
        this.IM = C.TIME_UNSET;
        this.IN = C.TIME_UNSET;
        this.IO = 0;
        kf();
    }

    @Override // com.applovin.exoplayer2.e
    protected void ad() {
        try {
            kc();
            kd();
        } finally {
            c((com.applovin.exoplayer2.d.f) null);
        }
    }

    @Override // com.applovin.exoplayer2.as
    public final int b(com.applovin.exoplayer2.v vVar) throws com.applovin.exoplayer2.p {
        try {
            return a(this.bg, vVar);
        } catch (l.b e2) {
            throw a(e2, vVar, 4002);
        }
    }

    protected final void b(com.applovin.exoplayer2.p pVar) {
        this.IK = pVar;
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean cR() {
        return this.IG;
    }

    protected void e(String str, long j, long j2) {
    }

    protected void eB() {
    }

    protected void eC() throws com.applovin.exoplayer2.p {
    }

    protected void f(com.applovin.exoplayer2.c.g gVar) throws com.applovin.exoplayer2.p {
    }

    protected boolean f(com.applovin.exoplayer2.v vVar) {
        return false;
    }

    @Override // com.applovin.exoplayer2.ar
    public void g(long j, long j2) throws com.applovin.exoplayer2.p {
        boolean z = false;
        if (this.II) {
            this.II = false;
            ks();
        }
        com.applovin.exoplayer2.p pVar = this.IK;
        if (pVar != null) {
            this.IK = null;
            throw pVar;
        }
        try {
            if (this.IG) {
                eC();
                return;
            }
            if (this.lS != null || cU(2)) {
                jX();
                if (this.It) {
                    ah.bg("bypassRender");
                    while (u(j, j2)) {
                    }
                    ah.pV();
                } else if (this.HV != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    ah.bg("drainAndFeed");
                    while (t(j, j2) && aM(jElapsedRealtime)) {
                    }
                    while (km() && aM(jElapsedRealtime)) {
                    }
                    ah.pV();
                } else {
                    this.IL.ry += e(j);
                    cU(1);
                }
                this.IL.he();
            }
        } catch (IllegalStateException e2) {
            if (!b(e2)) {
                throw e2;
            }
            i(e2);
            if (ai.acV >= 21 && d(e2)) {
                z = true;
            }
            if (z) {
                kd();
            }
            throw a(a(e2, kb()), this.lS, z, GamesStatusCodes.STATUS_SNAPSHOT_COMMIT_FAILED);
        }
    }

    protected void i(Exception exc) {
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean isReady() {
        return this.lS != null && (ai() || kj() || (this.Io != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.Io));
    }

    protected final void jX() throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.v vVar;
        if (this.HV != null || this.It || (vVar = this.lS) == null) {
            return;
        }
        if (this.HO == null && f(vVar)) {
            o(this.lS);
            return;
        }
        d(this.HO);
        String str = this.lS.dz;
        com.applovin.exoplayer2.d.f fVar = this.HN;
        if (fVar != null) {
            if (this.HP == null) {
                com.applovin.exoplayer2.d.n nVarE = e(fVar);
                if (nVarE != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(nVarE.ey, nVarE.su);
                        this.HP = mediaCrypto;
                        this.HQ = !nVarE.tp && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e2) {
                        throw a(e2, this.lS, 6006);
                    }
                } else if (this.HN.ht() == null) {
                    return;
                }
            }
            if (com.applovin.exoplayer2.d.n.to) {
                int iP = this.HN.P();
                if (iP == 1) {
                    f.a aVar = (f.a) com.applovin.exoplayer2.l.a.checkNotNull(this.HN.ht());
                    throw a(aVar, this.lS, aVar.errorCode);
                }
                if (iP != 4) {
                    return;
                }
            }
        }
        try {
            a(this.HP, this.HQ);
        } catch (a e3) {
            throw a(e3, this.lS, 4001);
        }
    }

    protected boolean jY() {
        return false;
    }

    @Nullable
    protected final g jZ() {
        return this.HV;
    }

    @Nullable
    protected final MediaFormat ka() {
        return this.HX;
    }

    @Nullable
    protected final i kb() {
        return this.Hk;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void kd() {
        try {
            g gVar = this.HV;
            if (gVar != null) {
                gVar.release();
                this.IL.rw++;
                v(this.Hk.name);
            }
            this.HV = null;
            try {
                MediaCrypto mediaCrypto = this.HP;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.HV = null;
            try {
                MediaCrypto mediaCrypto2 = this.HP;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    protected final boolean ke() throws com.applovin.exoplayer2.p {
        boolean zKf = kf();
        if (zKf) {
            jX();
        }
        return zKf;
    }

    protected boolean kf() {
        if (this.HV == null) {
            return false;
        }
        if (this.Iz == 3 || this.Ie || ((this.If && !this.IC) || (this.Ig && this.IB))) {
            kd();
            return true;
        }
        kg();
        return false;
    }

    @CallSuper
    protected void kh() {
        kk();
        kl();
        this.Io = C.TIME_UNSET;
        this.IB = false;
        this.IA = false;
        this.Ik = false;
        this.Il = false;
        this.Ir = false;
        this.Is = false;
        this.HH.clear();
        this.ID = C.TIME_UNSET;
        this.IE = C.TIME_UNSET;
        e eVar = this.In;
        if (eVar != null) {
            eVar.Y();
        }
        this.Iy = 0;
        this.Iz = 0;
        this.Ix = this.Iw ? 1 : 0;
    }

    @CallSuper
    protected void ki() {
        kh();
        this.IK = null;
        this.In = null;
        this.Ia = null;
        this.Hk = null;
        this.HW = null;
        this.HX = null;
        this.HY = false;
        this.IC = false;
        this.HZ = -1.0f;
        this.Ic = 0;
        this.Id = false;
        this.Ie = false;
        this.If = false;
        this.Ig = false;
        this.Ih = false;
        this.Ii = false;
        this.Ij = false;
        this.Im = false;
        this.Iw = false;
        this.Ix = 0;
        this.HQ = false;
    }

    protected float kn() {
        return this.HS;
    }

    protected final void kt() {
        this.II = true;
    }

    protected final long ku() {
        return this.IN;
    }

    protected void v(String str) {
    }
}
