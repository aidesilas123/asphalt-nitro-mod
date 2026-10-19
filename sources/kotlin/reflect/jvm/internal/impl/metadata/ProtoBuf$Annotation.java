package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
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
public final class ProtoBuf$Annotation extends GeneratedMessageLite implements k {
    private static final ProtoBuf$Annotation b;
    public static l<ProtoBuf$Annotation> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9410e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9411f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<Argument> f9412g;
    private byte h;
    private int i;

    public static final class Argument extends GeneratedMessageLite implements k {
        private static final Argument b;
        public static l<Argument> c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ByteString f9413d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9414e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9415f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Value f9416g;
        private byte h;
        private int i;

        public static final class Value extends GeneratedMessageLite implements k {
            private static final Value b;
            public static l<Value> c = new a();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final ByteString f9417d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f9418e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private Type f9419f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private long f9420g;
            private float h;
            private double i;
            private int j;
            private int k;
            private int l;
            private ProtoBuf$Annotation m;
            private List<Value> n;
            private int o;
            private int p;
            private byte q;
            private int r;

            public enum Type implements Internal.a {
                BYTE(0, 0),
                CHAR(1, 1),
                SHORT(2, 2),
                INT(3, 3),
                LONG(4, 4),
                FLOAT(5, 5),
                DOUBLE(6, 6),
                BOOLEAN(7, 7),
                STRING(8, 8),
                CLASS(9, 9),
                ENUM(10, 10),
                ANNOTATION(11, 11),
                ARRAY(12, 12);

                private static Internal.b<Type> n = new a();
                private final int p;

                static class a implements Internal.b<Type> {
                    a() {
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Type findValueByNumber(int i) {
                        return Type.valueOf(i);
                    }
                }

                Type(int i, int i2) {
                    this.p = i2;
                }

                public static Type valueOf(int i) {
                    switch (i) {
                        case 0:
                            return BYTE;
                        case 1:
                            return CHAR;
                        case 2:
                            return SHORT;
                        case 3:
                            return INT;
                        case 4:
                            return LONG;
                        case 5:
                            return FLOAT;
                        case 6:
                            return DOUBLE;
                        case 7:
                            return BOOLEAN;
                        case 8:
                            return STRING;
                        case 9:
                            return CLASS;
                        case 10:
                            return ENUM;
                        case 11:
                            return ANNOTATION;
                        case 12:
                            return ARRAY;
                        default:
                            return null;
                    }
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
                public final int getNumber() {
                    return this.p;
                }
            }

            static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<Value> {
                a() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
                /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
                public Value c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                    return new Value(codedInputStream, extensionRegistryLite);
                }
            }

            public static final class b extends GeneratedMessageLite.b<Value, b> implements k {
                private int b;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private long f9425d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private float f9426e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                private double f9427f;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                private int f9428g;
                private int h;
                private int i;
                private int l;
                private int m;
                private Type c = Type.BYTE;
                private ProtoBuf$Annotation j = ProtoBuf$Annotation.getDefaultInstance();
                private List<Value> k = Collections.emptyList();

