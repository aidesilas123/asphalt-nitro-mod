package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4;

import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.fyber.inneractive.sdk.player.exoplayer2.l;
import com.fyber.inneractive.sdk.player.exoplayer2.util.r;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.f {
    public static final int D = u.a("seig");
    public static final byte[] E = {-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
    public n A;
    public n[] B;
    public boolean C;
    public final int a;
    public final SparseArray<b> b;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k f2329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k f2330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k f2331f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r f2332g;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k h;
    public final byte[] i;
    public final Stack<a.C0183a> j;
    public final LinkedList<a> k;
    public int l;
    public int m;
    public long n;
    public int o;
    public com.fyber.inneractive.sdk.player.exoplayer2.util.k p;
    public long q;
    public int r;
    public long s;
    public long t;
    public b u;
    public int v;
    public int w;
    public int x;
    public boolean y;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.h z;

    public static final class a {
        public final long a;
        public final int b;

        public a(long j, int i) {
            this.a = j;
            this.b = i;
        }
    }

    public static final class b {
        public final j a = new j();
        public final n b;
        public h c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c f2333d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2334e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2335f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2336g;

        public b(n nVar) {
            this.b = nVar;
        }

        public void a() {
            j jVar = this.a;
            jVar.f2350d = 0;
            jVar.r = 0L;
            jVar.l = false;
            jVar.q = false;
            jVar.n = null;
            this.f2334e = 0;
            this.f2336g = 0;
            this.f2335f = 0;
        }

        public void a(h hVar, c cVar) {
            hVar.getClass();
            this.c = hVar;
            cVar.getClass();
            this.f2333d = cVar;
            this.b.a(hVar.f2348f);
            a();
        }
    }

    public d(int i, r rVar) {
        this(i, null, null);
    }

    public d(int i, r rVar, h hVar) {
        this.a = i | 0;
        this.f2332g = rVar;
        this.h = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(16);
        this.c = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(com.fyber.inneractive.sdk.player.exoplayer2.util.i.a);
        this.f2329d = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(5);
        this.f2330e = new com.fyber.inneractive.sdk.player.exoplayer2.util.k();
        this.f2331f = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(1);
        this.i = new byte[16];
        this.j = new Stack<>();
        this.k = new LinkedList<>();
        this.b = new SparseArray<>();
        this.s = C.TIME_UNSET;
        this.t = C.TIME_UNSET;
        a();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.fyber.inneractive.sdk.player.exoplayer2.drm.a a(java.util.List<com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.b> r14) {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.d.a(java.util.List):com.fyber.inneractive.sdk.player.exoplayer2.drm.a");
    }

    public static void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, j jVar) throws l {
        kVar.e(i + 8);
        int iC = kVar.c();
        int i2 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a.b;
        int i3 = iC & ViewCompat.MEASURED_SIZE_MASK;
        if ((i3 & 1) != 0) {
            throw new l("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (i3 & 2) != 0;
        int iO = kVar.o();
        if (iO == jVar.f2351e) {
            Arrays.fill(jVar.m, 0, iO, z);
            jVar.a(kVar.a());
            kVar.a(jVar.p.a, 0, jVar.o);
            jVar.p.e(0);
            jVar.q = false;
            return;
        }
        throw new l("Length mismatch: " + iO + ", " + jVar.f2351e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0247 A[LOOP:5: B:99:0x023f->B:101:0x0247, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x028c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x05e2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x05d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0004 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e5 A[LOOP:6: B:80:0x01e5->B:82:0x01eb, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x022e  */
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
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r26, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l r27) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1514
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.d.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l):int");
    }

    public final void a() {
        this.l = 0;
        this.o = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:282:0x0705, code lost:
    
        a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0709, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:259:0x05e8  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0637  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(long r57) throws com.fyber.inneractive.sdk.player.exoplayer2.l {
        /*
            Method dump skipped, instruction units count: 1802
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.d.a(long):void");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            this.b.valueAt(i).a();
        }
        this.k.clear();
        this.r = 0;
        this.j.clear();
        a();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar) {
        this.z = hVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
        return g.a(gVar, true);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }

    public final void c() {
        if ((this.a & 4) != 0 && this.A == null) {
            n nVarA = this.z.a(this.b.size(), 4);
            this.A = nVarA;
            nVarA.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a((String) null, MimeTypes.APPLICATION_EMSG, Long.MAX_VALUE));
        }
        if ((this.a & 8) == 0 || this.B != null) {
            return;
        }
        n nVarA2 = this.z.a(this.b.size() + 1, 3);
        nVarA2.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a((String) null, MimeTypes.APPLICATION_CEA608, (String) null, -1, 0, (String) null, (com.fyber.inneractive.sdk.player.exoplayer2.drm.a) null));
        this.B = new n[]{nVarA2};
    }
}
