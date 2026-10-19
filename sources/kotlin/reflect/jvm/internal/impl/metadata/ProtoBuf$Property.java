package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.a;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.k;
import kotlin.reflect.jvm.internal.impl.protobuf.l;

/* JADX INFO: loaded from: classes5.dex */
public final class ProtoBuf$Property extends GeneratedMessageLite.d<ProtoBuf$Property> implements k {
    private static final ProtoBuf$Property c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$Property> f9517d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9519f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9520g;
    private int h;
    private int i;
    private ProtoBuf$Type j;
    private int k;
    private List<ProtoBuf$TypeParameter> l;
    private ProtoBuf$Type m;
    private int n;
    private ProtoBuf$ValueParameter o;
    private int p;
    private int q;
    private List<Integer> r;
    private byte s;
    private int t;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Property> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Property c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Property(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Property, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9521d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9524g;
        private int i;
        private int l;
        private int n;
        private int o;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9522e = 518;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9523f = 2054;
        private ProtoBuf$Type h = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$TypeParameter> j = Collections.emptyList();
        private ProtoBuf$Type k = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$ValueParameter m = ProtoBuf$ValueParameter.getDefaultInstance();
        private List<Integer> p = Collections.emptyList();

        private b() {
            u();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9521d & 32) != 32) {
                this.j = new ArrayList(this.j);
                this.f9521d |= 32;
            }
        }

        private void t() {
            if ((this.f9521d & 2048) != 2048) {
                this.p = new ArrayList(this.p);
                this.f9521d |= 2048;
            }
        }

        private void u() {
        }

        public b A(int i) {
            this.f9521d |= 1;
            this.f9522e = i;
            return this;
        }

        public b B(int i) {
            this.f9521d |= 512;
            this.n = i;
            return this;
        }

        public b C(int i) {
            this.f9521d |= 4;
            this.f9524g = i;
            return this;
        }

        public b D(int i) {
            this.f9521d |= 2;
            this.f9523f = i;
            return this;
        }

        public b E(int i) {
            this.f9521d |= 128;
            this.l = i;
            return this;
        }

        public b F(int i) {
            this.f9521d |= 16;
            this.i = i;
            return this;
        }

        public b G(int i) {
            this.f9521d |= 1024;
            this.o = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Property build() {
            ProtoBuf$Property protoBuf$PropertyP = p();
            if (protoBuf$PropertyP.isInitialized()) {
                return protoBuf$PropertyP;
            }
            throw a.AbstractC0539a.e(protoBuf$PropertyP);
        }

        public ProtoBuf$Property p() {
            ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(this);
            int i = this.f9521d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Property.f9520g = this.f9522e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Property.h = this.f9523f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Property.i = this.f9524g;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Property.j = this.h;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Property.k = this.i;
            if ((this.f9521d & 32) == 32) {
                this.j = Collections.unmodifiableList(this.j);
                this.f9521d &= -33;
            }
            protoBuf$Property.l = this.j;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Property.m = this.k;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Property.n = this.l;
            if ((i & 256) == 256) {
                i2 |= 128;
            }
            protoBuf$Property.o = this.m;
            if ((i & 512) == 512) {
                i2 |= 256;
            }
            protoBuf$Property.p = this.n;
            if ((i & 1024) == 1024) {
                i2 |= 512;
            }
            protoBuf$Property.q = this.o;
            if ((this.f9521d & 2048) == 2048) {
                this.p = Collections.unmodifiableList(this.p);
                this.f9521d &= -2049;
            }
            protoBuf$Property.r = this.p;
            protoBuf$Property.f9519f = i2;
            return protoBuf$Property;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Property protoBuf$Property) {
            if (protoBuf$Property == ProtoBuf$Property.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Property.a0()) {
                A(protoBuf$Property.M());
            }
            if (protoBuf$Property.d0()) {
                D(protoBuf$Property.P());
            }
            if (protoBuf$Property.c0()) {
                C(protoBuf$Property.O());
            }
            if (protoBuf$Property.g0()) {
                y(protoBuf$Property.S());
            }
            if (protoBuf$Property.h0()) {
                F(protoBuf$Property.T());
            }
            if (!protoBuf$Property.l.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$Property.l;
                    this.f9521d &= -33;
                } else {
                    s();
                    this.j.addAll(protoBuf$Property.l);
                }
            }
            if (protoBuf$Property.e0()) {
                x(protoBuf$Property.Q());
            }
            if (protoBuf$Property.f0()) {
                E(protoBuf$Property.R());
            }
            if (protoBuf$Property.j0()) {
                z(protoBuf$Property.V());
            }
            if (protoBuf$Property.b0()) {
                B(protoBuf$Property.N());
            }
            if (protoBuf$Property.i0()) {
                G(protoBuf$Property.U());
            }
            if (!protoBuf$Property.r.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Property.r;
                    this.f9521d &= -2049;
                } else {
                    t();
                    this.p.addAll(protoBuf$Property.r);
                }
            }
            m(protoBuf$Property);
            i(g().c(protoBuf$Property.f9518e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.f9517d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                if (r3 == 0) goto Le
                r2.h(r3)
            Le:
                return r2
            Lf:
                r3 = move-exception
                goto L1b
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.j r4 = r3.c()     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property) r4     // Catch: java.lang.Throwable -> Lf
                throw r3     // Catch: java.lang.Throwable -> L19
            L19:
                r3 = move-exception
                r0 = r4
            L1b:
                if (r0 == 0) goto L20
                r2.h(r0)
            L20:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property$b");
        }

        public b x(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9521d & 64) != 64 || this.k == ProtoBuf$Type.getDefaultInstance()) {
                this.k = protoBuf$Type;
            } else {
                this.k = ProtoBuf$Type.newBuilder(this.k).h(protoBuf$Type).p();
            }
            this.f9521d |= 64;
            return this;
        }

        public b y(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9521d & 8) != 8 || this.h == ProtoBuf$Type.getDefaultInstance()) {
                this.h = protoBuf$Type;
            } else {
                this.h = ProtoBuf$Type.newBuilder(this.h).h(protoBuf$Type).p();
            }
            this.f9521d |= 8;
            return this;
        }

        public b z(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            if ((this.f9521d & 256) != 256 || this.m == ProtoBuf$ValueParameter.getDefaultInstance()) {
                this.m = protoBuf$ValueParameter;
            } else {
                this.m = ProtoBuf$ValueParameter.newBuilder(this.m).h(protoBuf$ValueParameter).p();
            }
            this.f9521d |= 256;
            return this;
        }
    }

    static {
        ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(true);
        c = protoBuf$Property;
        protoBuf$Property.k0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    private ProtoBuf$Property(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.s = (byte) -1;
        this.t = -1;
        k0();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        int i = 0;
        while (true) {
            ?? I = 2048;
            if (z) {
                if ((i & 32) == 32) {
                    this.l = Collections.unmodifiableList(this.l);
                }
                if ((i & 2048) == 2048) {
                    this.r = Collections.unmodifiableList(this.r);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.f9518e = bVarNewOutput.f();
                    throw th;
                }
                this.f9518e = bVarNewOutput.f();
                h();
                return;
            }
            try {
                try {
                    try {
                        int iG = codedInputStream.G();
                        switch (iG) {
                            case 0:
                                z = true;
                                break;
                            case 8:
                                this.f9519f |= 2;
                                this.h = codedInputStream.p();
                                break;
                            case 16:
                                this.f9519f |= 4;
                                this.i = codedInputStream.p();
                                break;
                            case 26:
                                ProtoBuf$Type.b bVarS0 = (this.f9519f & 8) == 8 ? this.j.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                this.j = protoBuf$Type;
                                if (bVarS0 != null) {
                                    bVarS0.h(protoBuf$Type);
                                    this.j = bVarS0.p();
                                }
                                this.f9519f |= 8;
                                break;
                            case 34:
                                if ((i & 32) != 32) {
                                    this.l = new ArrayList();
                                    i |= 32;
                                }
                                this.l.add((ProtoBuf$TypeParameter) codedInputStream.r(ProtoBuf$TypeParameter.f9568d, extensionRegistryLite));
                                break;
                            case 42:
                                ProtoBuf$Type.b bVarS02 = (this.f9519f & 32) == 32 ? this.m.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                this.m = protoBuf$Type2;
                                if (bVarS02 != null) {
                                    bVarS02.h(protoBuf$Type2);
                                    this.m = bVarS02.p();
                                }
                                this.f9519f |= 32;
                                break;
                            case 50:
                                ProtoBuf$ValueParameter.b bVarS = (this.f9519f & 128) == 128 ? this.o.toBuilder() : null;
                                ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) codedInputStream.r(ProtoBuf$ValueParameter.f9584d, extensionRegistryLite);
                                this.o = protoBuf$ValueParameter;
                                if (bVarS != null) {
                                    bVarS.h(protoBuf$ValueParameter);
                                    this.o = bVarS.p();
                                }
                                this.f9519f |= 128;
                                break;
                            case 56:
                                this.f9519f |= 256;
                                this.p = codedInputStream.p();
                                break;
                            case 64:
                                this.f9519f |= 512;
                                this.q = codedInputStream.p();
                                break;
                            case 72:
                                this.f9519f |= 16;
                                this.k = codedInputStream.p();
                                break;
                            case 80:
                                this.f9519f |= 64;
                                this.n = codedInputStream.p();
                                break;
                            case 88:
                                this.f9519f |= 1;
                                this.f9520g = codedInputStream.p();
                                break;
                            case 248:
                                if ((i & 2048) != 2048) {
                                    this.r = new ArrayList();
                                    i |= 2048;
                                }
                                this.r.add(Integer.valueOf(codedInputStream.p()));
                                break;
                            case 250:
                                int iG2 = codedInputStream.g(codedInputStream.x());
                                if ((i & 2048) != 2048 && codedInputStream.c() > 0) {
                                    this.r = new ArrayList();
                                    i |= 2048;
                                }
                                while (codedInputStream.c() > 0) {
                                    this.r.add(Integer.valueOf(codedInputStream.p()));
                                }
                                codedInputStream.f(iG2);
                                break;
                            default:
                                I = i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG);
                                if (I == 0) {
                                    z = true;
                                }
                                break;
                        }
                    } catch (d e2) {
                        throw e2.k(this);
                    }
                } catch (IOException e3) {
                    throw new d(e3.getMessage()).k(this);
                }
            } catch (Throwable th2) {
                if ((i & 32) == 32) {
                    this.l = Collections.unmodifiableList(this.l);
                }
                if ((i & 2048) == I) {
                    this.r = Collections.unmodifiableList(this.r);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f9518e = bVarNewOutput.f();
                    throw th3;
                }
                this.f9518e = bVarNewOutput.f();
                h();
                throw th2;
            }
        }
    }

    private ProtoBuf$Property(GeneratedMessageLite.c<ProtoBuf$Property, ?> cVar) {
        super(cVar);
        this.s = (byte) -1;
        this.t = -1;
        this.f9518e = cVar.g();
    }

    private ProtoBuf$Property(boolean z) {
        this.s = (byte) -1;
        this.t = -1;
        this.f9518e = ByteString.a;
    }

    public static ProtoBuf$Property getDefaultInstance() {
        return c;
    }

    private void k0() {
        this.f9520g = 518;
        this.h = 2054;
        this.i = 0;
        this.j = ProtoBuf$Type.getDefaultInstance();
        this.k = 0;
        this.l = Collections.emptyList();
        this.m = ProtoBuf$Type.getDefaultInstance();
        this.n = 0;
        this.o = ProtoBuf$ValueParameter.getDefaultInstance();
        this.p = 0;
        this.q = 0;
        this.r = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$Property protoBuf$Property) {
        return newBuilder().h(protoBuf$Property);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Property getDefaultInstanceForType() {
        return c;
    }

    public int M() {
        return this.f9520g;
    }

    public int N() {
        return this.p;
    }

    public int O() {
        return this.i;
    }

    public int P() {
        return this.h;
    }

    public ProtoBuf$Type Q() {
        return this.m;
    }

    public int R() {
        return this.n;
    }

    public ProtoBuf$Type S() {
        return this.j;
    }

    public int T() {
        return this.k;
    }

    public int U() {
        return this.q;
    }

    public ProtoBuf$ValueParameter V() {
        return this.o;
    }

    public ProtoBuf$TypeParameter W(int i) {
        return this.l.get(i);
    }

    public int X() {
        return this.l.size();
    }

    public List<ProtoBuf$TypeParameter> Y() {
        return this.l;
    }

    public List<Integer> Z() {
        return this.r;
    }

    public boolean a0() {
        return (this.f9519f & 1) == 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9519f & 2) == 2) {
            codedOutputStream.s(1, this.h);
        }
        if ((this.f9519f & 4) == 4) {
            codedOutputStream.s(2, this.i);
        }
        if ((this.f9519f & 8) == 8) {
            codedOutputStream.v(3, this.j);
        }
        for (int i = 0; i < this.l.size(); i++) {
            codedOutputStream.v(4, this.l.get(i));
        }
        if ((this.f9519f & 32) == 32) {
            codedOutputStream.v(5, this.m);
        }
        if ((this.f9519f & 128) == 128) {
            codedOutputStream.v(6, this.o);
        }
        if ((this.f9519f & 256) == 256) {
            codedOutputStream.s(7, this.p);
        }
        if ((this.f9519f & 512) == 512) {
            codedOutputStream.s(8, this.q);
        }
        if ((this.f9519f & 16) == 16) {
            codedOutputStream.s(9, this.k);
        }
        if ((this.f9519f & 64) == 64) {
            codedOutputStream.s(10, this.n);
        }
        if ((this.f9519f & 1) == 1) {
            codedOutputStream.s(11, this.f9520g);
        }
        for (int i2 = 0; i2 < this.r.size(); i2++) {
            codedOutputStream.s(31, this.r.get(i2).intValue());
        }
        aVarT.a(19000, codedOutputStream);
        codedOutputStream.A(this.f9518e);
    }

    public boolean b0() {
        return (this.f9519f & 256) == 256;
    }

    public boolean c0() {
        return (this.f9519f & 4) == 4;
    }

    public boolean d0() {
        return (this.f9519f & 2) == 2;
    }

    public boolean e0() {
        return (this.f9519f & 32) == 32;
    }

    public boolean f0() {
        return (this.f9519f & 64) == 64;
    }

    public boolean g0() {
        return (this.f9519f & 8) == 8;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Property> getParserForType() {
        return f9517d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.t;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9519f & 2) == 2 ? CodedOutputStream.computeInt32Size(1, this.h) + 0 : 0;
        if ((this.f9519f & 4) == 4) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.i);
        }
        if ((this.f9519f & 8) == 8) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(3, this.j);
        }
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(4, this.l.get(i2));
        }
        if ((this.f9519f & 32) == 32) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(5, this.m);
        }
        if ((this.f9519f & 128) == 128) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(6, this.o);
        }
        if ((this.f9519f & 256) == 256) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(7, this.p);
        }
        if ((this.f9519f & 512) == 512) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(8, this.q);
        }
        if ((this.f9519f & 16) == 16) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(9, this.k);
        }
        if ((this.f9519f & 64) == 64) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(10, this.n);
        }
        if ((this.f9519f & 1) == 1) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(11, this.f9520g);
        }
        int iComputeInt32SizeNoTag = 0;
        for (int i3 = 0; i3 < this.r.size(); i3++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.r.get(i3).intValue());
        }
        int size = iComputeInt32Size + iComputeInt32SizeNoTag + (Z().size() * 2) + n() + this.f9518e.size();
        this.t = size;
        return size;
    }

    public boolean h0() {
        return (this.f9519f & 16) == 16;
    }

    public boolean i0() {
        return (this.f9519f & 512) == 512;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.s;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (!c0()) {
            this.s = (byte) 0;
            return false;
        }
        if (g0() && !S().isInitialized()) {
            this.s = (byte) 0;
            return false;
        }
        for (int i = 0; i < X(); i++) {
            if (!W(i).isInitialized()) {
                this.s = (byte) 0;
                return false;
            }
        }
        if (e0() && !Q().isInitialized()) {
            this.s = (byte) 0;
            return false;
        }
        if (j0() && !V().isInitialized()) {
            this.s = (byte) 0;
            return false;
        }
        if (m()) {
            this.s = (byte) 1;
            return true;
        }
        this.s = (byte) 0;
        return false;
    }

    public boolean j0() {
        return (this.f9519f & 128) == 128;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }
}