                private b() {
                    p();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static b n() {
                    return new b();
                }

                private void o() {
                    if ((this.b & 256) != 256) {
                        this.k = new ArrayList(this.k);
                        this.b |= 256;
                    }
                }

                private void p() {
                }

                public b A(int i) {
                    this.b |= 16;
                    this.f9428g = i;
                    return this;
                }

                public b B(Type type) {
                    Objects.requireNonNull(type);
                    this.b |= 1;
                    this.c = type;
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
                /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
                public Value build() {
                    Value valueL = l();
                    if (valueL.isInitialized()) {
                        return valueL;
                    }
                    throw a.AbstractC0539a.e(valueL);
                }

                public Value l() {
                    Value value = new Value(this);
                    int i = this.b;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    value.f9419f = this.c;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    value.f9420g = this.f9425d;
                    if ((i & 4) == 4) {
                        i2 |= 4;
                    }
                    value.h = this.f9426e;
                    if ((i & 8) == 8) {
                        i2 |= 8;
                    }
                    value.i = this.f9427f;
                    if ((i & 16) == 16) {
                        i2 |= 16;
                    }
                    value.j = this.f9428g;
                    if ((i & 32) == 32) {
                        i2 |= 32;
                    }
                    value.k = this.h;
                    if ((i & 64) == 64) {
                        i2 |= 64;
                    }
                    value.l = this.i;
                    if ((i & 128) == 128) {
                        i2 |= 128;
                    }
                    value.m = this.j;
                    if ((this.b & 256) == 256) {
                        this.k = Collections.unmodifiableList(this.k);
                        this.b &= -257;
                    }
                    value.n = this.k;
                    if ((i & 512) == 512) {
                        i2 |= 256;
                    }
                    value.o = this.l;
                    if ((i & 1024) == 1024) {
                        i2 |= 512;
                    }
                    value.p = this.m;
                    value.f9418e = i2;
                    return value;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
                /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
                public b f() {
                    return n().h(l());
                }

                public b q(ProtoBuf$Annotation protoBuf$Annotation) {
                    if ((this.b & 128) != 128 || this.j == ProtoBuf$Annotation.getDefaultInstance()) {
                        this.j = protoBuf$Annotation;
                    } else {
                        this.j = ProtoBuf$Annotation.newBuilder(this.j).h(protoBuf$Annotation).l();
                    }
                    this.b |= 128;
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
                /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
                public b h(Value value) {
                    if (value == Value.getDefaultInstance()) {
                        return this;
                    }
                    if (value.W()) {
                        B(value.M());
                    }
                    if (value.U()) {
                        z(value.K());
                    }
                    if (value.T()) {
                        y(value.J());
                    }
                    if (value.Q()) {
                        v(value.G());
                    }
                    if (value.V()) {
                        A(value.L());
                    }
                    if (value.P()) {
                        u(value.F());
                    }
                    if (value.R()) {
                        w(value.H());
                    }
                    if (value.N()) {
                        q(value.A());
                    }
                    if (!value.n.isEmpty()) {
                        if (this.k.isEmpty()) {
                            this.k = value.n;
                            this.b &= -257;
                        } else {
                            o();
                            this.k.addAll(value.n);
                        }
                    }
                    if (value.O()) {
                        t(value.B());
                    }
                    if (value.S()) {
                        x(value.I());
                    }
                    i(g().c(value.f9417d));
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
                /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.Value.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                    /*
                        r2 = this;
                        r0 = 0
                        kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.Value.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                        java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                        kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.Value) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                        kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.Value) r4     // Catch: java.lang.Throwable -> Lf
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
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.Value.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$Value$b");
                }

                public b t(int i) {
                    this.b |= 512;
                    this.l = i;
                    return this;
                }

                public b u(int i) {
                    this.b |= 32;
                    this.h = i;
                    return this;
                }

                public b v(double d2) {
                    this.b |= 8;
                    this.f9427f = d2;
                    return this;
                }

                public b w(int i) {
                    this.b |= 64;
                    this.i = i;
                    return this;
                }

                public b x(int i) {
                    this.b |= 1024;
                    this.m = i;
                    return this;
                }

                public b y(float f2) {
                    this.b |= 4;
                    this.f9426e = f2;
                    return this;
                }

                public b z(long j) {
                    this.b |= 2;
                    this.f9425d = j;
                    return this;
                }
            }

            static {
                Value value = new Value(true);
                b = value;
                value.X();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r5v0 */
            /* JADX WARN: Type inference failed for: r5v1 */
            /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
            private Value(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                this.q = (byte) -1;
                this.r = -1;
                X();
                ByteString.b bVarNewOutput = ByteString.newOutput();
                CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
                boolean z = false;
                int i = 0;
                while (true) {
                    ?? I = 256;
                    if (z) {
                        if ((i & 256) == 256) {
                            this.n = Collections.unmodifiableList(this.n);
                        }
                        try {
                            codedOutputStreamNewInstance.b();
                        } catch (IOException unused) {
                        } catch (Throwable th) {
                            this.f9417d = bVarNewOutput.f();
                            throw th;
                        }
                        this.f9417d = bVarNewOutput.f();
                        h();
                        return;
                    }
                    try {
                        try {
                            int iG = codedInputStream.G();
                            switch (iG) {
                                case 0:
                                    z = true;
                                    break;
                                case 8:
                                    int iK = codedInputStream.k();
                                    Type typeValueOf = Type.valueOf(iK);
                                    if (typeValueOf == null) {
                                        codedOutputStreamNewInstance.G(iG);
                                        codedOutputStreamNewInstance.G(iK);
                                    } else {
                                        this.f9418e |= 1;
                                        this.f9419f = typeValueOf;
                                    }
                                    break;
                                case 16:
                                    this.f9418e |= 2;
                                    this.f9420g = codedInputStream.D();
                                    break;
                                case 29:
                                    this.f9418e |= 4;
                                    this.h = codedInputStream.n();
                                    break;
                                case 33:
                                    this.f9418e |= 8;
                                    this.i = codedInputStream.j();
                                    break;
                                case 40:
                                    this.f9418e |= 16;
                                    this.j = codedInputStream.p();
                                    break;
                                case 48:
                                    this.f9418e |= 32;
                                    this.k = codedInputStream.p();
                                    break;
                                case 56:
                                    this.f9418e |= 64;
                                    this.l = codedInputStream.p();
                                    break;
                                case 66:
                                    b builder = (this.f9418e & 128) == 128 ? this.m.toBuilder() : null;
                                    ProtoBuf$Annotation protoBuf$Annotation = (ProtoBuf$Annotation) codedInputStream.r(ProtoBuf$Annotation.c, extensionRegistryLite);
                                    this.m = protoBuf$Annotation;
                                    if (builder != null) {
                                        builder.h(protoBuf$Annotation);
                                        this.m = builder.l();
                                    }
                                    this.f9418e |= 128;
                                    break;
                                case 74:
                                    if ((i & 256) != 256) {
                                        this.n = new ArrayList();
                                        i |= 256;
                                    }
                                    this.n.add((Value) codedInputStream.r(c, extensionRegistryLite));
                                    break;
                                case 80:
                                    this.f9418e |= 512;
                                    this.p = codedInputStream.p();
                                    break;
                                case 88:
                                    this.f9418e |= 256;
                                    this.o = codedInputStream.p();
                                    break;
                                default:
                                    I = i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG);
                                    if (I == 0) {
                                        z = true;
                                    }
                                    break;
                            }
                        } catch (Throwable th2) {
                            if ((i & 256) == I) {
                                this.n = Collections.unmodifiableList(this.n);
                            }
                            try {
                                codedOutputStreamNewInstance.b();
                            } catch (IOException unused2) {
                            } catch (Throwable th3) {
                                this.f9417d = bVarNewOutput.f();
                                throw th3;
                            }
                            this.f9417d = bVarNewOutput.f();
                            h();
                            throw th2;
                        }
                    } catch (d e2) {
                        throw e2.k(this);
                    } catch (IOException e3) {
                        throw new d(e3.getMessage()).k(this);
                    }
                }
            }

            private Value(GeneratedMessageLite.b bVar) {
                super(bVar);
                this.q = (byte) -1;
                this.r = -1;
                this.f9417d = bVar.g();
            }

            private Value(boolean z) {
                this.q = (byte) -1;
                this.r = -1;
                this.f9417d = ByteString.a;
            }

            private void X() {
                this.f9419f = Type.BYTE;
                this.f9420g = 0L;
                this.h = 0.0f;
                this.i = 0.0d;
                this.j = 0;
                this.k = 0;
                this.l = 0;
                this.m = ProtoBuf$Annotation.getDefaultInstance();
                this.n = Collections.emptyList();
                this.o = 0;
                this.p = 0;
            }

            public static Value getDefaultInstance() {
                return b;
            }

            public static b newBuilder() {
                return b.n();
            }

            public static b newBuilder(Value value) {
                return newBuilder().h(value);
            }

            public ProtoBuf$Annotation A() {
                return this.m;
            }

            public int B() {
                return this.o;
            }

            public Value C(int i) {
                return this.n.get(i);
            }

            public int D() {
                return this.n.size();
            }

            public List<Value> E() {
                return this.n;
            }

            public int F() {
                return this.k;
            }

            public double G() {
                return this.i;
            }

            public int H() {
                return this.l;
            }

            public int I() {
                return this.p;
            }

            public float J() {
                return this.h;
            }

            public long K() {
                return this.f9420g;
            }

            public int L() {
                return this.j;
            }

            public Type M() {
                return this.f9419f;
            }

            public boolean N() {
                return (this.f9418e & 128) == 128;
            }

            public boolean O() {
                return (this.f9418e & 256) == 256;
            }

            public boolean P() {
                return (this.f9418e & 32) == 32;
            }

            public boolean Q() {
                return (this.f9418e & 8) == 8;
            }

            public boolean R() {
                return (this.f9418e & 64) == 64;
            }

            public boolean S() {
                return (this.f9418e & 512) == 512;
            }

            public boolean T() {
                return (this.f9418e & 4) == 4;
            }

            public boolean U() {
                return (this.f9418e & 2) == 2;
            }

            public boolean V() {
                return (this.f9418e & 16) == 16;
            }

            public boolean W() {
                return (this.f9418e & 1) == 1;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
            /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
            public b newBuilderForType() {
                return newBuilder();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
            /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
            public b toBuilder() {
                return newBuilder(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
            public void b(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if ((this.f9418e & 1) == 1) {
                    codedOutputStream.k(1, this.f9419f.getNumber());
                }
                if ((this.f9418e & 2) == 2) {
                    codedOutputStream.L(2, this.f9420g);
                }
                if ((this.f9418e & 4) == 4) {
                    codedOutputStream.o(3, this.h);
                }
                if ((this.f9418e & 8) == 8) {
                    codedOutputStream.i(4, this.i);
                }
                if ((this.f9418e & 16) == 16) {
                    codedOutputStream.s(5, this.j);
                }
                if ((this.f9418e & 32) == 32) {
                    codedOutputStream.s(6, this.k);
                }
                if ((this.f9418e & 64) == 64) {
                    codedOutputStream.s(7, this.l);
                }
                if ((this.f9418e & 128) == 128) {
                    codedOutputStream.v(8, this.m);
                }
                for (int i = 0; i < this.n.size(); i++) {
                    codedOutputStream.v(9, this.n.get(i));
                }
                if ((this.f9418e & 512) == 512) {
                    codedOutputStream.s(10, this.p);
                }
                if ((this.f9418e & 256) == 256) {
                    codedOutputStream.s(11, this.o);
                }
                codedOutputStream.A(this.f9417d);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
            public l<Value> getParserForType() {
                return c;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
            public int getSerializedSize() {
                int i = this.r;
                if (i != -1) {
                    return i;
                }
                int iComputeEnumSize = (this.f9418e & 1) == 1 ? CodedOutputStream.computeEnumSize(1, this.f9419f.getNumber()) + 0 : 0;
                if ((this.f9418e & 2) == 2) {
                    iComputeEnumSize += CodedOutputStream.computeSInt64Size(2, this.f9420g);
                }
                if ((this.f9418e & 4) == 4) {
                    iComputeEnumSize += CodedOutputStream.computeFloatSize(3, this.h);
                }
                if ((this.f9418e & 8) == 8) {
                    iComputeEnumSize += CodedOutputStream.computeDoubleSize(4, this.i);
                }
                if ((this.f9418e & 16) == 16) {
                    iComputeEnumSize += CodedOutputStream.computeInt32Size(5, this.j);
                }
                if ((this.f9418e & 32) == 32) {
                    iComputeEnumSize += CodedOutputStream.computeInt32Size(6, this.k);
                }
                if ((this.f9418e & 64) == 64) {
                    iComputeEnumSize += CodedOutputStream.computeInt32Size(7, this.l);
                }
                if ((this.f9418e & 128) == 128) {
                    iComputeEnumSize += CodedOutputStream.computeMessageSize(8, this.m);
                }
                for (int i2 = 0; i2 < this.n.size(); i2++) {
                    iComputeEnumSize += CodedOutputStream.computeMessageSize(9, this.n.get(i2));
                }
                if ((this.f9418e & 512) == 512) {
                    iComputeEnumSize += CodedOutputStream.computeInt32Size(10, this.p);
                }
                if ((this.f9418e & 256) == 256) {
                    iComputeEnumSize += CodedOutputStream.computeInt32Size(11, this.o);
                }
                int size = iComputeEnumSize + this.f9417d.size();
                this.r = size;
                return size;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
            public final boolean isInitialized() {
                byte b2 = this.q;
                if (b2 == 1) {
                    return true;
                }
                if (b2 == 0) {
                    return false;
                }
                if (N() && !A().isInitialized()) {
                    this.q = (byte) 0;
                    return false;
                }
                for (int i = 0; i < D(); i++) {
                    if (!C(i).isInitialized()) {
                        this.q = (byte) 0;
                        return false;
                    }
                }
                this.q = (byte) 1;
                return true;
            }
        }

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<Argument> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public Argument c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                return new Argument(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class b extends GeneratedMessageLite.b<Argument, b> implements k {
            private int b;
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private Value f9429d = Value.getDefaultInstance();

            private b() {
                o();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b n() {
                return new b();
            }

            private void o() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public Argument build() {
                Argument argumentL = l();
                if (argumentL.isInitialized()) {
                    return argumentL;
                }
                throw a.AbstractC0539a.e(argumentL);
            }

            public Argument l() {
                Argument argument = new Argument(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                argument.f9415f = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                argument.f9416g = this.f9429d;
                argument.f9414e = i2;
                return argument;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public b f() {
                return n().h(l());
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
            public b h(Argument argument) {
                if (argument == Argument.getDefaultInstance()) {
                    return this;
                }
                if (argument.s()) {
                    s(argument.q());
                }
                if (argument.t()) {
                    r(argument.r());
                }
                i(g().c(argument.f9413d));
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
            /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.Argument.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.Argument) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.Argument) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Annotation.Argument.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$Argument$b");
            }

            public b r(Value value) {
                if ((this.b & 2) != 2 || this.f9429d == Value.getDefaultInstance()) {
                    this.f9429d = value;
                } else {
                    this.f9429d = Value.newBuilder(this.f9429d).h(value).l();
                }
                this.b |= 2;
                return this;
            }

            public b s(int i) {
                this.b |= 1;
                this.c = i;
                return this;
            }
        }

        static {
            Argument argument = new Argument(true);
            b = argument;
            argument.u();
        }

        private Argument(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            this.h = (byte) -1;
            this.i = -1;
            u();
            ByteString.b bVarNewOutput = ByteString.newOutput();
            CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iG = codedInputStream.G();
                        if (iG != 0) {
                            if (iG == 8) {
                                this.f9414e |= 1;
                                this.f9415f = codedInputStream.p();
                            } else if (iG == 18) {
                                Value.b builder = (this.f9414e & 2) == 2 ? this.f9416g.toBuilder() : null;
                                Value value = (Value) codedInputStream.r(Value.c, extensionRegistryLite);
                                this.f9416g = value;
                                if (builder != null) {
                                    builder.h(value);
                                    this.f9416g = builder.l();
                                }
                                this.f9414e |= 2;
                            } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
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
                        this.f9413d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9413d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            }
            try {
                codedOutputStreamNewInstance.b();
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                this.f9413d = bVarNewOutput.f();
                throw th3;
            }
            this.f9413d = bVarNewOutput.f();
            h();
        }

        private Argument(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.h = (byte) -1;
            this.i = -1;
            this.f9413d = bVar.g();
        }

        private Argument(boolean z) {
            this.h = (byte) -1;
            this.i = -1;
            this.f9413d = ByteString.a;
        }

        public static Argument getDefaultInstance() {
            return b;
        }

        public static b newBuilder() {
            return b.n();
        }

        public static b newBuilder(Argument argument) {
            return newBuilder().h(argument);
        }

        private void u() {
            this.f9415f = 0;
            this.f9416g = Value.getDefaultInstance();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public void b(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.f9414e & 1) == 1) {
                codedOutputStream.s(1, this.f9415f);
            }
            if ((this.f9414e & 2) == 2) {
                codedOutputStream.v(2, this.f9416g);
            }
            codedOutputStream.A(this.f9413d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
        public l<Argument> getParserForType() {
            return c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public int getSerializedSize() {
            int i = this.i;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.f9414e & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.f9415f) : 0;
            if ((this.f9414e & 2) == 2) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(2, this.f9416g);
            }
            int size = iComputeInt32Size + this.f9413d.size();
            this.i = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
        public final boolean isInitialized() {
            byte b2 = this.h;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!s()) {
                this.h = (byte) 0;
                return false;
            }
            if (!t()) {
                this.h = (byte) 0;
                return false;
            }
            if (r().isInitialized()) {
                this.h = (byte) 1;
                return true;
            }
            this.h = (byte) 0;
            return false;
        }

        public int q() {
            return this.f9415f;
        }

        public Value r() {
            return this.f9416g;
        }

        public boolean s() {
            return (this.f9414e & 1) == 1;
        }

        public boolean t() {
            return (this.f9414e & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b newBuilderForType() {
            return newBuilder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public b toBuilder() {
            return newBuilder(this);
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Annotation> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Annotation c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Annotation(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$Annotation, b> implements k {
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<Argument> f9430d = Collections.emptyList();

        private b() {
            p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b n() {
            return new b();
        }

        private void o() {
            if ((this.b & 2) != 2) {
                this.f9430d = new ArrayList(this.f9430d);
                this.b |= 2;
            }
        }

        private void p() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Annotation build() {
            ProtoBuf$Annotation protoBuf$AnnotationL = l();
            if (protoBuf$AnnotationL.isInitialized()) {
                return protoBuf$AnnotationL;
            }
            throw a.AbstractC0539a.e(protoBuf$AnnotationL);
        }

        public ProtoBuf$Annotation l() {
            ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation(this);
            int i = (this.b & 1) != 1 ? 0 : 1;
            protoBuf$Annotation.f9411f = this.c;
            if ((this.b & 2) == 2) {
                this.f9430d = Collections.unmodifiableList(this.f9430d);
                this.b &= -3;
            }
            protoBuf$Annotation.f9412g = this.f9430d;
            protoBuf$Annotation.f9410e = i;
            return protoBuf$Annotation;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b f() {
            return n().h(l());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Annotation protoBuf$Annotation) {
            if (protoBuf$Annotation == ProtoBuf$Annotation.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Annotation.v()) {
                s(protoBuf$Annotation.u());
            }
            if (!protoBuf$Annotation.f9412g.isEmpty()) {
                if (this.f9430d.isEmpty()) {
                    this.f9430d = protoBuf$Annotation.f9412g;
                    this.b &= -3;
                } else {
                    o();
                    this.f9430d.addAll(protoBuf$Annotation.f9412g);
                }
            }
            i(g().c(protoBuf$Annotation.f9409d));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation$b");
        }

        public b s(int i) {
            this.b |= 1;
            this.c = i;
            return this;
        }
    }

    static {
        ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation(true);
        b = protoBuf$Annotation;
        protoBuf$Annotation.w();
    }

    private ProtoBuf$Annotation(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.h = (byte) -1;
        this.i = -1;
        w();
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
                            this.f9410e |= 1;
                            this.f9411f = codedInputStream.p();
                        } else if (iG == 18) {
                            if ((i & 2) != 2) {
                                this.f9412g = new ArrayList();
                                i |= 2;
                            }
                            this.f9412g.add((Argument) codedInputStream.r(Argument.c, extensionRegistryLite));
                        } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 2) == 2) {
                        this.f9412g = Collections.unmodifiableList(this.f9412g);
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9409d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9409d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            } catch (d e2) {
                throw e2.k(this);
            } catch (IOException e3) {
                throw new d(e3.getMessage()).k(this);
            }
        }
        if ((i & 2) == 2) {
            this.f9412g = Collections.unmodifiableList(this.f9412g);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9409d = bVarNewOutput.f();
            throw th3;
        }
        this.f9409d = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$Annotation(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.h = (byte) -1;
        this.i = -1;
        this.f9409d = bVar.g();
    }

    private ProtoBuf$Annotation(boolean z) {
        this.h = (byte) -1;
        this.i = -1;
        this.f9409d = ByteString.a;
    }

    public static ProtoBuf$Annotation getDefaultInstance() {
        return b;
    }

    public static b newBuilder() {
        return b.n();
    }

    public static b newBuilder(ProtoBuf$Annotation protoBuf$Annotation) {
        return newBuilder().h(protoBuf$Annotation);
    }

    private void w() {
        this.f9411f = 0;
        this.f9412g = Collections.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if ((this.f9410e & 1) == 1) {
            codedOutputStream.s(1, this.f9411f);
        }
        for (int i = 0; i < this.f9412g.size(); i++) {
            codedOutputStream.v(2, this.f9412g.get(i));
        }
        codedOutputStream.A(this.f9409d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Annotation> getParserForType() {
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.i;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9410e & 1) == 1 ? CodedOutputStream.computeInt32Size(1, this.f9411f) + 0 : 0;
        for (int i2 = 0; i2 < this.f9412g.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(2, this.f9412g.get(i2));
        }
        int size = iComputeInt32Size + this.f9409d.size();
        this.i = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.h;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (!v()) {
            this.h = (byte) 0;
            return false;
        }
        for (int i = 0; i < s(); i++) {
            if (!r(i).isInitialized()) {
                this.h = (byte) 0;
                return false;
            }
        }
        this.h = (byte) 1;
        return true;
    }

    public Argument r(int i) {
        return this.f9412g.get(i);
    }

    public int s() {
        return this.f9412g.size();
    }

    public List<Argument> t() {
        return this.f9412g;
    }

    public int u() {
        return this.f9411f;
    }

    public boolean v() {
        return (this.f9410e & 1) == 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }
}
