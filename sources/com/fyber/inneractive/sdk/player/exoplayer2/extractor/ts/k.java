package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements h {
    public final s a;
    public String b;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.n c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f2414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2415e;
    public long l;
    public long m;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean[] f2416f = new boolean[3];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final n f2417g = new n(32, 128);
    public final n h = new n(33, 128);
    public final n i = new n(34, 128);
    public final n j = new n(39, 128);
    public final n k = new n(40, 128);
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k n = new com.fyber.inneractive.sdk.player.exoplayer2.util.k();

    public static final class a {
        public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.n a;
        public long b;
        public boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2418d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2419e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2420f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f2421g;
        public boolean h;
        public boolean i;
        public boolean j;
        public long k;
        public long l;
        public boolean m;

        public a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVar) {
            this.a = nVar;
        }
    }

    public k(s sVar) {
        this.a = sVar;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a() {
        com.fyber.inneractive.sdk.player.exoplayer2.util.i.a(this.f2416f);
        this.f2417g.a();
        this.h.a();
        this.i.a();
        this.j.a();
        this.k.a();
        a aVar = this.f2414d;
        aVar.f2420f = false;
        aVar.f2421g = false;
        aVar.h = false;
        aVar.i = false;
        aVar.j = false;
        this.l = 0L;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(long j, boolean z) {
        this.m = j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        dVar.a();
        this.b = dVar.b();
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVarA = hVar.a(dVar.c(), 2);
        this.c = nVarA;
        this.f2414d = new a(nVarA);
        this.a.a(hVar, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03c9  */
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
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k r39) {
        /*
            Method dump skipped, instruction units count: 1007
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.k.a(com.fyber.inneractive.sdk.player.exoplayer2.util.k):void");
    }

    public final void a(byte[] bArr, int i, int i2) {
        if (this.f2415e) {
            a aVar = this.f2414d;
            if (aVar.f2420f) {
                int i3 = aVar.f2418d;
                int i4 = (i + 2) - i3;
                if (i4 < i2) {
                    aVar.f2421g = (bArr[i4] & 128) != 0;
                    aVar.f2420f = false;
                } else {
                    aVar.f2418d = i3 + (i2 - i);
                }
            }
        } else {
            this.f2417g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.h
    public void b() {
    }
}
