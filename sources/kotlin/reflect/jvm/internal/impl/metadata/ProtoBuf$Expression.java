package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.a;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.k;
import kotlin.reflect.jvm.internal.impl.protobuf.l;

/* JADX INFO: loaded from: classes5.dex */
public final class ProtoBuf$Expression extends GeneratedMessageLite implements k {
    private static final ProtoBuf$Expression b;
    public static l<ProtoBuf$Expression> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9477g;
    private ConstantValue h;
    private ProtoBuf$Type i;
    private int j;
    private List<ProtoBuf$Expression> k;
    private List<ProtoBuf$Expression> l;
    private byte m;
    private int n;

    public enum ConstantValue implements Internal.a {
        TRUE(0, 0),
        FALSE(1, 1),
        NULL(2, 2);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static Internal.b<ConstantValue> f9478d = new a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f9480f;

        static class a implements Internal.b<ConstantValue> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ConstantValue findValueByNumber(int i) {
                return ConstantValue.valueOf(i);
            }
        }

        ConstantValue(int i, int i2) {
            this.f9480f = i2;
        }

        public static ConstantValue valueOf(int i) {
            if (i == 0) {
                return TRUE;
            }
            if (i == 1) {
                return FALSE;
            }
            if (i != 2) {
                return null;
            }
            return NULL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
        public final int getNumber() {
            return this.f9480f;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Expression> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Expression c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Expression(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$Expression, b> implements k {
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9481d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9484g;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ConstantValue f9482e = ConstantValue.TRUE;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ProtoBuf$Type f9483f = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$Expression> h = Collections.emptyList();
        private List<ProtoBuf$Expression> i = Collections.emptyList();

        private b() {
            q();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b n() {
            return new b();
        }

        private void o() {
            if ((this.b & 32) != 32) {
                this.h = new ArrayList(this.h);
                this.b |= 32;
            }
        }

        private void p() {
            if ((this.b & 64) != 64) {
                this.i = new ArrayList(this.i);
                this.b |= 64;
            }
        }

        private void q() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Expression build() {
            ProtoBuf$Expression protoBuf$ExpressionL = l();
            if (protoBuf$ExpressionL.isInitialized()) {
                return protoBuf$ExpressionL;
            }
            throw a.AbstractC0539a.e(protoBuf$ExpressionL);
        }

        public ProtoBuf$Expression l() {
            ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression(this);
            int i = this.b;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Expression.f9476f = this.c;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Expression.f9477g = this.f9481d;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Expression.h = this.f9482e;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Expression.i = this.f9483f;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Expression.j = this.f9484g;
            if ((this.b & 32) == 32) {
                this.h = Collections.unmodifiableList(this.h);
                this.b &= -33;
            }
            protoBuf$Expression.k = this.h;
            if ((this.b & 64) == 64) {
                this.i = Collections.unmodifiableList(this.i);
                this.b &= -65;
            }
            protoBuf$Expression.l = this.i;
            protoBuf$Expression.f9475e = i2;
            return protoBuf$Expression;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b f() {
            return n().h(l());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Expression protoBuf$Expression) {
            if (protoBuf$Expression == ProtoBuf$Expression.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Expression.H()) {
                v(protoBuf$Expression.A());
            }
            if (protoBuf$Expression.K()) {
                x(protoBuf$Expression.F());
            }
            if (protoBuf$Expression.G()) {
                u(protoBuf$Expression.z());
            }
            if (protoBuf$Expression.I()) {
                t(protoBuf$Expression.B());
            }
            if (protoBuf$Expression.J()) {
                w(protoBuf$Expression.C());
            }
            if (!protoBuf$Expression.k.isEmpty()) {
                if (this.h.isEmpty()) {
                    this.h = protoBuf$Expression.k;
                    this.b &= -33;
                } else {
                    o();
                    this.h.addAll(protoBuf$Expression.k);
                }
            }
            if (!protoBuf$Expression.l.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$Expression.l;
                    this.b &= -65;
                } else {
                    p();
                    this.i.addAll(protoBuf$Expression.l);
                }
            }
            i(g().c(protoBuf$Expression.f9474d));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression$b");
        }

        public b t(ProtoBuf$Type protoBuf$Type) {
            if ((this.b & 8) != 8 || this.f9483f == ProtoBuf$Type.getDefaultInstance()) {
                this.f9483f = protoBuf$Type;
            } else {
                this.f9483f = ProtoBuf$Type.newBuilder(this.f9483f).h(protoBuf$Type).p();
            }
            this.b |= 8;
            return this;
        }

        public b u(ConstantValue constantValue) {
            Objects.requireNonNull(constantValue);
            this.b |= 4;
            this.f9482e = constantValue;
            return this;
        }

        public b v(int i) {
            this.b |= 1;
            this.c = i;
            return this;
        }

        public b w(int i) {
            this.b |= 16;
            this.f9484g = i;
            return this;
        }

        public b x(int i) {
            this.b |= 2;
            this.f9481d = i;
            return this;
        }
    }

    static {
        ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression(true);
        b = protoBuf$Expression;
        protoBuf$Expression.L();
    }

    private ProtoBuf$Expression(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.m = (byte) -1;
        this.n = -1;
        L();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    if (iG != 0) {
                        if (iG == 8) {
                            this.f9475e |= 1;
                            this.f9476f = codedInputStream.p();
                        } else if (iG == 16) {
                            this.f9475e |= 2;
                            this.f9477g = codedInputStream.p();
                        } else if (iG == 24) {
                            int iK = codedInputStream.k();
                            ConstantValue constantValueValueOf = ConstantValue.valueOf(iK);
                            if (constantValueValueOf == null) {
                                codedOutputStreamNewInstance.G(iG);
                                codedOutputStreamNewInstance.G(iK);
                            } else {
                                this.f9475e |= 4;
                                this.h = constantValueValueOf;
                            }
                        } else if (iG == 34) {
                            ProtoBuf$Type.b builder = (this.f9475e & 8) == 8 ? this.i.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                            this.i = protoBuf$Type;
                            if (builder != null) {
                                builder.h(protoBuf$Type);
                                this.i = builder.p();
                            }
                            this.f9475e |= 8;
                        } else if (iG == 40) {
                            this.f9475e |= 16;
                            this.j = codedInputStream.p();
                        } else if (iG == 50) {
                            if ((i & 32) != 32) {
                                this.k = new ArrayList();
                                i |= 32;
                            }
                            this.k.add((ProtoBuf$Expression) codedInputStream.r(c, extensionRegistryLite));
                        } else if (iG == 58) {
                            if ((i & 64) != 64) {
                                this.l = new ArrayList();
                                i |= 64;
                            }
                            this.l.add((ProtoBuf$Expression) codedInputStream.r(c, extensionRegistryLite));
                        } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 32) == 32) {
                        this.k = Collections.unmodifiableList(this.k);
                    }
                    if ((i & 64) == 64) {
                        this.l = Collections.unmodifiableList(this.l);
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9474d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9474d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            } catch (d e2) {
                throw e2.k(this);
            } catch (IOException e3) {
                throw new d(e3.getMessage()).k(this);
            }
        }
        if ((i & 32) == 32) {
            this.k = Collections.unmodifiableList(this.k);
        }
        if ((i & 64) == 64) {
            this.l = Collections.unmodifiableList(this.l);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9474d = bVarNewOutput.f();
            throw th3;
        }
        this.f9474d = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$Expression(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.m = (byte) -1;
        this.n = -1;
        this.f9474d = bVar.g();
    }

    private ProtoBuf$Expression(boolean z) {
        this.m = (byte) -1;
        this.n = -1;
        this.f9474d = ByteString.a;
    }

    private void L() {
        this.f9476f = 0;
        this.f9477g = 0;
        this.h = ConstantValue.TRUE;
        this.i = ProtoBuf$Type.getDefaultInstance();
        this.j = 0;
        this.k = Collections.emptyList();
        this.l = Collections.emptyList();
    }

    public static ProtoBuf$Expression getDefaultInstance() {
        return b;
    }

    public static b newBuilder() {
        return b.n();
    }

    public static b newBuilder(ProtoBuf$Expression protoBuf$Expression) {
        return newBuilder().h(protoBuf$Expression);
    }

    public int A() {
        return this.f9476f;
    }

    public ProtoBuf$Type B() {
        return this.i;
    }

    public int C() {
        return this.j;
    }

    public ProtoBuf$Expression D(int i) {
        return this.l.get(i);
    }

    public int E() {
        return this.l.size();
    }

    public int F() {
        return this.f9477g;
    }

    public boolean G() {
        return (this.f9475e & 4) == 4;
    }

    public boolean H() {
        return (this.f9475e & 1) == 1;
    }

    public boolean I() {
        return (this.f9475e & 8) == 8;
    }

    public boolean J() {
        return (this.f9475e & 16) == 16;
    }

    public boolean K() {
        return (this.f9475e & 2) == 2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if ((this.f9475e & 1) == 1) {
            codedOutputStream.s(1, this.f9476f);
        }
        if ((this.f9475e & 2) == 2) {
            codedOutputStream.s(2, this.f9477g);
        }
        if ((this.f9475e & 4) == 4) {
            codedOutputStream.k(3, this.h.getNumber());
        }
        if ((this.f9475e & 8) == 8) {
            codedOutputStream.v(4, this.i);
        }
        if ((this.f9475e & 16) == 16) {
            codedOutputStream.s(5, this.j);
        }
        for (int i = 0; i < this.k.size(); i++) {
            codedOutputStream.v(6, this.k.get(i));
        }
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            codedOutputStream.v(7, this.l.get(i2));
        }
        codedOutputStream.A(this.f9474d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Expression> getParserForType() {
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.n;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9475e & 1) == 1 ? CodedOutputStream.computeInt32Size(1, this.f9476f) + 0 : 0;
        if ((this.f9475e & 2) == 2) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.f9477g);
        }
        if ((this.f9475e & 4) == 4) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(3, this.h.getNumber());
        }
        if ((this.f9475e & 8) == 8) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(4, this.i);
        }
        if ((this.f9475e & 16) == 16) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(5, this.j);
        }
        for (int i2 = 0; i2 < this.k.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(6, this.k.get(i2));
        }
        for (int i3 = 0; i3 < this.l.size(); i3++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(7, this.l.get(i3));
        }
        int size = iComputeInt32Size + this.f9474d.size();
        this.n = size;
        return size;
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
        if (I() && !B().isInitialized()) {
            this.m = (byte) 0;
            return false;
        }
        for (int i = 0; i < y(); i++) {
            if (!x(i).isInitialized()) {
                this.m = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < E(); i2++) {
            if (!D(i2).isInitialized()) {
                this.m = (byte) 0;
                return false;
            }
        }
        this.m = (byte) 1;
        return true;
    }

    public ProtoBuf$Expression x(int i) {
        return this.k.get(i);
    }

    public int y() {
        return this.k.size();
    }

    public ConstantValue z() {
        return this.h;
    }
}
