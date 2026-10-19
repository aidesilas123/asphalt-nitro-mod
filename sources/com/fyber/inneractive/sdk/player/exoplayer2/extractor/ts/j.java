package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import android.util.SparseArray;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.fyber.inneractive.sdk.player.exoplayer2.util.i;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements h {
    public final s a;
    public final boolean b;
    public final boolean c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f2405g;
    public String i;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.n j;
    public b k;
    public boolean l;
    public long m;
    public final boolean[] h = new boolean[3];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final n f2402d = new n(7, 128);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final n f2403e = new n(8, 128);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n f2404f = new n(6, 128);
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k n = new com.fyber.inneractive.sdk.player.exoplayer2.util.k();

    public static final class b {
        public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.n a;
        public final boolean b;
        public final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final SparseArray<i.b> f2406d = new SparseArray<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SparseArray<i.a> f2407e = new SparseArray<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final com.fyber.inneractive.sdk.player.exoplayer2.util.l f2408f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public byte[] f2409g;
        public int h;
        public int i;
        public long j;
        public boolean k;
        public long l;
        public a m;
        public a n;
        public boolean o;
        public long p;
        public long q;
        public boolean r;

        public static final class a {
            public boolean a;
            public boolean b;
            public i.b c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f2410d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f2411e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f2412f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f2413g;
            public boolean h;
            public boolean i;
            public boolean j;
            public boolean k;
            public int l;
            public int m;
            public int n;
            public int o;
            public int p;

            public a() {
            }

            public static boolean a(a aVar, a aVar2) {
                boolean z;
                boolean z2;
                if (aVar.a) {
                    if (!aVar2.a || aVar.f2412f != aVar2.f2412f || aVar.f2413g != aVar2.f2413g || aVar.h != aVar2.h) {
                        return true;
                    }
                    if (aVar.i && aVar2.i && aVar.j != aVar2.j) {
                        return true;
                    }
                    int i = aVar.f2410d;
                    int i2 = aVar2.f2410d;
                    if (i != i2 && (i == 0 || i2 == 0)) {
                        return true;
                    }
                    int i3 = aVar.c.h;
                    if (i3 == 0 && aVar2.c.h == 0 && (aVar.m != aVar2.m || aVar.n != aVar2.n)) {
                        return true;
                    }
                    if ((i3 == 1 && aVar2.c.h == 1 && (aVar.o != aVar2.o || aVar.p != aVar2.p)) || (z = aVar.k) != (z2 = aVar2.k)) {
                        return true;
                    }
                    if (z && z2 && aVar.l != aVar2.l) {
                        return true;
                    }
                }
                return false;
            }
        }

        public b(com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVar, boolean z, boolean z2) {
            this.a = nVar;
            this.b = z;
            this.c = z2;
            this.m = new a();
            this.n = new a();
            byte[] bArr = new byte[128];
            this.f2409g = bArr;
            this.f2408f = new com.fyber.inneractive.sdk.player.exoplayer2.util.l(bArr, 0, 0);
            a();
        }

        public void a() {
            this.k = false;
            this.o = false;
            a aVar = this.n;
            aVar.b = false;
            aVar.a = false;
        }
    }

    public j(s sVar, boolean z, boolean z2) {
        this.a = sVar;
        this.b = z;
        this.c = z2;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a() {
        com.fyber.inneractive.sdk.player.exoplayer2.util.i.a(this.h);
        this.f2402d.a();
        this.f2403e.a();
        this.f2404f.a();
        b bVar = this.k;
        bVar.k = false;
        bVar.o = false;
        b.a aVar = bVar.n;
        aVar.b = false;
        aVar.a = false;
        this.f2405g = 0L;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(long j, boolean z) {
        this.m = j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        dVar.a();
        this.i = dVar.b();
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVarA = hVar.a(dVar.c(), 2);
        this.j = nVarA;
        this.k = new b(nVarA, this.b, this.c);
        this.a.a(hVar, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f8  */
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
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k r31) {
        /*
            Method dump skipped, instruction units count: 530
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j.a(com.fyber.inneractive.sdk.player.exoplayer2.util.k):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instruction units count: 461
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j.a(byte[], int, int):void");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void b() {
    }
}
