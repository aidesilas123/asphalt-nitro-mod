package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
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
public final class ProtoBuf$Function extends GeneratedMessageLite.d<ProtoBuf$Function> implements k {
    private static final ProtoBuf$Function c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$Function> f9485d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9487f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9488g;
    private int h;
    private int i;
    private ProtoBuf$Type j;
    private int k;
    private List<ProtoBuf$TypeParameter> l;
    private ProtoBuf$Type m;
    private int n;
    private List<ProtoBuf$ValueParameter> o;
    private ProtoBuf$TypeTable p;
    private List<Integer> q;
    private ProtoBuf$Contract r;
    private byte s;
    private int t;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Function> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Function c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Function(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Function, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9489d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9492g;
        private int i;
        private int l;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9490e = 6;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9491f = 6;
        private ProtoBuf$Type h = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$TypeParameter> j = Collections.emptyList();
        private ProtoBuf$Type k = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$ValueParameter> m = Collections.emptyList();
        private ProtoBuf$TypeTable n = ProtoBuf$TypeTable.getDefaultInstance();
        private List<Integer> o = Collections.emptyList();
        private ProtoBuf$Contract p = ProtoBuf$Contract.getDefaultInstance();

        private b() {
            v();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9489d & 32) != 32) {
                this.j = new ArrayList(this.j);
                this.f9489d |= 32;
            }
        }

        private void t() {
            if ((this.f9489d & 256) != 256) {
                this.m = new ArrayList(this.m);
                this.f9489d |= 256;
            }
        }

        private void u() {
            if ((this.f9489d & 1024) != 1024) {
                this.o = new ArrayList(this.o);
                this.f9489d |= 1024;
            }
        }

        private void v() {
        }

        public b A(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9489d & 8) != 8 || this.h == ProtoBuf$Type.getDefaultInstance()) {
                this.h = protoBuf$Type;
            } else {
                this.h = ProtoBuf$Type.newBuilder(this.h).h(protoBuf$Type).p();
            }
            this.f9489d |= 8;
            return this;
        }

        public b B(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.f9489d & 512) != 512 || this.n == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.n = protoBuf$TypeTable;
            } else {
                this.n = ProtoBuf$TypeTable.newBuilder(this.n).h(protoBuf$TypeTable).l();
            }
            this.f9489d |= 512;
            return this;
        }

        public b C(int i) {
            this.f9489d |= 1;
            this.f9490e = i;
            return this;
        }

        public b D(int i) {
            this.f9489d |= 4;
            this.f9492g = i;
            return this;
        }

        public b E(int i) {
            this.f9489d |= 2;
            this.f9491f = i;
            return this;
        }

        public b F(int i) {
            this.f9489d |= 128;
            this.l = i;
            return this;
        }

        public b G(int i) {
            this.f9489d |= 16;
            this.i = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Function build() {
            ProtoBuf$Function protoBuf$FunctionP = p();
            if (protoBuf$FunctionP.isInitialized()) {
                return protoBuf$FunctionP;
            }
            throw a.AbstractC0539a.e(protoBuf$FunctionP);
        }

        public ProtoBuf$Function p() {
            ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function(this);
            int i = this.f9489d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Function.f9488g = this.f9490e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Function.h = this.f9491f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Function.i = this.f9492g;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Function.j = this.h;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Function.k = this.i;
            if ((this.f9489d & 32) == 32) {
                this.j = Collections.unmodifiableList(this.j);
                this.f9489d &= -33;
            }
            protoBuf$Function.l = this.j;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Function.m = this.k;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Function.n = this.l;
            if ((this.f9489d & 256) == 256) {
                this.m = Collections.unmodifiableList(this.m);
                this.f9489d &= -257;
            }
            protoBuf$Function.o = this.m;
            if ((i & 512) == 512) {
                i2 |= 128;
            }
            protoBuf$Function.p = this.n;
            if ((this.f9489d & 1024) == 1024) {
                this.o = Collections.unmodifiableList(this.o);
                this.f9489d &= -1025;
            }
            protoBuf$Function.q = this.o;
            if ((i & 2048) == 2048) {
                i2 |= 256;
            }
            protoBuf$Function.r = this.p;
            protoBuf$Function.f9487f = i2;
            return protoBuf$Function;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        public b w(ProtoBuf$Contract protoBuf$Contract) {
            if ((this.f9489d & 2048) != 2048 || this.p == ProtoBuf$Contract.getDefaultInstance()) {
                this.p = protoBuf$Contract;
            } else {
                this.p = ProtoBuf$Contract.newBuilder(this.p).h(protoBuf$Contract).l();
            }
            this.f9489d |= 2048;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Function protoBuf$Function) {
            if (protoBuf$Function == ProtoBuf$Function.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Function.e0()) {
                C(protoBuf$Function.O());
            }
            if (protoBuf$Function.g0()) {
                E(protoBuf$Function.Q());
            }
            if (protoBuf$Function.f0()) {
                D(protoBuf$Function.P());
            }
            if (protoBuf$Function.j0()) {
                A(protoBuf$Function.T());
            }
            if (protoBuf$Function.k0()) {
                G(protoBuf$Function.U());
            }
            if (!protoBuf$Function.l.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$Function.l;
                    this.f9489d &= -33;
                } else {
                    s();
                    this.j.addAll(protoBuf$Function.l);
                }
            }
            if (protoBuf$Function.h0()) {
                z(protoBuf$Function.R());
            }
            if (protoBuf$Function.i0()) {
                F(protoBuf$Function.S());
            }
            if (!protoBuf$Function.o.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$Function.o;
                    this.f9489d &= -257;
                } else {
                    t();
                    this.m.addAll(protoBuf$Function.o);
                }
            }
            if (protoBuf$Function.l0()) {
                B(protoBuf$Function.Y());
            }
            if (!protoBuf$Function.q.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Function.q;
                    this.f9489d &= -1025;
                } else {
                    u();
                    this.o.addAll(protoBuf$Function.q);
                }
            }
            if (protoBuf$Function.d0()) {
                w(protoBuf$Function.M());
            }
            m(protoBuf$Function);
            i(g().c(protoBuf$Function.f9486e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function.f9485d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function$b");
        }

        public b z(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9489d & 64) != 64 || this.k == ProtoBuf$Type.getDefaultInstance()) {
                this.k = protoBuf$Type;
            } else {
                this.k = ProtoBuf$Type.newBuilder(this.k).h(protoBuf$Type).p();
            }
            this.f9489d |= 64;
            return this;
        }
    }

    static {
        ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function(true);
        c = protoBuf$Function;
        protoBuf$Function.m0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    private ProtoBuf$Function(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.s = (byte) -1;
        this.t = -1;
        m0();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        int i = 0;
        while (true) {
            ?? I = 1024;
            if (z) {
                if ((i & 32) == 32) {
                    this.l = Collections.unmodifiableList(this.l);
                }
                if ((i & 256) == 256) {
                    this.o = Collections.unmodifiableList(this.o);
                }
                if ((i & 1024) == 1024) {
                    this.q = Collections.unmodifiableList(this.q);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.f9486e = bVarNewOutput.f();
                    throw th;
                }
                this.f9486e = bVarNewOutput.f();
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
                                this.f9487f |= 2;
                                this.h = codedInputStream.p();
                                break;
                            case 16:
                                this.f9487f |= 4;
                                this.i = codedInputStream.p();
                                break;
                            case 26:
                                ProtoBuf$Type.b bVarS0 = (this.f9487f & 8) == 8 ? this.j.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                this.j = protoBuf$Type;
                                if (bVarS0 != null) {
                                    bVarS0.h(protoBuf$Type);
                                    this.j = bVarS0.p();
                                }
                                this.f9487f |= 8;
                                break;
                            case 34:
                                if ((i & 32) != 32) {
                                    this.l = new ArrayList();
                                    i |= 32;
                                }
                                this.l.add((ProtoBuf$TypeParameter) codedInputStream.r(ProtoBuf$TypeParameter.f9568d, extensionRegistryLite));
                                break;
                            case 42:
                                ProtoBuf$Type.b bVarS02 = (this.f9487f & 32) == 32 ? this.m.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                this.m = protoBuf$Type2;
                                if (bVarS02 != null) {
                                    bVarS02.h(protoBuf$Type2);
                                    this.m = bVarS02.p();
                                }
                                this.f9487f |= 32;
                                break;
                            case 50:
                                if ((i & 256) != 256) {
                                    this.o = new ArrayList();
                                    i |= 256;
                                }
                                this.o.add((ProtoBuf$ValueParameter) codedInputStream.r(ProtoBuf$ValueParameter.f9584d, extensionRegistryLite));
                                break;
                            case 56:
                                this.f9487f |= 16;
                                this.k = codedInputStream.p();
                                break;
                            case 64:
                                this.f9487f |= 64;
                                this.n = codedInputStream.p();
                                break;
                            case 72:
                                this.f9487f |= 1;
                                this.f9488g = codedInputStream.p();
                                break;
                            case 242:
                                ProtoBuf$TypeTable.b bVarY = (this.f9487f & 128) == 128 ? this.p.toBuilder() : null;
                                ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) codedInputStream.r(ProtoBuf$TypeTable.c, extensionRegistryLite);
                                this.p = protoBuf$TypeTable;
                                if (bVarY != null) {
                                    bVarY.h(protoBuf$TypeTable);
                                    this.p = bVarY.l();
                                }
                                this.f9487f |= 128;
                                break;
                            case 248:
                                if ((i & 1024) != 1024) {
                                    this.q = new ArrayList();
                                    i |= 1024;
                                }
                                this.q.add(Integer.valueOf(codedInputStream.p()));
                                break;
                            case 250:
                                int iG2 = codedInputStream.g(codedInputStream.x());
                                if ((i & 1024) != 1024 && codedInputStream.c() > 0) {
                                    this.q = new ArrayList();
                                    i |= 1024;
                                }
                                while (codedInputStream.c() > 0) {
                                    this.q.add(Integer.valueOf(codedInputStream.p()));
                                }
                                codedInputStream.f(iG2);
                                break;
                            case 258:
                                ProtoBuf$Contract.b bVarT = (this.f9487f & 256) == 256 ? this.r.toBuilder() : null;
                                ProtoBuf$Contract protoBuf$Contract = (ProtoBuf$Contract) codedInputStream.r(ProtoBuf$Contract.c, extensionRegistryLite);
                                this.r = protoBuf$Contract;
                                if (bVarT != null) {
                                    bVarT.h(protoBuf$Contract);
                                    this.r = bVarT.l();
                                }
                                this.f9487f |= 256;
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
                if ((i & 256) == 256) {
                    this.o = Collections.unmodifiableList(this.o);
                }
                if ((i & 1024) == I) {
                    this.q = Collections.unmodifiableList(this.q);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f9486e = bVarNewOutput.f();
                    throw th3;
                }
                this.f9486e = bVarNewOutput.f();
                h();
                throw th2;
            }
        }
    }

    private ProtoBuf$Function(GeneratedMessageLite.c<ProtoBuf$Function, ?> cVar) {
        super(cVar);
        this.s = (byte) -1;
        this.t = -1;
        this.f9486e = cVar.g();
    }

    private ProtoBuf$Function(boolean z) {
        this.s = (byte) -1;
        this.t = -1;
        this.f9486e = ByteString.a;
    }

    public static ProtoBuf$Function getDefaultInstance() {
        return c;
    }

    private void m0() {
        this.f9488g = 6;
        this.h = 6;
        this.i = 0;
        this.j = ProtoBuf$Type.getDefaultInstance();
        this.k = 0;
        this.l = Collections.emptyList();
        this.m = ProtoBuf$Type.getDefaultInstance();
        this.n = 0;
        this.o = Collections.emptyList();
        this.p = ProtoBuf$TypeTable.getDefaultInstance();
        this.q = Collections.emptyList();
        this.r = ProtoBuf$Contract.getDefaultInstance();
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$Function protoBuf$Function) {
        return newBuilder().h(protoBuf$Function);
    }

    public static ProtoBuf$Function parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return f9485d.a(inputStream, extensionRegistryLite);
    }

    public ProtoBuf$Contract M() {
        return this.r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Function getDefaultInstanceForType() {
        return c;
    }

    public int O() {
        return this.f9488g;
    }

    public int P() {
        return this.i;
    }

    public int Q() {
        return this.h;
    }

    public ProtoBuf$Type R() {
        return this.m;
    }

    public int S() {
        return this.n;
    }

    public ProtoBuf$Type T() {
        return this.j;
    }

    public int U() {
        return this.k;
    }

    public ProtoBuf$TypeParameter V(int i) {
        return this.l.get(i);
    }

    public int W() {
        return this.l.size();
    }

    public List<ProtoBuf$TypeParameter> X() {
        return this.l;
    }

    public ProtoBuf$TypeTable Y() {
        return this.p;
    }

    public ProtoBuf$ValueParameter Z(int i) {
        return this.o.get(i);
    }

    public int a0() {
        return this.o.size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9487f & 2) == 2) {
            codedOutputStream.s(1, this.h);
        }
        if ((this.f9487f & 4) == 4) {
            codedOutputStream.s(2, this.i);
        }
        if ((this.f9487f & 8) == 8) {
            codedOutputStream.v(3, this.j);
        }
        for (int i = 0; i < this.l.size(); i++) {
            codedOutputStream.v(4, this.l.get(i));
        }
        if ((this.f9487f & 32) == 32) {
            codedOutputStream.v(5, this.m);
        }
        for (int i2 = 0; i2 < this.o.size(); i2++) {
            codedOutputStream.v(6, this.o.get(i2));
        }
        if ((this.f9487f & 16) == 16) {
            codedOutputStream.s(7, this.k);
        }
        if ((this.f9487f & 64) == 64) {
            codedOutputStream.s(8, this.n);
        }
        if ((this.f9487f & 1) == 1) {
            codedOutputStream.s(9, this.f9488g);
        }
        if ((this.f9487f & 128) == 128) {
            codedOutputStream.v(30, this.p);
        }
        for (int i3 = 0; i3 < this.q.size(); i3++) {
            codedOutputStream.s(31, this.q.get(i3).intValue());
        }
        if ((this.f9487f & 256) == 256) {
            codedOutputStream.v(32, this.r);
        }
        aVarT.a(19000, codedOutputStream);
        codedOutputStream.A(this.f9486e);
    }

    public List<ProtoBuf$ValueParameter> b0() {
        return this.o;
    }

    public List<Integer> c0() {
        return this.q;
    }

    public boolean d0() {
        return (this.f9487f & 256) == 256;
    }

    public boolean e0() {
        return (this.f9487f & 1) == 1;
    }

    public boolean f0() {
        return (this.f9487f & 4) == 4;
    }

    public boolean g0() {
        return (this.f9487f & 2) == 2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Function> getParserForType() {
        return f9485d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.t;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9487f & 2) == 2 ? CodedOutputStream.computeInt32Size(1, this.h) + 0 : 0;
        if ((this.f9487f & 4) == 4) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.i);
        }
        if ((this.f9487f & 8) == 8) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(3, this.j);
        }
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(4, this.l.get(i2));
        }
        if ((this.f9487f & 32) == 32) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(5, this.m);
        }
        for (int i3 = 0; i3 < this.o.size(); i3++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(6, this.o.get(i3));
        }
        if ((this.f9487f & 16) == 16) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(7, this.k);
        }
        if ((this.f9487f & 64) == 64) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(8, this.n);
        }
        if ((this.f9487f & 1) == 1) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(9, this.f9488g);
        }
        if ((this.f9487f & 128) == 128) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(30, this.p);
        }
        int iComputeInt32SizeNoTag = 0;
        for (int i4 = 0; i4 < this.q.size(); i4++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.q.get(i4).intValue());
        }
        int size = iComputeInt32Size + iComputeInt32SizeNoTag + (c0().size() * 2);
        if ((this.f9487f & 256) == 256) {
            size += CodedOutputStream.computeMessageSize(32, this.r);
        }
        int iN = size + n() + this.f9486e.size();
        this.t = iN;
        return iN;
    }

    public boolean h0() {
        return (this.f9487f & 32) == 32;
    }

    public boolean i0() {
        return (this.f9487f & 64) == 64;
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
        if (!f0()) {
            this.s = (byte) 0;
            return false;
        }
        if (j0() && !T().isInitialized()) {
            this.s = (byte) 0;
            return false;
        }
        for (int i = 0; i < W(); i++) {
            if (!V(i).isInitialized()) {
                this.s = (byte) 0;
                return false;
            }
        }
        if (h0() && !R().isInitialized()) {
            this.s = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < a0(); i2++) {
            if (!Z(i2).isInitialized()) {
                this.s = (byte) 0;
                return false;
            }
        }
        if (l0() && !Y().isInitialized()) {
            this.s = (byte) 0;
            return false;
        }
        if (d0() && !M().isInitialized()) {
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
        return (this.f9487f & 8) == 8;
    }

    public boolean k0() {
        return (this.f9487f & 16) == 16;
    }

    public boolean l0() {
        return (this.f9487f & 128) == 128;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }
}
