package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
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
public final class ProtoBuf$ValueParameter extends GeneratedMessageLite.d<ProtoBuf$ValueParameter> implements k {
    private static final ProtoBuf$ValueParameter c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$ValueParameter> f9584d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9587g;
    private int h;
    private ProtoBuf$Type i;
    private int j;
    private ProtoBuf$Type k;
    private int l;
    private byte m;
    private int n;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$ValueParameter> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$ValueParameter c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$ValueParameter(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$ValueParameter, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9588d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9589e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9590f;
        private int h;
        private int j;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ProtoBuf$Type f9591g = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type i = ProtoBuf$Type.getDefaultInstance();

        private b() {
            s();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
        }

        public b A(int i) {
            this.f9588d |= 32;
            this.j = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$ValueParameter build() {
            ProtoBuf$ValueParameter protoBuf$ValueParameterP = p();
            if (protoBuf$ValueParameterP.isInitialized()) {
                return protoBuf$ValueParameterP;
            }
            throw a.AbstractC0539a.e(protoBuf$ValueParameterP);
        }

        public ProtoBuf$ValueParameter p() {
            ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter(this);
            int i = this.f9588d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$ValueParameter.f9587g = this.f9589e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$ValueParameter.h = this.f9590f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$ValueParameter.i = this.f9591g;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$ValueParameter.j = this.h;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$ValueParameter.k = this.i;
            if ((i & 32) == 32) {
                i2 |= 32;
            }
            protoBuf$ValueParameter.l = this.j;
            protoBuf$ValueParameter.f9586f = i2;
            return protoBuf$ValueParameter;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            if (protoBuf$ValueParameter == ProtoBuf$ValueParameter.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$ValueParameter.K()) {
                x(protoBuf$ValueParameter.E());
            }
            if (protoBuf$ValueParameter.L()) {
                y(protoBuf$ValueParameter.F());
            }
            if (protoBuf$ValueParameter.M()) {
                v(protoBuf$ValueParameter.G());
            }
            if (protoBuf$ValueParameter.N()) {
                z(protoBuf$ValueParameter.H());
            }
            if (protoBuf$ValueParameter.O()) {
                w(protoBuf$ValueParameter.I());
            }
            if (protoBuf$ValueParameter.P()) {
                A(protoBuf$ValueParameter.J());
            }
            m(protoBuf$ValueParameter);
            i(g().c(protoBuf$ValueParameter.f9585e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter.f9584d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter$b");
        }

        public b v(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9588d & 4) != 4 || this.f9591g == ProtoBuf$Type.getDefaultInstance()) {
                this.f9591g = protoBuf$Type;
            } else {
                this.f9591g = ProtoBuf$Type.newBuilder(this.f9591g).h(protoBuf$Type).p();
            }
            this.f9588d |= 4;
            return this;
        }

        public b w(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9588d & 16) != 16 || this.i == ProtoBuf$Type.getDefaultInstance()) {
                this.i = protoBuf$Type;
            } else {
                this.i = ProtoBuf$Type.newBuilder(this.i).h(protoBuf$Type).p();
            }
            this.f9588d |= 16;
            return this;
        }

        public b x(int i) {
            this.f9588d |= 1;
            this.f9589e = i;
            return this;
        }

        public b y(int i) {
            this.f9588d |= 2;
            this.f9590f = i;
            return this;
        }

