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
public final class ProtoBuf$Type extends GeneratedMessageLite.d<ProtoBuf$Type> implements k {
    private static final ProtoBuf$Type c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$Type> f9542d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<Argument> f9545g;
    private boolean h;
    private int i;
    private ProtoBuf$Type j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private ProtoBuf$Type p;
    private int q;
    private ProtoBuf$Type r;
    private int s;
    private int t;
    private byte u;
    private int v;

    public static final class Argument extends GeneratedMessageLite implements k {
        private static final Argument b;
        public static l<Argument> c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ByteString f9546d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9547e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Projection f9548f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ProtoBuf$Type f9549g;
        private int h;
        private byte i;
        private int j;

        public enum Projection implements Internal.a {
            IN(0, 0),
            OUT(1, 1),
            INV(2, 2),
            STAR(3, 3);


            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private static Internal.b<Projection> f9551e = new a();

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private final int f9553g;

            static class a implements Internal.b<Projection> {
                a() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Projection findValueByNumber(int i) {
                    return Projection.valueOf(i);
                }
            }

            Projection(int i, int i2) {
                this.f9553g = i2;
            }

            public static Projection valueOf(int i) {
                if (i == 0) {
                    return IN;
                }
                if (i == 1) {
                    return OUT;
                }
                if (i == 2) {
                    return INV;
                }
                if (i != 3) {
                    return null;
                }
                return STAR;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
            public final int getNumber() {
                return this.f9553g;
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
            private Projection c = Projection.INV;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private ProtoBuf$Type f9554d = ProtoBuf$Type.getDefaultInstance();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f9555e;

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
                argument.f9548f = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                argument.f9549g = this.f9554d;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                argument.h = this.f9555e;
                argument.f9547e = i2;
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
                if (argument.u()) {
                    s(argument.r());
                }
                if (argument.v()) {
                    r(argument.s());
                }
                if (argument.w()) {
                    t(argument.t());
                }
                i(g().c(argument.f9546d));
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
            /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Type.Argument.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Argument.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Argument) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Argument) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Type.Argument.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument$b");
            }

            public b r(ProtoBuf$Type protoBuf$Type) {
                if ((this.b & 2) != 2 || this.f9554d == ProtoBuf$Type.getDefaultInstance()) {
                    this.f9554d = protoBuf$Type;
                } else {
                    this.f9554d = ProtoBuf$Type.newBuilder(this.f9554d).h(protoBuf$Type).p();
                }
                this.b |= 2;
                return this;
            }

            public b s(Projection projection) {
                Objects.requireNonNull(projection);
                this.b |= 1;
                this.c = projection;
                return this;
            }

            public b t(int i) {
                this.b |= 4;
                this.f9555e = i;
                return this;
            }
        }

        static {
            Argument argument = new Argument(true);
            b = argument;
            argument.x();
        }

