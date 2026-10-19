package com.applovin.exoplayer2.e.e;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.d.e;
import com.applovin.exoplayer2.e.c0;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.r;
import com.applovin.exoplayer2.l.v;
import com.applovin.exoplayer2.l.y;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class d implements h {
    public static final l vq = new l() { // from class: com.applovin.exoplayer2.e.e.g
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ h[] a(Uri uri, Map map) {
            return c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            return d.ih();
        }
    };
    private static final byte[] wR = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] wS = ai.bk("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] wT = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final UUID wU = new UUID(72057594037932032L, -9223371306706625679L);
    private static final Map<String, Integer> wV;
    private long fH;
    private final y uO;
    private j vG;
    private final f wL;
    private final com.applovin.exoplayer2.e.e.c wW;
    private final SparseArray<b> wX;
    private final boolean wY;
    private final y wZ;
    private final y wm;
    private final y wn;
    private int xA;
    private int xB;
    private int[] xC;
    private int xD;
    private int xE;
    private int xF;
    private int xG;
    private boolean xH;
    private int xI;
    private int xJ;
    private int xK;
    private boolean xL;
    private boolean xM;
    private boolean xN;
    private int xO;
    private byte xP;
    private boolean xQ;
    private final y xa;
    private final y xb;
    private final y xc;
    private final y xd;
    private final y xe;
    private final y xf;
    private ByteBuffer xg;
    private long xh;
    private long xi;
    private long xj;
    private long xk;

    @Nullable
    private b xl;
    private boolean xm;
    private int xn;
    private long xo;
    private boolean xp;
    private long xq;
    private long xr;
    private long xs;

    @Nullable
    private r xt;

    @Nullable
    private r xu;
    private boolean xv;
    private boolean xw;
    private int xx;
    private long xy;
    private long xz;

    private final class a implements com.applovin.exoplayer2.e.e.b {
        private a() {
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void a(int i, int i2, i iVar) throws IOException {
            d.this.a(i, i2, iVar);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void b(int i, double d2) throws com.applovin.exoplayer2.ai {
            d.this.b(i, d2);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void b(int i, String str) throws com.applovin.exoplayer2.ai {
            d.this.b(i, str);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public int bX(int i) {
            return d.this.bX(i);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public boolean bY(int i) {
            return d.this.bY(i);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void bZ(int i) throws com.applovin.exoplayer2.ai {
            d.this.bZ(i);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void e(int i, long j) throws com.applovin.exoplayer2.ai {
            d.this.e(i, j);
        }

        @Override // com.applovin.exoplayer2.e.e.b
        public void f(int i, long j, long j2) throws com.applovin.exoplayer2.ai {
            d.this.f(i, j, j2);
        }
    }

    private static final class b {
        public int bs;
        public com.applovin.exoplayer2.d.e dC;
        public int dE;
        public byte[] dI;
        public int dJ;
        public int dL;
        public int dM;
        private String dq;
        public int height;
        public String name;
        public x wl;
        public int wo;
        public String xS;
        public int xT;
        public int xU;
        public int xV;
        private int xW;
        public boolean xX;
        public byte[] xY;
        public x.a xZ;
        public long yA;
        public long yB;
        public c yC;
        public boolean yD;
        public boolean yE;
        public byte[] ya;
        public int yb;
        public int yc;
        public int yd;
        public int ye;
        public float yf;
        public float yg;
        public float yh;
        public boolean yi;
        public int yj;
        public int yk;
        public int yl;
        public int ym;
        public int yn;
        public float yo;
        public float yp;
        public float yq;
        public float yr;
        public float ys;
        public float yt;
        public float yu;
        public float yv;
        public float yw;
        public float yx;
        public byte[] yy;
        public int yz;

        private b() {
            this.dE = -1;
            this.height = -1;
            this.yb = -1;
            this.yc = -1;
            this.yd = 0;
            this.ye = -1;
            this.yf = 0.0f;
            this.yg = 0.0f;
            this.yh = 0.0f;
            this.dI = null;
            this.dJ = -1;
            this.yi = false;
            this.yj = -1;
            this.yk = -1;
            this.yl = -1;
            this.ym = 1000;
            this.yn = 200;
            this.yo = -1.0f;
            this.yp = -1.0f;
            this.yq = -1.0f;
            this.yr = -1.0f;
            this.ys = -1.0f;
            this.yt = -1.0f;
            this.yu = -1.0f;
            this.yv = -1.0f;
            this.yw = -1.0f;
            this.yx = -1.0f;
            this.dL = 1;
            this.yz = -1;
            this.dM = 8000;
            this.yA = 0L;
            this.yB = 0L;
            this.yE = true;
            this.dq = "eng";
        }

        private byte[] H(String str) throws com.applovin.exoplayer2.ai {
            byte[] bArr = this.ya;
            if (bArr != null) {
                return bArr;
            }
            throw com.applovin.exoplayer2.ai.c("Missing CodecPrivate for codec " + str, null);
        }

        @Nullable
        private byte[] iC() {
            if (this.yo == -1.0f || this.yp == -1.0f || this.yq == -1.0f || this.yr == -1.0f || this.ys == -1.0f || this.yt == -1.0f || this.yu == -1.0f || this.yv == -1.0f || this.yw == -1.0f || this.yx == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.yo * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.yp * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.yq * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.yr * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.ys * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.yt * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.yu * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.yv * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.yw + 0.5f));
            byteBufferOrder.putShort((short) (this.yx + 0.5f));
            byteBufferOrder.putShort((short) this.ym);
            byteBufferOrder.putShort((short) this.yn);
            return bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void iD() {
            com.applovin.exoplayer2.l.a.checkNotNull(this.wl);
        }

        private static Pair<String, List<byte[]>> n(y yVar) throws com.applovin.exoplayer2.ai {
            try {
                yVar.fz(16);
                long jPw = yVar.pw();
                if (jPw == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (jPw == 859189832) {
                    return new Pair<>(MimeTypes.VIDEO_H263, null);
                }
                if (jPw != 826496599) {
                    q.h("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] bArrHO = yVar.hO();
                for (int iIl = yVar.il() + 20; iIl < bArrHO.length - 4; iIl++) {
                    if (bArrHO[iIl] == 0 && bArrHO[iIl + 1] == 0 && bArrHO[iIl + 2] == 1 && bArrHO[iIl + 3] == 15) {
                        return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrHO, iIl, bArrHO.length)));
                    }
                }
                throw com.applovin.exoplayer2.ai.c("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw com.applovin.exoplayer2.ai.c("Error parsing FourCC private data", null);
            }
        }

        private static boolean o(y yVar) throws com.applovin.exoplayer2.ai {
            try {
                int iPq = yVar.pq();
                if (iPq == 1) {
                    return true;
                }
                if (iPq != 65534) {
                    return false;
                }
                yVar.fx(24);
                if (yVar.pz() == d.wU.getMostSignificantBits()) {
                    if (yVar.pz() == d.wU.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw com.applovin.exoplayer2.ai.c("Error parsing MS/ACM codec private", null);
            }
        }

        private static List<byte[]> v(byte[] bArr) throws com.applovin.exoplayer2.ai {
            try {
                if (bArr[0] != 2) {
                    throw com.applovin.exoplayer2.ai.c("Error parsing vorbis codec private", null);
                }
                int i = 1;
                int i2 = 0;
                while ((bArr[i] & 255) == 255) {
                    i2 += 255;
                    i++;
                }
                int i3 = i + 1;
                int i4 = i2 + (bArr[i] & 255);
                int i5 = 0;
                while ((bArr[i3] & 255) == 255) {
                    i5 += 255;
                    i3++;
                }
                int i6 = i3 + 1;
                int i7 = i5 + (bArr[i3] & 255);
                if (bArr[i6] != 1) {
                    throw com.applovin.exoplayer2.ai.c("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i6, bArr2, 0, i4);
                int i8 = i6 + i4;
                if (bArr[i8] != 3) {
                    throw com.applovin.exoplayer2.ai.c("Error parsing vorbis codec private", null);
                }
                int i9 = i8 + i7;
                if (bArr[i9] != 5) {
                    throw com.applovin.exoplayer2.ai.c("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i9];
                System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw com.applovin.exoplayer2.ai.c("Error parsing vorbis codec private", null);
            }
        }

        public void Y() {
            c cVar = this.yC;
            if (cVar != null) {
                cVar.Y();
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:196:0x0434  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x044c  */
        /* JADX WARN: Removed duplicated region for block: B:202:0x044e  */
        /* JADX WARN: Removed duplicated region for block: B:205:0x045b  */
        /* JADX WARN: Removed duplicated region for block: B:206:0x046d  */
        /* JADX WARN: Removed duplicated region for block: B:253:0x0524  */
        /* JADX WARN: Removed duplicated region for block: B:270:0x0577  */
        /* JADX WARN: Removed duplicated region for block: B:4:0x0015  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(com.applovin.exoplayer2.e.j r20, int r21) throws com.applovin.exoplayer2.ai {
            /*
                Method dump skipped, instruction units count: 1670
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.e.d.b.a(com.applovin.exoplayer2.e.j, int):void");
        }

        public void iB() {
            c cVar = this.yC;
            if (cVar != null) {
                cVar.c(this);
            }
        }
    }

    private static final class c {
        private final byte[] yF = new byte[10];
        private boolean yG;
        private int yH;
        private long yI;
        private int yJ;
        private int yK;
        private int yL;

        public void A(i iVar) throws IOException {
            if (this.yG) {
                return;
            }
            iVar.c(this.yF, 0, 10);
            iVar.ic();
            if (com.applovin.exoplayer2.b.b.d(this.yF) == 0) {
                return;
            }
            this.yG = true;
        }

        public void Y() {
            this.yG = false;
            this.yH = 0;
        }

        public void b(b bVar, long j, int i, int i2, int i3) {
            if (this.yG) {
                int i4 = this.yH;
                int i5 = i4 + 1;
                this.yH = i5;
                if (i4 == 0) {
                    this.yI = j;
                    this.yJ = i;
                    this.yK = 0;
                }
                this.yK += i2;
                this.yL = i3;
                if (i5 >= 16) {
                    c(bVar);
                }
            }
        }

        public void c(b bVar) {
            if (this.yH > 0) {
                bVar.wl.a(this.yI, this.yJ, this.yK, this.yL, bVar.xZ);
                this.yH = 0;
            }
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        wV = Collections.unmodifiableMap(map);
    }

    public d() {
        this(0);
    }

    public d(int i) {
        this(new com.applovin.exoplayer2.e.e.a(), i);
    }

    d(com.applovin.exoplayer2.e.e.c cVar, int i) {
        this.xi = -1L;
        this.xj = C.TIME_UNSET;
        this.xk = C.TIME_UNSET;
        this.fH = C.TIME_UNSET;
        this.xq = -1L;
        this.xr = -1L;
        this.xs = C.TIME_UNSET;
        this.wW = cVar;
        cVar.a(new a());
        this.wY = (i & 1) == 0;
        this.wL = new f();
        this.wX = new SparseArray<>();
        this.uO = new y(4);
        this.wZ = new y(ByteBuffer.allocate(4).putInt(-1).array());
        this.xa = new y(4);
        this.wm = new y(v.abK);
        this.wn = new y(4);
        this.xb = new y();
        this.xc = new y();
        this.xd = new y(8);
        this.xe = new y();
        this.xf = new y();
        this.xC = new int[1];
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static boolean G(String str) {
        str.hashCode();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals("V_MPEG4/ISO/AP")) {
                    b2 = 0;
                }
                break;
            case -2095575984:
                if (str.equals("V_MPEG4/ISO/SP")) {
                    b2 = 1;
                }
                break;
            case -1985379776:
                if (str.equals("A_MS/ACM")) {
                    b2 = 2;
                }
                break;
            case -1784763192:
                if (str.equals("A_TRUEHD")) {
                    b2 = 3;
                }
                break;
            case -1730367663:
                if (str.equals("A_VORBIS")) {
                    b2 = 4;
                }
                break;
            case -1482641358:
                if (str.equals("A_MPEG/L2")) {
                    b2 = 5;
                }
                break;
            case -1482641357:
                if (str.equals("A_MPEG/L3")) {
                    b2 = 6;
                }
                break;
            case -1373388978:
                if (str.equals("V_MS/VFW/FOURCC")) {
                    b2 = 7;
                }
                break;
            case -933872740:
                if (str.equals("S_DVBSUB")) {
                    b2 = 8;
                }
                break;
            case -538363189:
                if (str.equals("V_MPEG4/ISO/ASP")) {
                    b2 = 9;
                }
                break;
            case -538363109:
                if (str.equals("V_MPEG4/ISO/AVC")) {
                    b2 = 10;
                }
                break;
            case -425012669:
                if (str.equals("S_VOBSUB")) {
                    b2 = Ascii.VT;
                }
                break;
            case -356037306:
                if (str.equals("A_DTS/LOSSLESS")) {
                    b2 = Ascii.FF;
                }
                break;
            case 62923557:
                if (str.equals("A_AAC")) {
                    b2 = Ascii.CR;
                }
                break;
            case 62923603:
                if (str.equals("A_AC3")) {
                    b2 = Ascii.SO;
                }
                break;
            case 62927045:
                if (str.equals("A_DTS")) {
                    b2 = Ascii.SI;
                }
                break;
            case 82318131:
                if (str.equals("V_AV1")) {
                    b2 = Ascii.DLE;
                }
                break;
            case 82338133:
                if (str.equals("V_VP8")) {
                    b2 = 17;
                }
                break;
            case 82338134:
                if (str.equals("V_VP9")) {
                    b2 = Ascii.DC2;
                }
                break;
            case 99146302:
                if (str.equals("S_HDMV/PGS")) {
                    b2 = 19;
                }
                break;
            case 444813526:
                if (str.equals("V_THEORA")) {
                    b2 = Ascii.DC4;
                }
                break;
            case 542569478:
                if (str.equals("A_DTS/EXPRESS")) {
                    b2 = Ascii.NAK;
                }
                break;
            case 635596514:
                if (str.equals("A_PCM/FLOAT/IEEE")) {
                    b2 = Ascii.SYN;
                }
                break;
            case 725948237:
                if (str.equals("A_PCM/INT/BIG")) {
                    b2 = Ascii.ETB;
                }
                break;
            case 725957860:
                if (str.equals("A_PCM/INT/LIT")) {
                    b2 = Ascii.CAN;
                }
                break;
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    b2 = Ascii.EM;
                }
                break;
            case 855502857:
                if (str.equals("V_MPEGH/ISO/HEVC")) {
                    b2 = Ascii.SUB;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    b2 = Ascii.ESC;
                }
                break;
            case 1809237540:
                if (str.equals("V_MPEG2")) {
                    b2 = Ascii.FS;
                }
                break;
            case 1950749482:
                if (str.equals("A_EAC3")) {
                    b2 = Ascii.GS;
                }
                break;
            case 1950789798:
                if (str.equals("A_FLAC")) {
                    b2 = Ascii.RS;
                }
                break;
            case 1951062397:
                if (str.equals("A_OPUS")) {
                    b2 = Ascii.US;
                }
                break;
        }
        switch (b2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
                return true;
            default:
                return false;
        }
    }

    private int a(i iVar, b bVar, int i) throws IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(bVar.xS)) {
            a(iVar, wR, i);
            return iw();
        }
        if ("S_TEXT/ASS".equals(bVar.xS)) {
            a(iVar, wT, i);
            return iw();
        }
        x xVar = bVar.wl;
        if (!this.xL) {
            if (bVar.xX) {
                this.xF &= -1073741825;
                if (!this.xM) {
                    iVar.a(this.uO.hO(), 0, 1);
                    this.xI++;
                    if ((this.uO.hO()[0] & 128) == 128) {
                        throw com.applovin.exoplayer2.ai.c("Extension bit is set in signal byte", null);
                    }
                    this.xP = this.uO.hO()[0];
                    this.xM = true;
                }
                byte b2 = this.xP;
                if ((b2 & 1) == 1) {
                    boolean z = (b2 & 2) == 2;
                    this.xF |= 1073741824;
                    if (!this.xQ) {
                        iVar.a(this.xd.hO(), 0, 8);
                        this.xI += 8;
                        this.xQ = true;
                        this.uO.hO()[0] = (byte) ((z ? 128 : 0) | 8);
                        this.uO.fx(0);
                        xVar.a(this.uO, 1, 1);
                        this.xJ++;
                        this.xd.fx(0);
                        xVar.a(this.xd, 8, 1);
                        this.xJ += 8;
                    }
                    if (z) {
                        if (!this.xN) {
                            iVar.a(this.uO.hO(), 0, 1);
                            this.xI++;
                            this.uO.fx(0);
                            this.xO = this.uO.po();
                            this.xN = true;
                        }
                        int i3 = this.xO * 4;
                        this.uO.U(i3);
                        iVar.a(this.uO.hO(), 0, i3);
                        this.xI += i3;
                        short s = (short) ((this.xO / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.xg;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.xg = ByteBuffer.allocate(i4);
                        }
                        this.xg.position(0);
                        this.xg.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.xO;
                            if (i5 >= i2) {
                                break;
                            }
                            int iPD = this.uO.pD();
                            if (i5 % 2 == 0) {
                                this.xg.putShort((short) (iPD - i6));
                            } else {
                                this.xg.putInt(iPD - i6);
                            }
                            i5++;
                            i6 = iPD;
                        }
                        int i7 = (i - this.xI) - i6;
                        if (i2 % 2 == 1) {
                            this.xg.putInt(i7);
                        } else {
                            this.xg.putShort((short) i7);
                            this.xg.putInt(0);
                        }
                        this.xe.l(this.xg.array(), i4);
                        xVar.a(this.xe, i4, 1);
                        this.xJ += i4;
                    }
                }
            } else {
                byte[] bArr = bVar.xY;
                if (bArr != null) {
                    this.xb.l(bArr, bArr.length);
                }
            }
            if (bVar.xV > 0) {
                this.xF |= DriveFile.MODE_READ_ONLY;
                this.xf.U(0);
                this.uO.U(4);
                this.uO.hO()[0] = (byte) ((i >> 24) & 255);
                this.uO.hO()[1] = (byte) ((i >> 16) & 255);
                this.uO.hO()[2] = (byte) ((i >> 8) & 255);
                this.uO.hO()[3] = (byte) (i & 255);
                xVar.a(this.uO, 4, 2);
                this.xJ += 4;
            }
            this.xL = true;
        }
        int iPk = i + this.xb.pk();
        if (!"V_MPEG4/ISO/AVC".equals(bVar.xS) && !"V_MPEGH/ISO/HEVC".equals(bVar.xS)) {
            if (bVar.yC != null) {
                com.applovin.exoplayer2.l.a.checkState(this.xb.pk() == 0);
                bVar.yC.A(iVar);
            }
            while (true) {
                int i8 = this.xI;
                if (i8 >= iPk) {
                    break;
                }
                int iA = a(iVar, xVar, iPk - i8);
                this.xI += iA;
                this.xJ += iA;
            }
        } else {
            byte[] bArrHO = this.wn.hO();
            bArrHO[0] = 0;
            bArrHO[1] = 0;
            bArrHO[2] = 0;
            int i9 = bVar.wo;
            int i10 = 4 - i9;
            while (this.xI < iPk) {
                int i11 = this.xK;
                if (i11 == 0) {
                    c(iVar, bArrHO, i10, i9);
                    this.xI += i9;
                    this.wn.fx(0);
                    this.xK = this.wn.pD();
                    this.wm.fx(0);
                    xVar.c(this.wm, 4);
                    this.xJ += 4;
                } else {
                    int iA2 = a(iVar, xVar, i11);
                    this.xI += iA2;
                    this.xJ += iA2;
                    this.xK -= iA2;
                }
            }
        }
        if ("A_VORBIS".equals(bVar.xS)) {
            this.wZ.fx(0);
            xVar.c(this.wZ, 4);
            this.xJ += 4;
        }
        return iw();
    }

    private int a(i iVar, x xVar, int i) throws IOException {
        int iPj = this.xb.pj();
        if (iPj <= 0) {
            return xVar.a((com.applovin.exoplayer2.k.g) iVar, i, false);
        }
        int iMin = Math.min(i, iPj);
        xVar.c(this.xb, iMin);
        return iMin;
    }

    private com.applovin.exoplayer2.e.v a(@Nullable r rVar, @Nullable r rVar2) {
        int i;
        if (this.xi == -1 || this.fH == C.TIME_UNSET || rVar == null || rVar.size() == 0 || rVar2 == null || rVar2.size() != rVar.size()) {
            return new v.b(this.fH);
        }
        int size = rVar.size();
        int[] iArrCopyOf = new int[size];
        long[] jArrCopyOf = new long[size];
        long[] jArrCopyOf2 = new long[size];
        long[] jArrCopyOf3 = new long[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            jArrCopyOf3[i3] = rVar.fu(i3);
            jArrCopyOf[i3] = this.xi + rVar2.fu(i3);
        }
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            int i4 = i2 + 1;
            iArrCopyOf[i2] = (int) (jArrCopyOf[i4] - jArrCopyOf[i2]);
            jArrCopyOf2[i2] = jArrCopyOf3[i4] - jArrCopyOf3[i2];
            i2 = i4;
        }
        iArrCopyOf[i] = (int) ((this.xi + this.xh) - jArrCopyOf[i]);
        jArrCopyOf2[i] = this.fH - jArrCopyOf3[i];
        long j = jArrCopyOf2[i];
        if (j <= 0) {
            q.h("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j);
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i);
        }
        return new com.applovin.exoplayer2.e.c(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private void a(b bVar, long j, int i, int i2, int i3) {
        c cVar = bVar.yC;
        if (cVar != null) {
            cVar.b(bVar, j, i, i2, i3);
        } else {
            if ("S_TEXT/UTF8".equals(bVar.xS) || "S_TEXT/ASS".equals(bVar.xS)) {
                if (this.xB > 1) {
                    q.h("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.xz;
                    if (j2 == C.TIME_UNSET) {
                        q.h("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        a(bVar.xS, j2, this.xc.hO());
                        int iIl = this.xc.il();
                        while (true) {
                            if (iIl >= this.xc.pk()) {
                                break;
                            }
                            if (this.xc.hO()[iIl] == 0) {
                                this.xc.fA(iIl);
                                break;
                            }
                            iIl++;
                        }
                        x xVar = bVar.wl;
                        y yVar = this.xc;
                        xVar.c(yVar, yVar.pk());
                        i2 += this.xc.pk();
                    }
                }
            }
            if ((268435456 & i) != 0) {
                if (this.xB > 1) {
                    i &= -268435457;
                } else {
                    int iPk = this.xf.pk();
                    bVar.wl.a(this.xf, iPk, 2);
                    i2 += iPk;
                }
            }
            bVar.wl.a(j, i, i2, i3, bVar.xZ);
        }
        this.xw = true;
    }

    private void a(i iVar, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.xc.pl() < length) {
            this.xc.I(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.xc.hO(), 0, bArr.length);
        }
        iVar.a(this.xc.hO(), bArr.length, i);
        this.xc.fx(0);
        this.xc.fA(length);
    }

    private static void a(String str, long j, byte[] bArr) {
        byte[] bArrA;
        int i;
        str.hashCode();
        if (str.equals("S_TEXT/ASS")) {
            bArrA = a(j, "%01d:%02d:%02d:%02d", 10000L);
            i = 21;
        } else {
            if (!str.equals("S_TEXT/UTF8")) {
                throw new IllegalArgumentException();
            }
            bArrA = a(j, "%02d:%02d:%02d,%03d", 1000L);
            i = 19;
        }
        System.arraycopy(bArrA, 0, bArr, i, bArrA.length);
    }

    private boolean a(u uVar, long j) {
        if (this.xp) {
            this.xr = j;
            uVar.uc = this.xq;
            this.xp = false;
            return true;
        }
        if (this.xm) {
            long j2 = this.xr;
            if (j2 != -1) {
                uVar.uc = j2;
                this.xr = -1L;
                return true;
            }
        }
        return false;
    }

    private static byte[] a(long j, String str, long j2) {
        com.applovin.exoplayer2.l.a.checkArgument(j != C.TIME_UNSET);
        int i = (int) (j / 3600000000L);
        long j3 = j - (((long) (i * 3600)) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (((long) (i2 * 60)) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return ai.bk(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
    }

    private static int[] a(@Nullable int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    private long ap(long j) throws com.applovin.exoplayer2.ai {
        long j2 = this.xj;
        if (j2 != C.TIME_UNSET) {
            return ai.e(j, j2, 1000L);
        }
        throw com.applovin.exoplayer2.ai.c("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private void c(i iVar, byte[] bArr, int i, int i2) throws IOException {
        int iMin = Math.min(i2, this.xb.pj());
        iVar.a(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.xb.r(bArr, i, iMin);
        }
    }

    private void ca(int i) throws com.applovin.exoplayer2.ai {
        if (this.xl != null) {
            return;
        }
        throw com.applovin.exoplayer2.ai.c("Element " + i + " must be in a TrackEntry", null);
    }

    private void cb(int i) throws com.applovin.exoplayer2.ai {
        if (this.xt == null || this.xu == null) {
            throw com.applovin.exoplayer2.ai.c("Element " + i + " must be in a Cues", null);
        }
    }

    private b cc(int i) throws com.applovin.exoplayer2.ai {
        ca(i);
        return this.xl;
    }

    private void h(i iVar, int i) throws IOException {
        if (this.uO.pk() >= i) {
            return;
        }
        if (this.uO.pl() < i) {
            y yVar = this.uO;
            yVar.bj(Math.max(yVar.pl() * 2, i));
        }
        iVar.a(this.uO.hO(), this.uO.pk(), i - this.uO.pk());
        this.uO.fA(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] ih() {
        return new h[]{new d()};
    }

    private void io() {
        com.applovin.exoplayer2.l.a.N(this.vG);
    }

    private int iw() {
        int i = this.xJ;
        ix();
        return i;
    }

    private void ix() {
        this.xI = 0;
        this.xJ = 0;
        this.xK = 0;
        this.xL = false;
        this.xM = false;
        this.xN = false;
        this.xO = 0;
        this.xP = (byte) 0;
        this.xQ = false;
        this.xb.U(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0241, code lost:
    
        throw com.applovin.exoplayer2.ai.c("EBML lacing sample size out of range.", null);
     */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void a(int r22, int r23, com.applovin.exoplayer2.e.i r24) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 765
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.e.d.a(int, int, com.applovin.exoplayer2.e.i):void");
    }

    protected void a(b bVar, int i, i iVar, int i2) throws IOException {
        if (i != 4 || !"V_VP9".equals(bVar.xS)) {
            iVar.bH(i2);
        } else {
            this.xf.U(i2);
            iVar.a(this.xf.hO(), 0, i2);
        }
    }

    protected void a(b bVar, i iVar, int i) throws IOException {
        if (bVar.xW != 1685485123 && bVar.xW != 1685480259) {
            iVar.bH(i);
            return;
        }
        byte[] bArr = new byte[i];
        bVar.yy = bArr;
        iVar.a(bArr, 0, i);
    }

    @Override // com.applovin.exoplayer2.e.h
    public final void a(j jVar) {
        this.vG = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public final boolean a(i iVar) throws IOException {
        return new e().a(iVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public final int b(i iVar, u uVar) throws IOException {
        this.xw = false;
        boolean zY = true;
        while (zY && !this.xw) {
            zY = this.wW.y(iVar);
            if (zY && a(uVar, iVar.ie())) {
                return 1;
            }
        }
        if (zY) {
            return 0;
        }
        for (int i = 0; i < this.wX.size(); i++) {
            b bVarValueAt = this.wX.valueAt(i);
            bVarValueAt.iD();
            bVarValueAt.iB();
        }
        return -1;
    }

    @CallSuper
    protected void b(int i, double d2) throws com.applovin.exoplayer2.ai {
        if (i == 181) {
            cc(i).dM = (int) d2;
        }
        if (i == 17545) {
            this.xk = (long) d2;
            return;
        }
        switch (i) {
            case 21969:
                cc(i).yo = (float) d2;
                break;
            case 21970:
                cc(i).yp = (float) d2;
                break;
            case 21971:
                cc(i).yq = (float) d2;
                break;
            case 21972:
                cc(i).yr = (float) d2;
                break;
            case 21973:
                cc(i).ys = (float) d2;
                break;
            case 21974:
                cc(i).yt = (float) d2;
                break;
            case 21975:
                cc(i).yu = (float) d2;
                break;
            case 21976:
                cc(i).yv = (float) d2;
                break;
            case 21977:
                cc(i).yw = (float) d2;
                break;
            case 21978:
                cc(i).yx = (float) d2;
                break;
            default:
                switch (i) {
                    case 30323:
                        cc(i).yf = (float) d2;
                        break;
                    case 30324:
                        cc(i).yg = (float) d2;
                        break;
                    case 30325:
                        cc(i).yh = (float) d2;
                        break;
                }
                break;
        }
    }

    @CallSuper
    protected void b(int i, String str) throws com.applovin.exoplayer2.ai {
        if (i == 134) {
            cc(i).xS = str;
            return;
        }
        if (i != 17026) {
            if (i == 21358) {
                cc(i).name = str;
                return;
            } else {
                if (i != 2274716) {
                    return;
                }
                cc(i).dq = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            return;
        }
        throw com.applovin.exoplayer2.ai.c("DocType " + str + " not supported", null);
    }

    @CallSuper
    protected int bX(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    @CallSuper
    protected boolean bY(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @CallSuper
    protected void bZ(int i) throws com.applovin.exoplayer2.ai {
        io();
        if (i == 160) {
            if (this.xx != 2) {
                return;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.xB; i3++) {
                i2 += this.xC[i3];
            }
            b bVar = this.wX.get(this.xD);
            bVar.iD();
            for (int i4 = 0; i4 < this.xB; i4++) {
                long j = ((long) ((bVar.xU * i4) / 1000)) + this.xy;
                int i5 = this.xF;
                if (i4 == 0 && !this.xH) {
                    i5 |= 1;
                }
                int i6 = this.xC[i4];
                i2 -= i6;
                a(bVar, j, i5, i6, i2);
            }
            this.xx = 0;
            return;
        }
        if (i == 174) {
            b bVar2 = (b) com.applovin.exoplayer2.l.a.N(this.xl);
            String str = bVar2.xS;
            if (str == null) {
                throw com.applovin.exoplayer2.ai.c("CodecId is missing in TrackEntry element", null);
            }
            if (G(str)) {
                bVar2.a(this.vG, bVar2.xT);
                this.wX.put(bVar2.xT, bVar2);
            }
            this.xl = null;
            return;
        }
        if (i == 19899) {
            int i7 = this.xn;
            if (i7 != -1) {
                long j2 = this.xo;
                if (j2 != -1) {
                    if (i7 == 475249515) {
                        this.xq = j2;
                        return;
                    }
                    return;
                }
            }
            throw com.applovin.exoplayer2.ai.c("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i == 25152) {
            ca(i);
            b bVar3 = this.xl;
            if (bVar3.xX) {
                if (bVar3.xZ == null) {
                    throw com.applovin.exoplayer2.ai.c("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                bVar3.dC = new com.applovin.exoplayer2.d.e(new e.a(com.applovin.exoplayer2.h.aj, "video/webm", this.xl.xZ.uV));
                return;
            }
            return;
        }
        if (i == 28032) {
            ca(i);
            b bVar4 = this.xl;
            if (bVar4.xX && bVar4.xY != null) {
                throw com.applovin.exoplayer2.ai.c("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i == 357149030) {
            if (this.xj == C.TIME_UNSET) {
                this.xj = 1000000L;
            }
            long j3 = this.xk;
            if (j3 != C.TIME_UNSET) {
                this.fH = ap(j3);
                return;
            }
            return;
        }
        if (i == 374648427) {
            if (this.wX.size() == 0) {
                throw com.applovin.exoplayer2.ai.c("No valid tracks were found", null);
            }
            this.vG.ig();
        } else {
            if (i != 475249515) {
                return;
            }
            if (!this.xm) {
                this.vG.a(a(this.xt, this.xu));
                this.xm = true;
            }
            this.xt = null;
            this.xu = null;
        }
    }

    @CallSuper
    protected void e(int i, long j) throws com.applovin.exoplayer2.ai {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw com.applovin.exoplayer2.ai.c("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw com.applovin.exoplayer2.ai.c("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                cc(i).bs = (int) j;
                return;
            case 136:
                cc(i).yE = j == 1;
                return;
            case 155:
                this.xz = ap(j);
                return;
            case 159:
                cc(i).dL = (int) j;
                return;
            case 176:
                cc(i).dE = (int) j;
                return;
            case 179:
                cb(i);
                this.xt.bo(ap(j));
                return;
            case 186:
                cc(i).height = (int) j;
                return;
            case 215:
                cc(i).xT = (int) j;
                return;
            case 231:
                this.xs = ap(j);
                return;
            case 238:
                this.xG = (int) j;
                return;
            case 241:
                if (this.xv) {
                    return;
                }
                cb(i);
                this.xu.bo(j);
                this.xv = true;
                return;
            case 251:
                this.xH = true;
                return;
            case 16871:
                cc(i).xW = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw com.applovin.exoplayer2.ai.c("ContentCompAlgo " + j + " not supported", null);
            case 17029:
                if (j < 1 || j > 2) {
                    throw com.applovin.exoplayer2.ai.c("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw com.applovin.exoplayer2.ai.c("EBMLReadVersion " + j + " not supported", null);
            case 18401:
                if (j == 5) {
                    return;
                }
                throw com.applovin.exoplayer2.ai.c("ContentEncAlgo " + j + " not supported", null);
            case 18408:
                if (j == 1) {
                    return;
                }
                throw com.applovin.exoplayer2.ai.c("AESSettingsCipherMode " + j + " not supported", null);
            case 21420:
                this.xo = j + this.xi;
                return;
            case 21432:
                int i2 = (int) j;
                ca(i);
                if (i2 == 0) {
                    this.xl.dJ = 0;
                    return;
                }
                if (i2 == 1) {
                    this.xl.dJ = 2;
                    return;
                } else if (i2 == 3) {
                    this.xl.dJ = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.xl.dJ = 3;
                    return;
                }
            case 21680:
                cc(i).yb = (int) j;
                return;
            case 21682:
                cc(i).yd = (int) j;
                return;
            case 21690:
                cc(i).yc = (int) j;
                return;
            case 21930:
                cc(i).yD = j == 1;
                return;
            case 21998:
                cc(i).xV = (int) j;
                return;
            case 22186:
                cc(i).yA = j;
                return;
            case 22203:
                cc(i).yB = j;
                return;
            case 25188:
                cc(i).yz = (int) j;
                return;
            case 30321:
                ca(i);
                int i3 = (int) j;
                if (i3 == 0) {
                    this.xl.ye = 0;
                    return;
                }
                if (i3 == 1) {
                    this.xl.ye = 1;
                    return;
                } else if (i3 == 2) {
                    this.xl.ye = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.xl.ye = 3;
                    return;
                }
            case 2352003:
                cc(i).xU = (int) j;
                return;
            case 2807729:
                this.xj = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        ca(i);
                        int i4 = (int) j;
                        if (i4 == 1) {
                            this.xl.yl = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.xl.yl = 1;
                            return;
                        }
                    case 21946:
                        ca(i);
                        int iFO = com.applovin.exoplayer2.m.b.fO((int) j);
                        if (iFO != -1) {
                            this.xl.yk = iFO;
                            return;
                        }
                        return;
                    case 21947:
                        ca(i);
                        this.xl.yi = true;
                        int iFN = com.applovin.exoplayer2.m.b.fN((int) j);
                        if (iFN != -1) {
                            this.xl.yj = iFN;
                            return;
                        }
                        return;
                    case 21948:
                        cc(i).ym = (int) j;
                        return;
                    case 21949:
                        cc(i).yn = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    @CallSuper
    protected void f(int i, long j, long j2) throws com.applovin.exoplayer2.ai {
        io();
        if (i == 160) {
            this.xH = false;
            return;
        }
        if (i == 174) {
            this.xl = new b();
            return;
        }
        if (i == 187) {
            this.xv = false;
            return;
        }
        if (i == 19899) {
            this.xn = -1;
            this.xo = -1L;
            return;
        }
        if (i == 20533) {
            cc(i).xX = true;
            return;
        }
        if (i == 21968) {
            cc(i).yi = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.xi;
            if (j3 != -1 && j3 != j) {
                throw com.applovin.exoplayer2.ai.c("Multiple Segment elements not supported", null);
            }
            this.xi = j;
            this.xh = j2;
            return;
        }
        if (i == 475249515) {
            this.xt = new r();
            this.xu = new r();
        } else if (i == 524531317 && !this.xm) {
            if (this.wY && this.xq != -1) {
                this.xp = true;
            } else {
                this.vG.a(new v.b(this.fH));
                this.xm = true;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    @CallSuper
    public void o(long j, long j2) {
        this.xs = C.TIME_UNSET;
        this.xx = 0;
        this.wW.Y();
        this.wL.Y();
        ix();
        for (int i = 0; i < this.wX.size(); i++) {
            this.wX.valueAt(i).Y();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public final void release() {
    }
}
