package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
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
public final class ProtoBuf$TypeAlias extends GeneratedMessageLite.d<ProtoBuf$TypeAlias> implements k {
    private static final ProtoBuf$TypeAlias c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$TypeAlias> f9560d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9562f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9563g;
    private int h;
    private List<ProtoBuf$TypeParameter> i;
    private ProtoBuf$Type j;
    private int k;
    private ProtoBuf$Type l;
    private int m;
    private List<ProtoBuf$Annotation> n;
    private List<Integer> o;
    private byte p;
    private int q;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$TypeAlias> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeAlias c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$TypeAlias(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$TypeAlias, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9564d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9566f;
        private int i;
        private int k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9565e = 6;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<ProtoBuf$TypeParameter> f9567g = Collections.emptyList();
        private ProtoBuf$Type h = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type j = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$Annotation> l = Collections.emptyList();
        private List<Integer> m = Collections.emptyList();

        private b() {
            v();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9564d & 128) != 128) {
                this.l = new ArrayList(this.l);
                this.f9564d |= 128;
            }
        }

        private void t() {
            if ((this.f9564d & 4) != 4) {
                this.f9567g = new ArrayList(this.f9567g);
                this.f9564d |= 4;
            }
        }

        private void u() {
            if ((this.f9564d & 256) != 256) {
                this.m = new ArrayList(this.m);
                this.f9564d |= 256;
            }
        }

        private void v() {
        }

        public b A(int i) {
            this.f9564d |= 64;
            this.k = i;
            return this;
        }

        public b B(int i) {
            this.f9564d |= 1;
            this.f9565e = i;
            return this;
        }

        public b C(int i) {
            this.f9564d |= 2;
            this.f9566f = i;
            return this;
        }

        public b D(int i) {
            this.f9564d |= 16;
            this.i = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeAlias build() {
            ProtoBuf$TypeAlias protoBuf$TypeAliasP = p();
            if (protoBuf$TypeAliasP.isInitialized()) {
                return protoBuf$TypeAliasP;
            }
            throw a.AbstractC0539a.e(protoBuf$TypeAliasP);
        }

        public ProtoBuf$TypeAlias p() {
            ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias(this);
            int i = this.f9564d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$TypeAlias.f9563g = this.f9565e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$TypeAlias.h = this.f9566f;
            if ((this.f9564d & 4) == 4) {
                this.f9567g = Collections.unmodifiableList(this.f9567g);
                this.f9564d &= -5;
            }
            protoBuf$TypeAlias.i = this.f9567g;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$TypeAlias.j = this.h;
            if ((i & 16) == 16) {
                i2 |= 8;
            }
            protoBuf$TypeAlias.k = this.i;
            if ((i & 32) == 32) {
                i2 |= 16;
            }
            protoBuf$TypeAlias.l = this.j;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$TypeAlias.m = this.k;
            if ((this.f9564d & 128) == 128) {
                this.l = Collections.unmodifiableList(this.l);
                this.f9564d &= -129;
            }
            protoBuf$TypeAlias.n = this.l;
            if ((this.f9564d & 256) == 256) {
                this.m = Collections.unmodifiableList(this.m);
                this.f9564d &= -257;
            }
            protoBuf$TypeAlias.o = this.m;
            protoBuf$TypeAlias.f9562f = i2;
            return protoBuf$TypeAlias;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        public b w(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9564d & 32) != 32 || this.j == ProtoBuf$Type.getDefaultInstance()) {
                this.j = protoBuf$Type;
            } else {
                this.j = ProtoBuf$Type.newBuilder(this.j).h(protoBuf$Type).p();
            }
            this.f9564d |= 32;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
            if (protoBuf$TypeAlias == ProtoBuf$TypeAlias.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$TypeAlias.Z()) {
                B(protoBuf$TypeAlias.P());
            }
            if (protoBuf$TypeAlias.a0()) {
                C(protoBuf$TypeAlias.Q());
            }
            if (!protoBuf$TypeAlias.i.isEmpty()) {
                if (this.f9567g.isEmpty()) {
                    this.f9567g = protoBuf$TypeAlias.i;
                    this.f9564d &= -5;
                } else {
                    t();
                    this.f9567g.addAll(protoBuf$TypeAlias.i);
                }
            }
            if (protoBuf$TypeAlias.b0()) {
                z(protoBuf$TypeAlias.U());
            }
            if (protoBuf$TypeAlias.c0()) {
                D(protoBuf$TypeAlias.V());
            }
            if (protoBuf$TypeAlias.X()) {
                w(protoBuf$TypeAlias.N());
            }
            if (protoBuf$TypeAlias.Y()) {
                A(protoBuf$TypeAlias.O());
            }
            if (!protoBuf$TypeAlias.n.isEmpty()) {
                if (this.l.isEmpty()) {
                    this.l = protoBuf$TypeAlias.n;
                    this.f9564d &= -129;
                } else {
                    s();
                    this.l.addAll(protoBuf$TypeAlias.n);
                }
            }
            if (!protoBuf$TypeAlias.o.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$TypeAlias.o;
                    this.f9564d &= -257;
                } else {
                    u();
                    this.m.addAll(protoBuf$TypeAlias.o);
                }
            }
            m(protoBuf$TypeAlias);
            i(g().c(protoBuf$TypeAlias.f9561e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias.f9560d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias$b");
        }

        public b z(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9564d & 8) != 8 || this.h == ProtoBuf$Type.getDefaultInstance()) {
                this.h = protoBuf$Type;
            } else {
                this.h = ProtoBuf$Type.newBuilder(this.h).h(protoBuf$Type).p();
            }
            this.f9564d |= 8;
            return this;
        }
    }

    static {
        ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias(true);
        c = protoBuf$TypeAlias;
        protoBuf$TypeAlias.d0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    private ProtoBuf$TypeAlias(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        ProtoBuf$Type.b builder;
        this.p = (byte) -1;
        this.q = -1;
        d0();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        int i = 0;
        while (true) {
            ?? I = 128;
            if (z) {
                if ((i & 4) == 4) {
                    this.i = Collections.unmodifiableList(this.i);
                }
                if ((i & 128) == 128) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                if ((i & 256) == 256) {
                    this.o = Collections.unmodifiableList(this.o);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.f9561e = bVarNewOutput.f();
                    throw th;
                }
                this.f9561e = bVarNewOutput.f();
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
                                this.f9562f |= 1;
                                this.f9563g = codedInputStream.p();
                                break;
                            case 16:
                                this.f9562f |= 2;
                                this.h = codedInputStream.p();
                                break;
                            case 26:
                                if ((i & 4) != 4) {
                                    this.i = new ArrayList();
                                    i |= 4;
                                }
                                this.i.add((ProtoBuf$TypeParameter) codedInputStream.r(ProtoBuf$TypeParameter.f9568d, extensionRegistryLite));
                                break;
                            case 34:
                                builder = (this.f9562f & 4) == 4 ? this.j.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                this.j = protoBuf$Type;
                                if (builder != null) {
                                    builder.h(protoBuf$Type);
                                    this.j = builder.p();
                                }
                                this.f9562f |= 4;
                                break;
                            case 40:
                                this.f9562f |= 8;
                                this.k = codedInputStream.p();
                                break;
                            case 50:
                                builder = (this.f9562f & 16) == 16 ? this.l.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                this.l = protoBuf$Type2;
                                if (builder != null) {
                                    builder.h(protoBuf$Type2);
                                    this.l = builder.p();
                                }
                                this.f9562f |= 16;
                                break;
                            case 56:
                                this.f9562f |= 32;
                                this.m = codedInputStream.p();
                                break;
                            case 66:
                                if ((i & 128) != 128) {
                                    this.n = new ArrayList();
                                    i |= 128;
                                }
                                this.n.add((ProtoBuf$Annotation) codedInputStream.r(ProtoBuf$Annotation.c, extensionRegistryLite));
                                break;
                            case 248:
                                if ((i & 256) != 256) {
                                    this.o = new ArrayList();
                                    i |= 256;
                                }
                                this.o.add(Integer.valueOf(codedInputStream.p()));
                                break;
                            case 250:
                                int iG2 = codedInputStream.g(codedInputStream.x());
                                if ((i & 256) != 256 && codedInputStream.c() > 0) {
                                    this.o = new ArrayList();
                                    i |= 256;
                                }
                                while (codedInputStream.c() > 0) {
                                    this.o.add(Integer.valueOf(codedInputStream.p()));
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
                if ((i & 4) == 4) {
                    this.i = Collections.unmodifiableList(this.i);
                }
                if ((i & 128) == I) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                if ((i & 256) == 256) {
                    this.o = Collections.unmodifiableList(this.o);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f9561e = bVarNewOutput.f();
                    throw th3;
                }
                this.f9561e = bVarNewOutput.f();
                h();
                throw th2;
            }
        }
    }

    private ProtoBuf$TypeAlias(GeneratedMessageLite.c<ProtoBuf$TypeAlias, ?> cVar) {
        super(cVar);
        this.p = (byte) -1;
        this.q = -1;
        this.f9561e = cVar.g();
    }

    private ProtoBuf$TypeAlias(boolean z) {
        this.p = (byte) -1;
        this.q = -1;
        this.f9561e = ByteString.a;
    }

    private void d0() {
        this.f9563g = 6;
        this.h = 0;
        this.i = Collections.emptyList();
        this.j = ProtoBuf$Type.getDefaultInstance();
        this.k = 0;
        this.l = ProtoBuf$Type.getDefaultInstance();
        this.m = 0;
        this.n = Collections.emptyList();
        this.o = Collections.emptyList();
    }

    public static ProtoBuf$TypeAlias getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
        return newBuilder().h(protoBuf$TypeAlias);
    }

    public static ProtoBuf$TypeAlias parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return f9560d.d(inputStream, extensionRegistryLite);
    }

    public ProtoBuf$Annotation J(int i) {
        return this.n.get(i);
    }

    public int K() {
        return this.n.size();
    }

    public List<ProtoBuf$Annotation> L() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$TypeAlias getDefaultInstanceForType() {
        return c;
    }

    public ProtoBuf$Type N() {
        return this.l;
    }

    public int O() {
        return this.m;
    }

    public int P() {
        return this.f9563g;
    }

    public int Q() {
        return this.h;
    }

    public ProtoBuf$TypeParameter R(int i) {
        return this.i.get(i);
    }

    public int S() {
        return this.i.size();
    }

    public List<ProtoBuf$TypeParameter> T() {
        return this.i;
    }

    public ProtoBuf$Type U() {
        return this.j;
    }

    public int V() {
        return this.k;
    }

    public List<Integer> W() {
        return this.o;
    }

    public boolean X() {
        return (this.f9562f & 16) == 16;
    }

    public boolean Y() {
        return (this.f9562f & 32) == 32;
    }

    public boolean Z() {
        return (this.f9562f & 1) == 1;
    }

    public boolean a0() {
        return (this.f9562f & 2) == 2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9562f & 1) == 1) {
            codedOutputStream.s(1, this.f9563g);
        }
        if ((this.f9562f & 2) == 2) {
            codedOutputStream.s(2, this.h);
        }
        for (int i = 0; i < this.i.size(); i++) {
            codedOutputStream.v(3, this.i.get(i));
        }
        if ((this.f9562f & 4) == 4) {
            codedOutputStream.v(4, this.j);
        }
        if ((this.f9562f & 8) == 8) {
            codedOutputStream.s(5, this.k);
        }
        if ((this.f9562f & 16) == 16) {
            codedOutputStream.v(6, this.l);
        }
        if ((this.f9562f & 32) == 32) {
            codedOutputStream.s(7, this.m);
        }
        for (int i2 = 0; i2 < this.n.size(); i2++) {
            codedOutputStream.v(8, this.n.get(i2));
        }
        for (int i3 = 0; i3 < this.o.size(); i3++) {
            codedOutputStream.s(31, this.o.get(i3).intValue());
        }
        aVarT.a(200, codedOutputStream);
        codedOutputStream.A(this.f9561e);
    }

    public boolean b0() {
        return (this.f9562f & 4) == 4;
    }

    public boolean c0() {
        return (this.f9562f & 8) == 8;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$TypeAlias> getParserForType() {
        return f9560d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.q;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9562f & 1) == 1 ? CodedOutputStream.computeInt32Size(1, this.f9563g) + 0 : 0;
        if ((this.f9562f & 2) == 2) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.h);
        }
        for (int i2 = 0; i2 < this.i.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(3, this.i.get(i2));
        }
        if ((this.f9562f & 4) == 4) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(4, this.j);
        }
        if ((this.f9562f & 8) == 8) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(5, this.k);
        }
        if ((this.f9562f & 16) == 16) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(6, this.l);
        }
        if ((this.f9562f & 32) == 32) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(7, this.m);
        }
        for (int i3 = 0; i3 < this.n.size(); i3++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(8, this.n.get(i3));
        }
        int iComputeInt32SizeNoTag = 0;
        for (int i4 = 0; i4 < this.o.size(); i4++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.o.get(i4).intValue());
        }
        int size = iComputeInt32Size + iComputeInt32SizeNoTag + (W().size() * 2) + n() + this.f9561e.size();
        this.q = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.p;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (!a0()) {
            this.p = (byte) 0;
            return false;
        }
        for (int i = 0; i < S(); i++) {
            if (!R(i).isInitialized()) {
                this.p = (byte) 0;
                return false;
            }
        }
        if (b0() && !U().isInitialized()) {
            this.p = (byte) 0;
            return false;
        }
        if (X() && !N().isInitialized()) {
            this.p = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < K(); i2++) {
            if (!J(i2).isInitialized()) {
                this.p = (byte) 0;
                return false;
            }
        }
        if (m()) {
            this.p = (byte) 1;
            return true;
        }
        this.p = (byte) 0;
        return false;
    }
}