        private Argument(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            this.i = (byte) -1;
            this.j = -1;
            x();
            ByteString.b bVarNewOutput = ByteString.newOutput();
            CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int iG = codedInputStream.G();
                            if (iG != 0) {
                                if (iG == 8) {
                                    int iK = codedInputStream.k();
                                    Projection projectionValueOf = Projection.valueOf(iK);
                                    if (projectionValueOf == null) {
                                        codedOutputStreamNewInstance.G(iG);
                                        codedOutputStreamNewInstance.G(iK);
                                    } else {
                                        this.f9547e |= 1;
                                        this.f9548f = projectionValueOf;
                                    }
                                } else if (iG == 18) {
                                    b builder = (this.f9547e & 2) == 2 ? this.f9549g.toBuilder() : null;
                                    ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite);
                                    this.f9549g = protoBuf$Type;
                                    if (builder != null) {
                                        builder.h(protoBuf$Type);
                                        this.f9549g = builder.p();
                                    }
                                    this.f9547e |= 2;
                                } else if (iG == 24) {
                                    this.f9547e |= 4;
                                    this.h = codedInputStream.p();
                                } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                                }
                            }
                            z = true;
                        } catch (d e2) {
                            throw e2.k(this);
                        }
                    } catch (IOException e3) {
                        throw new d(e3.getMessage()).k(this);
                    }
                } catch (Throwable th) {
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9546d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9546d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            }
            try {
                codedOutputStreamNewInstance.b();
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                this.f9546d = bVarNewOutput.f();
                throw th3;
            }
            this.f9546d = bVarNewOutput.f();
            h();
        }

        private Argument(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.i = (byte) -1;
            this.j = -1;
            this.f9546d = bVar.g();
        }

        private Argument(boolean z) {
            this.i = (byte) -1;
            this.j = -1;
            this.f9546d = ByteString.a;
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

        private void x() {
            this.f9548f = Projection.INV;
            this.f9549g = ProtoBuf$Type.getDefaultInstance();
            this.h = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public void b(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.f9547e & 1) == 1) {
                codedOutputStream.k(1, this.f9548f.getNumber());
            }
            if ((this.f9547e & 2) == 2) {
                codedOutputStream.v(2, this.f9549g);
            }
            if ((this.f9547e & 4) == 4) {
                codedOutputStream.s(3, this.h);
            }
            codedOutputStream.A(this.f9546d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
        public l<Argument> getParserForType() {
            return c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public int getSerializedSize() {
            int i = this.j;
            if (i != -1) {
                return i;
            }
            int iComputeEnumSize = (this.f9547e & 1) == 1 ? 0 + CodedOutputStream.computeEnumSize(1, this.f9548f.getNumber()) : 0;
            if ((this.f9547e & 2) == 2) {
                iComputeEnumSize += CodedOutputStream.computeMessageSize(2, this.f9549g);
            }
            if ((this.f9547e & 4) == 4) {
                iComputeEnumSize += CodedOutputStream.computeInt32Size(3, this.h);
            }
            int size = iComputeEnumSize + this.f9546d.size();
            this.j = size;
            return size;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
        public final boolean isInitialized() {
            byte b2 = this.i;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            if (!v() || s().isInitialized()) {
                this.i = (byte) 1;
                return true;
            }
            this.i = (byte) 0;
            return false;
        }

        public Projection r() {
            return this.f9548f;
        }

        public ProtoBuf$Type s() {
            return this.f9549g;
        }

        public int t() {
            return this.h;
        }

        public boolean u() {
            return (this.f9547e & 1) == 1;
        }

        public boolean v() {
            return (this.f9547e & 2) == 2;
        }

        public boolean w() {
            return (this.f9547e & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public b newBuilderForType() {
            return newBuilder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public b toBuilder() {
            return newBuilder(this);
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Type> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Type c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Type(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Type, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9556d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f9558f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9559g;
        private int i;
        private int j;
        private int k;
        private int l;
        private int m;
        private int o;
        private int q;
        private int r;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<Argument> f9557e = Collections.emptyList();
        private ProtoBuf$Type h = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type n = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type p = ProtoBuf$Type.getDefaultInstance();

        private b() {
            t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9556d & 1) != 1) {
                this.f9557e = new ArrayList(this.f9557e);
                this.f9556d |= 1;
            }
        }

        private void t() {
        }

        public b A(int i) {
            this.f9556d |= 32;
            this.j = i;
            return this;
        }

        public b B(int i) {
            this.f9556d |= 8192;
            this.r = i;
            return this;
        }

        public b C(int i) {
            this.f9556d |= 4;
            this.f9559g = i;
            return this;
        }

        public b D(int i) {
            this.f9556d |= 16;
            this.i = i;
            return this;
        }

        public b E(boolean z) {
            this.f9556d |= 2;
            this.f9558f = z;
            return this;
        }

        public b F(int i) {
            this.f9556d |= 1024;
            this.o = i;
            return this;
        }

        public b G(int i) {
            this.f9556d |= 256;
            this.m = i;
            return this;
        }

        public b H(int i) {
            this.f9556d |= 64;
            this.k = i;
            return this;
        }

        public b I(int i) {
            this.f9556d |= 128;
            this.l = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Type build() {
            ProtoBuf$Type protoBuf$TypeP = p();
            if (protoBuf$TypeP.isInitialized()) {
                return protoBuf$TypeP;
            }
            throw a.AbstractC0539a.e(protoBuf$TypeP);
        }

        public ProtoBuf$Type p() {
            ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(this);
            int i = this.f9556d;
            if ((i & 1) == 1) {
                this.f9557e = Collections.unmodifiableList(this.f9557e);
                this.f9556d &= -2;
            }
            protoBuf$Type.f9545g = this.f9557e;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$Type.h = this.f9558f;
            if ((i & 4) == 4) {
                i2 |= 2;
            }
            protoBuf$Type.i = this.f9559g;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$Type.j = this.h;
            if ((i & 16) == 16) {
                i2 |= 8;
            }
            protoBuf$Type.k = this.i;
            if ((i & 32) == 32) {
                i2 |= 16;
            }
            protoBuf$Type.l = this.j;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Type.m = this.k;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Type.n = this.l;
            if ((i & 256) == 256) {
                i2 |= 128;
            }
            protoBuf$Type.o = this.m;
            if ((i & 512) == 512) {
                i2 |= 256;
            }
            protoBuf$Type.p = this.n;
            if ((i & 1024) == 1024) {
                i2 |= 512;
            }
            protoBuf$Type.q = this.o;
            if ((i & 2048) == 2048) {
                i2 |= 1024;
            }
            protoBuf$Type.r = this.p;
            if ((i & 4096) == 4096) {
                i2 |= 2048;
            }
            protoBuf$Type.s = this.q;
            if ((i & 8192) == 8192) {
                i2 |= 4096;
            }
            protoBuf$Type.t = this.r;
            protoBuf$Type.f9544f = i2;
            return protoBuf$Type;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        public b u(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9556d & 2048) != 2048 || this.p == ProtoBuf$Type.getDefaultInstance()) {
                this.p = protoBuf$Type;
            } else {
                this.p = ProtoBuf$Type.newBuilder(this.p).h(protoBuf$Type).p();
            }
            this.f9556d |= 2048;
            return this;
        }

        public b v(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9556d & 8) != 8 || this.h == ProtoBuf$Type.getDefaultInstance()) {
                this.h = protoBuf$Type;
            } else {
                this.h = ProtoBuf$Type.newBuilder(this.h).h(protoBuf$Type).p();
            }
            this.f9556d |= 8;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Type protoBuf$Type) {
            if (protoBuf$Type == ProtoBuf$Type.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Type.f9545g.isEmpty()) {
                if (this.f9557e.isEmpty()) {
                    this.f9557e = protoBuf$Type.f9545g;
                    this.f9556d &= -2;
                } else {
                    s();
                    this.f9557e.addAll(protoBuf$Type.f9545g);
                }
            }
            if (protoBuf$Type.k0()) {
                E(protoBuf$Type.X());
            }
            if (protoBuf$Type.h0()) {
                C(protoBuf$Type.U());
            }
            if (protoBuf$Type.i0()) {
                v(protoBuf$Type.V());
            }
            if (protoBuf$Type.j0()) {
                D(protoBuf$Type.W());
            }
            if (protoBuf$Type.f0()) {
                A(protoBuf$Type.R());
            }
            if (protoBuf$Type.o0()) {
                H(protoBuf$Type.b0());
            }
            if (protoBuf$Type.p0()) {
                I(protoBuf$Type.c0());
            }
            if (protoBuf$Type.n0()) {
                G(protoBuf$Type.a0());
            }
            if (protoBuf$Type.l0()) {
                y(protoBuf$Type.Y());
            }
            if (protoBuf$Type.m0()) {
                F(protoBuf$Type.Z());
            }
            if (protoBuf$Type.d0()) {
                u(protoBuf$Type.M());
            }
            if (protoBuf$Type.e0()) {
                z(protoBuf$Type.N());
            }
            if (protoBuf$Type.g0()) {
                B(protoBuf$Type.T());
            }
            m(protoBuf$Type);
            i(g().c(protoBuf$Type.f9543e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.f9542d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$b");
        }

        public b y(ProtoBuf$Type protoBuf$Type) {
            if ((this.f9556d & 512) != 512 || this.n == ProtoBuf$Type.getDefaultInstance()) {
                this.n = protoBuf$Type;
            } else {
                this.n = ProtoBuf$Type.newBuilder(this.n).h(protoBuf$Type).p();
            }
            this.f9556d |= 512;
            return this;
        }

        public b z(int i) {
            this.f9556d |= 4096;
            this.q = i;
            return this;
        }
    }

    static {
        ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(true);
        c = protoBuf$Type;
        protoBuf$Type.q0();
    }

    private ProtoBuf$Type(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        b builder;
        this.u = (byte) -1;
        this.v = -1;
        q0();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    switch (iG) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.f9544f |= 4096;
                            this.t = codedInputStream.p();
                            break;
                        case 18:
                            if (!(z2 & true)) {
                                this.f9545g = new ArrayList();
                                z2 |= true;
                            }
                            this.f9545g.add((Argument) codedInputStream.r(Argument.c, extensionRegistryLite));
                            break;
                        case 24:
                            this.f9544f |= 1;
                            this.h = codedInputStream.h();
                            break;
                        case 32:
                            this.f9544f |= 2;
                            this.i = codedInputStream.p();
                            break;
                        case 42:
                            builder = (this.f9544f & 4) == 4 ? this.j.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.r(f9542d, extensionRegistryLite);
                            this.j = protoBuf$Type;
                            if (builder != null) {
                                builder.h(protoBuf$Type);
                                this.j = builder.p();
                            }
                            this.f9544f |= 4;
                            break;
                        case 48:
                            this.f9544f |= 16;
                            this.l = codedInputStream.p();
                            break;
                        case 56:
                            this.f9544f |= 32;
                            this.m = codedInputStream.p();
                            break;
                        case 64:
                            this.f9544f |= 8;
                            this.k = codedInputStream.p();
                            break;
                        case 72:
                            this.f9544f |= 64;
                            this.n = codedInputStream.p();
                            break;
                        case 82:
                            builder = (this.f9544f & 256) == 256 ? this.p.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.r(f9542d, extensionRegistryLite);
                            this.p = protoBuf$Type2;
                            if (builder != null) {
                                builder.h(protoBuf$Type2);
                                this.p = builder.p();
                            }
                            this.f9544f |= 256;
                            break;
                        case 88:
                            this.f9544f |= 512;
                            this.q = codedInputStream.p();
                            break;
                        case 96:
                            this.f9544f |= 128;
                            this.o = codedInputStream.p();
                            break;
                        case 106:
                            builder = (this.f9544f & 1024) == 1024 ? this.r.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) codedInputStream.r(f9542d, extensionRegistryLite);
                            this.r = protoBuf$Type3;
                            if (builder != null) {
                                builder.h(protoBuf$Type3);
                                this.r = builder.p();
                            }
                            this.f9544f |= 1024;
                            break;
                        case 112:
                            this.f9544f |= 2048;
                            this.s = codedInputStream.p();
                            break;
                        default:
                            if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                                z = true;
                            }
                            break;
                    }
                } catch (d e2) {
                    throw e2.k(this);
                } catch (IOException e3) {
                    throw new d(e3.getMessage()).k(this);
                }
            } catch (Throwable th) {
                if (z2 & true) {
                    this.f9545g = Collections.unmodifiableList(this.f9545g);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f9543e = bVarNewOutput.f();
                    throw th2;
                }
                this.f9543e = bVarNewOutput.f();
                h();
                throw th;
            }
        }
        if (z2 & true) {
            this.f9545g = Collections.unmodifiableList(this.f9545g);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9543e = bVarNewOutput.f();
            throw th3;
        }
        this.f9543e = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$Type(GeneratedMessageLite.c<ProtoBuf$Type, ?> cVar) {
        super(cVar);
        this.u = (byte) -1;
        this.v = -1;
        this.f9543e = cVar.g();
    }

    private ProtoBuf$Type(boolean z) {
        this.u = (byte) -1;
        this.v = -1;
        this.f9543e = ByteString.a;
    }

    public static ProtoBuf$Type getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$Type protoBuf$Type) {
        return newBuilder().h(protoBuf$Type);
    }

    private void q0() {
        this.f9545g = Collections.emptyList();
        this.h = false;
        this.i = 0;
        this.j = getDefaultInstance();
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.n = 0;
        this.o = 0;
        this.p = getDefaultInstance();
        this.q = 0;
        this.r = getDefaultInstance();
        this.s = 0;
        this.t = 0;
    }

    public ProtoBuf$Type M() {
        return this.r;
    }

    public int N() {
        return this.s;
    }

    public Argument O(int i) {
        return this.f9545g.get(i);
    }

    public int P() {
        return this.f9545g.size();
    }

    public List<Argument> Q() {
        return this.f9545g;
    }

    public int R() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Type getDefaultInstanceForType() {
        return c;
    }

    public int T() {
        return this.t;
    }

    public int U() {
        return this.i;
    }

    public ProtoBuf$Type V() {
        return this.j;
    }

    public int W() {
        return this.k;
    }

    public boolean X() {
        return this.h;
    }

    public ProtoBuf$Type Y() {
        return this.p;
    }

    public int Z() {
        return this.q;
    }

    public int a0() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9544f & 4096) == 4096) {
            codedOutputStream.s(1, this.t);
        }
        for (int i = 0; i < this.f9545g.size(); i++) {
            codedOutputStream.v(2, this.f9545g.get(i));
        }
        if ((this.f9544f & 1) == 1) {
            codedOutputStream.d(3, this.h);
        }
        if ((this.f9544f & 2) == 2) {
            codedOutputStream.s(4, this.i);
        }
        if ((this.f9544f & 4) == 4) {
            codedOutputStream.v(5, this.j);
        }
        if ((this.f9544f & 16) == 16) {
            codedOutputStream.s(6, this.l);
        }
        if ((this.f9544f & 32) == 32) {
            codedOutputStream.s(7, this.m);
        }
        if ((this.f9544f & 8) == 8) {
            codedOutputStream.s(8, this.k);
        }
        if ((this.f9544f & 64) == 64) {
            codedOutputStream.s(9, this.n);
        }
        if ((this.f9544f & 256) == 256) {
            codedOutputStream.v(10, this.p);
        }
        if ((this.f9544f & 512) == 512) {
            codedOutputStream.s(11, this.q);
        }
        if ((this.f9544f & 128) == 128) {
            codedOutputStream.s(12, this.o);
        }
        if ((this.f9544f & 1024) == 1024) {
            codedOutputStream.v(13, this.r);
        }
        if ((this.f9544f & 2048) == 2048) {
            codedOutputStream.s(14, this.s);
        }
        aVarT.a(200, codedOutputStream);
        codedOutputStream.A(this.f9543e);
    }

    public int b0() {
        return this.m;
    }

    public int c0() {
        return this.n;
    }

    public boolean d0() {
        return (this.f9544f & 1024) == 1024;
    }

    public boolean e0() {
        return (this.f9544f & 2048) == 2048;
    }

    public boolean f0() {
        return (this.f9544f & 16) == 16;
    }

    public boolean g0() {
        return (this.f9544f & 4096) == 4096;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Type> getParserForType() {
        return f9542d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.v;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9544f & 4096) == 4096 ? CodedOutputStream.computeInt32Size(1, this.t) + 0 : 0;
        for (int i2 = 0; i2 < this.f9545g.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(2, this.f9545g.get(i2));
        }
        if ((this.f9544f & 1) == 1) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(3, this.h);
        }
        if ((this.f9544f & 2) == 2) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(4, this.i);
        }
        if ((this.f9544f & 4) == 4) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(5, this.j);
        }
        if ((this.f9544f & 16) == 16) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(6, this.l);
        }
        if ((this.f9544f & 32) == 32) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(7, this.m);
        }
        if ((this.f9544f & 8) == 8) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(8, this.k);
        }
        if ((this.f9544f & 64) == 64) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(9, this.n);
        }
        if ((this.f9544f & 256) == 256) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(10, this.p);
        }
        if ((this.f9544f & 512) == 512) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(11, this.q);
        }
        if ((this.f9544f & 128) == 128) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(12, this.o);
        }
        if ((this.f9544f & 1024) == 1024) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(13, this.r);
        }
        if ((this.f9544f & 2048) == 2048) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(14, this.s);
        }
        int iN = iComputeInt32Size + n() + this.f9543e.size();
        this.v = iN;
        return iN;
    }

    public boolean h0() {
        return (this.f9544f & 2) == 2;
    }

    public boolean i0() {
        return (this.f9544f & 4) == 4;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.u;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i = 0; i < P(); i++) {
            if (!O(i).isInitialized()) {
                this.u = (byte) 0;
                return false;
            }
        }
        if (i0() && !V().isInitialized()) {
            this.u = (byte) 0;
            return false;
        }
        if (l0() && !Y().isInitialized()) {
            this.u = (byte) 0;
            return false;
        }
        if (d0() && !M().isInitialized()) {
            this.u = (byte) 0;
            return false;
        }
        if (m()) {
            this.u = (byte) 1;
            return true;
        }
        this.u = (byte) 0;
        return false;
    }

    public boolean j0() {
        return (this.f9544f & 8) == 8;
    }

    public boolean k0() {
        return (this.f9544f & 1) == 1;
    }

    public boolean l0() {
        return (this.f9544f & 256) == 256;
    }

    public boolean m0() {
        return (this.f9544f & 512) == 512;
    }

    public boolean n0() {
        return (this.f9544f & 128) == 128;
    }

    public boolean o0() {
        return (this.f9544f & 32) == 32;
    }

    public boolean p0() {
        return (this.f9544f & 64) == 64;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }
}