        public b z(int i) {
            this.f9588d |= 8;
            this.h = i;
            return this;
        }
    }

    static {
        ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter(true);
        c = protoBuf$ValueParameter;
        protoBuf$ValueParameter.Q();
    }

    private ProtoBuf$ValueParameter(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        ProtoBuf$Type.b builder;
        this.m = (byte) -1;
        this.n = -1;
        Q();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    if (iG != 0) {
                        if (iG == 8) {
                            this.f9586f |= 1;
                            this.f9587g = codedInputStream.p();
                        } else if (iG != 16) {
                            if (iG == 26) {
                                builder = (this.f9586f & 4) == 4 ? this.i.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                this.i = protoBuf$Type;
                                if (builder != null) {
                                    builder.h(protoBuf$Type);
                                    this.i = builder.p();
                                }
                                this.f9586f |= 4;
                            } else if (iG == 34) {
                                builder = (this.f9586f & 16) == 16 ? this.k.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                this.k = protoBuf$Type2;
                                if (builder != null) {
                                    builder.h(protoBuf$Type2);
                                    this.k = builder.p();
                                }
                                this.f9586f |= 16;
                            } else if (iG == 40) {
                                this.f9586f |= 8;
                                this.j = codedInputStream.p();
                            } else if (iG == 48) {
                                this.f9586f |= 32;
                                this.l = codedInputStream.p();
                            } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                            }
                        } else {
                            this.f9586f |= 2;
                            this.h = codedInputStream.p();
                        }
                    }
                    z = true;
                } catch (d e2) {
                    throw e2.k(this);
                } catch (IOException e3) {
                    throw new d(e3.getMessage()).k(this);
                }
            } catch (Throwable th) {
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f9585e = bVarNewOutput.f();
                    throw th2;
                }
                this.f9585e = bVarNewOutput.f();
                h();
                throw th;
            }
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9585e = bVarNewOutput.f();
            throw th3;
        }
        this.f9585e = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$ValueParameter(GeneratedMessageLite.c<ProtoBuf$ValueParameter, ?> cVar) {
        super(cVar);
        this.m = (byte) -1;
        this.n = -1;
        this.f9585e = cVar.g();
    }

    private ProtoBuf$ValueParameter(boolean z) {
        this.m = (byte) -1;
        this.n = -1;
        this.f9585e = ByteString.a;
    }

    private void Q() {
        this.f9587g = 0;
        this.h = 0;
        this.i = ProtoBuf$Type.getDefaultInstance();
        this.j = 0;
        this.k = ProtoBuf$Type.getDefaultInstance();
        this.l = 0;
    }

    public static ProtoBuf$ValueParameter getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        return newBuilder().h(protoBuf$ValueParameter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$ValueParameter getDefaultInstanceForType() {
        return c;
    }

    public int E() {
        return this.f9587g;
    }

    public int F() {
        return this.h;
    }

    public ProtoBuf$Type G() {
        return this.i;
    }

    public int H() {
        return this.j;
    }

    public ProtoBuf$Type I() {
        return this.k;
    }

    public int J() {
        return this.l;
    }

    public boolean K() {
        return (this.f9586f & 1) == 1;
    }

    public boolean L() {
        return (this.f9586f & 2) == 2;
    }

    public boolean M() {
        return (this.f9586f & 4) == 4;
    }

    public boolean N() {
        return (this.f9586f & 8) == 8;
    }

    public boolean O() {
        return (this.f9586f & 16) == 16;
    }

    public boolean P() {
        return (this.f9586f & 32) == 32;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9586f & 1) == 1) {
            codedOutputStream.s(1, this.f9587g);
        }
        if ((this.f9586f & 2) == 2) {
            codedOutputStream.s(2, this.h);
        }
        if ((this.f9586f & 4) == 4) {
            codedOutputStream.v(3, this.i);
        }
        if ((this.f9586f & 16) == 16) {
            codedOutputStream.v(4, this.k);
        }
        if ((this.f9586f & 8) == 8) {
            codedOutputStream.s(5, this.j);
        }
        if ((this.f9586f & 32) == 32) {
            codedOutputStream.s(6, this.l);
        }
        aVarT.a(200, codedOutputStream);
        codedOutputStream.A(this.f9585e);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$ValueParameter> getParserForType() {
        return f9584d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.n;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9586f & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.f9587g) : 0;
        if ((this.f9586f & 2) == 2) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.h);
        }
        if ((this.f9586f & 4) == 4) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(3, this.i);
        }
        if ((this.f9586f & 16) == 16) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(4, this.k);
        }
        if ((this.f9586f & 8) == 8) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(5, this.j);
        }
        if ((this.f9586f & 32) == 32) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(6, this.l);
        }
        int iN = iComputeInt32Size + n() + this.f9585e.size();
        this.n = iN;
        return iN;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.m;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (!L()) {
            this.m = (byte) 0;
            return false;
        }
        if (M() && !G().isInitialized()) {
            this.m = (byte) 0;
            return false;
        }
        if (O() && !I().isInitialized()) {
            this.m = (byte) 0;
            return false;
        }
        if (m()) {
            this.m = (byte) 1;
            return true;
        }
        this.m = (byte) 0;
        return false;
    }
}
