package com.tapjoy.internal;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class s3 {
    public int[] a;
    public ByteBuffer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f7989d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f7990e;
    public j5 h;
    public short[] i;
    public byte[] j;
    public byte[] k;
    public byte[] l;
    public int[] m;
    public int n;
    public int o;
    public final v q;
    public Bitmap r;
    public boolean s;
    public int t;
    public int u;
    public int v;
    public int w;
    public boolean x;
    public final int[] b = new int[256];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7991f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7992g = 0;
    public s4 p = new s4();

    public s3(v vVar) {
        this.q = vVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009d A[Catch: all -> 0x0508, TryCatch #4 {, blocks: (B:4:0x0003, B:6:0x000a, B:9:0x0010, B:14:0x001a, B:16:0x002c, B:18:0x0038, B:22:0x0041, B:24:0x0045, B:27:0x0049, B:29:0x004d, B:30:0x005b, B:32:0x005f, B:35:0x0065, B:38:0x006b, B:40:0x006f, B:42:0x0077, B:49:0x0085, B:51:0x009d, B:53:0x00a2, B:54:0x00a7, B:45:0x007e, B:47:0x0082, B:56:0x00ad, B:58:0x00b1, B:60:0x00c9, B:62:0x00ce, B:63:0x00d3, B:64:0x00d7, B:65:0x00f3, B:67:0x0108, B:70:0x0114, B:72:0x011a, B:73:0x011e, B:75:0x0122, B:76:0x0126, B:78:0x012a, B:80:0x0134, B:87:0x015d, B:90:0x016c, B:92:0x0179, B:98:0x01a4, B:105:0x01cd, B:110:0x01df, B:112:0x01e3, B:113:0x01ec, B:115:0x01f3, B:116:0x0200, B:118:0x0209, B:119:0x020d, B:121:0x021a, B:122:0x0225, B:125:0x024d, B:129:0x0254, B:127:0x0250, B:101:0x01ab, B:103:0x01af, B:104:0x01b8, B:131:0x025b, B:133:0x0278, B:137:0x028b, B:143:0x02ac, B:145:0x02c1, B:148:0x02cf, B:149:0x02e4, B:151:0x02fa, B:154:0x030b, B:157:0x0313, B:107:0x01da, B:162:0x0349, B:163:0x0351, B:169:0x036e, B:173:0x0375, B:182:0x038a, B:184:0x0391, B:186:0x0396, B:189:0x03a2, B:191:0x03b3, B:193:0x03bc, B:221:0x046b, B:226:0x0477, B:222:0x046e, B:225:0x0474, B:194:0x03d1, B:195:0x03e0, B:197:0x03e5, B:200:0x03ee, B:202:0x03f9, B:204:0x0415, B:206:0x041e, B:207:0x0422, B:209:0x0427, B:212:0x042e, B:214:0x0439, B:215:0x044e, B:219:0x0457, B:227:0x0488, B:228:0x04a4, B:230:0x04a8, B:234:0x04af, B:236:0x04b3, B:238:0x04b7, B:240:0x04bc, B:239:0x04ba, B:241:0x04cf, B:242:0x04dd, B:244:0x04e1, B:246:0x04e6, B:245:0x04e4, B:83:0x013b, B:85:0x013f, B:86:0x0148, B:89:0x0169, B:69:0x010b, B:21:0x003d, B:8:0x000e), top: B:263:0x0003, inners: #2, #3 }] */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v45, types: [short] */
    /* JADX WARN: Type inference failed for: r3v47 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized android.graphics.Bitmap a() {
        /*
            Method dump skipped, instruction units count: 1291
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.s3.a():android.graphics.Bitmap");
    }

    public final synchronized void b(s4 s4Var, ByteBuffer byteBuffer) {
        d(s4Var, byteBuffer);
    }

    public final synchronized void c(s4 s4Var, byte[] bArr) {
        b(s4Var, ByteBuffer.wrap(bArr));
    }

    public final synchronized void d(s4 s4Var, ByteBuffer byteBuffer) {
        int iHighestOneBit = Integer.highestOneBit(1);
        this.t = 0;
        this.p = s4Var;
        this.x = false;
        this.n = -1;
        this.o = 0;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.c = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.c.order(ByteOrder.LITTLE_ENDIAN);
        this.s = false;
        Iterator it = s4Var.f7994e.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (((g4) it.next()).f7904g == 3) {
                this.s = true;
                break;
            }
        }
        this.u = iHighestOneBit;
        int i = s4Var.f7995f;
        this.w = i / iHighestOneBit;
        int i2 = s4Var.f7996g;
        this.v = i2 / iHighestOneBit;
        this.q.getClass();
        this.l = new byte[i * i2];
        v vVar = this.q;
        int i3 = this.w * this.v;
        vVar.getClass();
        this.m = new int[i3];
    }
}
