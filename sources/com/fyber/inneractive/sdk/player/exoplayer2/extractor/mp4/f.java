package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.a;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.n;
import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import java.io.IOException;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.f, m {
    public static final int p = u.a("qt  ");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2343f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f2344g;
    public int h;
    public com.fyber.inneractive.sdk.player.exoplayer2.util.k i;
    public int j;
    public int k;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.h l;
    public a[] m;
    public long n;
    public boolean o;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k c = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(16);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Stack<a.C0183a> f2341d = new Stack<>();
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k a = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(com.fyber.inneractive.sdk.player.exoplayer2.util.i.a);
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k b = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(4);

    public static final class a {
        public final h a;
        public final k b;
        public final n c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2345d;

        public a(h hVar, k kVar, n nVar) {
            this.a = hVar;
            this.b = kVar;
            this.c = nVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0190 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c7  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
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
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r24, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l r25) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 683
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.f.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l):int");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public long a(long j) {
        long j2 = Long.MAX_VALUE;
        for (a aVar : this.m) {
            k kVar = aVar.b;
            int iA = kVar.a(j);
            if (iA == -1) {
                iA = kVar.b(j);
            }
            long j3 = kVar.b[iA];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f2341d.clear();
        this.h = 0;
        this.j = 0;
        this.k = 0;
        if (j == 0) {
            d();
            return;
        }
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                k kVar = aVar.b;
                int iA = kVar.a(j2);
                if (iA == -1) {
                    iA = kVar.b(j2);
                }
                aVar.f2345d = iA;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar) {
        this.l = hVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public boolean a() {
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar) throws InterruptedException, IOException {
        return g.a(gVar, false);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.m
    public long c() {
        return this.n;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0699  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0833  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0226 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(long r88) throws com.fyber.inneractive.sdk.player.exoplayer2.l {
        /*
            Method dump skipped, instruction units count: 2629
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.f.c(long):void");
    }

    public final void d() {
        this.f2342e = 0;
        this.h = 0;
    }
}
