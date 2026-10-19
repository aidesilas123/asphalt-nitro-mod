package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
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
public final class ProtoBuf$VersionRequirement extends GeneratedMessageLite implements k {
    private static final ProtoBuf$VersionRequirement b;
    public static l<ProtoBuf$VersionRequirement> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9595g;
    private Level h;
    private int i;
    private int j;
    private VersionKind k;
    private byte l;
    private int m;

    public enum Level implements Internal.a {
        WARNING(0, 0),
        ERROR(1, 1),
        HIDDEN(2, 2);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static Internal.b<Level> f9596d = new a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f9598f;

        static class a implements Internal.b<Level> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Level findValueByNumber(int i) {
                return Level.valueOf(i);
            }
        }

        Level(int i, int i2) {
            this.f9598f = i2;
        }

        public static Level valueOf(int i) {
            if (i == 0) {
                return WARNING;
            }
            if (i == 1) {
                return ERROR;
            }
            if (i != 2) {
                return null;
            }
            return HIDDEN;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
        public final int getNumber() {
            return this.f9598f;
        }
    }

    public enum VersionKind implements Internal.a {
        LANGUAGE_VERSION(0, 0),
        COMPILER_VERSION(1, 1),
        API_VERSION(2, 2);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static Internal.b<VersionKind> f9599d = new a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f9601f;

        static class a implements Internal.b<VersionKind> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public VersionKind findValueByNumber(int i) {
                return VersionKind.valueOf(i);
            }
        }

        VersionKind(int i, int i2) {
            this.f9601f = i2;
        }

        public static VersionKind valueOf(int i) {
            if (i == 0) {
                return LANGUAGE_VERSION;
            }
            if (i == 1) {
                return COMPILER_VERSION;
            }
            if (i != 2) {
                return null;
            }
            return API_VERSION;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
        public final int getNumber() {
            return this.f9601f;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$VersionRequirement> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$VersionRequirement c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$VersionRequirement(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$VersionRequirement, b> implements k {
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9602d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9604f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9605g;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Level f9603e = Level.ERROR;
        private VersionKind h = VersionKind.LANGUAGE_VERSION;

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
        public ProtoBuf$VersionRequirement build() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirementL = l();
            if (protoBuf$VersionRequirementL.isInitialized()) {
                return protoBuf$VersionRequirementL;
            }
            throw a.AbstractC0539a.e(protoBuf$VersionRequirementL);
        }

        public ProtoBuf$VersionRequirement l() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement(this);
            int i = this.b;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$VersionRequirement.f9594f = this.c;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$VersionRequirement.f9595g = this.f9602d;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$VersionRequirement.h = this.f9603e;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$VersionRequirement.i = this.f9604f;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$VersionRequirement.j = this.f9605g;
            if ((i & 32) == 32) {
                i2 |= 32;
            }
            protoBuf$VersionRequirement.k = this.h;
            protoBuf$VersionRequirement.f9593e = i2;
            return protoBuf$VersionRequirement;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b f() {
            return n().h(l());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$VersionRequirement protoBuf$VersionRequirement) {
            if (protoBuf$VersionRequirement == ProtoBuf$VersionRequirement.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$VersionRequirement.D()) {
                u(protoBuf$VersionRequirement.x());
            }
            if (protoBuf$VersionRequirement.E()) {
                v(protoBuf$VersionRequirement.y());
            }
            if (protoBuf$VersionRequirement.B()) {
                s(protoBuf$VersionRequirement.v());
            }
            if (protoBuf$VersionRequirement.A()) {
                r(protoBuf$VersionRequirement.u());
            }
            if (protoBuf$VersionRequirement.C()) {
                t(protoBuf$VersionRequirement.w());
            }
            if (protoBuf$VersionRequirement.F()) {
                w(protoBuf$VersionRequirement.z());
            }
            i(g().c(protoBuf$VersionRequirement.f9592d));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement$b");
        }

        public b r(int i) {
            this.b |= 8;
            this.f9604f = i;
            return this;
        }

        public b s(Level level) {
            Objects.requireNonNull(level);
            this.b |= 4;
            this.f9603e = level;
            return this;
        }

        public b t(int i) {
            this.b |= 16;
            this.f9605g = i;
            return this;
        }

        public b u(int i) {
            this.b |= 1;
            this.c = i;
            return this;
        }

        public b v(int i) {
            this.b |= 2;
            this.f9602d = i;
            return this;
        }

        public b w(VersionKind versionKind) {
            Objects.requireNonNull(versionKind);
            this.b |= 32;
            this.h = versionKind;
            return this;
        }
    }

    static {
        ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement(true);
        b = protoBuf$VersionRequirement;
        protoBuf$VersionRequirement.G();
    }

    private ProtoBuf$VersionRequirement(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.l = (byte) -1;
        this.m = -1;
        G();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    if (iG != 0) {
                        if (iG == 8) {
                            this.f9593e |= 1;
                            this.f9594f = codedInputStream.p();
                        } else if (iG == 16) {
                            this.f9593e |= 2;
                            this.f9595g = codedInputStream.p();
                        } else if (iG == 24) {
                            int iK = codedInputStream.k();
                            Level levelValueOf = Level.valueOf(iK);
                            if (levelValueOf == null) {
                                codedOutputStreamNewInstance.G(iG);
                                codedOutputStreamNewInstance.G(iK);
                            } else {
                                this.f9593e |= 4;
                                this.h = levelValueOf;
                            }
                        } else if (iG == 32) {
                            this.f9593e |= 8;
                            this.i = codedInputStream.p();
                        } else if (iG == 40) {
                            this.f9593e |= 16;
                            this.j = codedInputStream.p();
                        } else if (iG == 48) {
                            int iK2 = codedInputStream.k();
                            VersionKind versionKindValueOf = VersionKind.valueOf(iK2);
                            if (versionKindValueOf == null) {
                                codedOutputStreamNewInstance.G(iG);
                                codedOutputStreamNewInstance.G(iK2);
                            } else {
                                this.f9593e |= 32;
                                this.k = versionKindValueOf;
                            }
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
                    this.f9592d = bVarNewOutput.f();
                    throw th2;
                }
                this.f9592d = bVarNewOutput.f();
                h();
                throw th;
            }
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9592d = bVarNewOutput.f();
            throw th3;
        }
        this.f9592d = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$VersionRequirement(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.l = (byte) -1;
        this.m = -1;
        this.f9592d = bVar.g();
    }

    private ProtoBuf$VersionRequirement(boolean z) {
        this.l = (byte) -1;
        this.m = -1;
        this.f9592d = ByteString.a;
    }

    private void G() {
        this.f9594f = 0;
        this.f9595g = 0;
        this.h = Level.ERROR;
        this.i = 0;
        this.j = 0;
        this.k = VersionKind.LANGUAGE_VERSION;
    }

    public static ProtoBuf$VersionRequirement getDefaultInstance() {
        return b;
    }

    public static b newBuilder() {
        return b.n();
    }

    public static b newBuilder(ProtoBuf$VersionRequirement protoBuf$VersionRequirement) {
        return newBuilder().h(protoBuf$VersionRequirement);
    }

    public boolean A() {
        return (this.f9593e & 8) == 8;
    }

    public boolean B() {
        return (this.f9593e & 4) == 4;
    }

    public boolean C() {
        return (this.f9593e & 16) == 16;
    }

    public boolean D() {
        return (this.f9593e & 1) == 1;
    }

    public boolean E() {
        return (this.f9593e & 2) == 2;
    }

    public boolean F() {
        return (this.f9593e & 32) == 32;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if ((this.f9593e & 1) == 1) {
            codedOutputStream.s(1, this.f9594f);
        }
        if ((this.f9593e & 2) == 2) {
            codedOutputStream.s(2, this.f9595g);
        }
        if ((this.f9593e & 4) == 4) {
            codedOutputStream.k(3, this.h.getNumber());
        }
        if ((this.f9593e & 8) == 8) {
            codedOutputStream.s(4, this.i);
        }
        if ((this.f9593e & 16) == 16) {
            codedOutputStream.s(5, this.j);
        }
        if ((this.f9593e & 32) == 32) {
            codedOutputStream.k(6, this.k.getNumber());
        }
        codedOutputStream.A(this.f9592d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$VersionRequirement> getParserForType() {
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.m;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9593e & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.f9594f) : 0;
        if ((this.f9593e & 2) == 2) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.f9595g);
        }
        if ((this.f9593e & 4) == 4) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(3, this.h.getNumber());
        }
        if ((this.f9593e & 8) == 8) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(4, this.i);
        }
        if ((this.f9593e & 16) == 16) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(5, this.j);
        }
        if ((this.f9593e & 32) == 32) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(6, this.k.getNumber());
        }
        int size = iComputeInt32Size + this.f9592d.size();
        this.m = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.l;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.l = (byte) 1;
        return true;
    }

    public int u() {
        return this.i;
    }

    public Level v() {
        return this.h;
    }

    public int w() {
        return this.j;
    }

    public int x() {
        return this.f9594f;
    }

    public int y() {
        return this.f9595g;
    }

    public VersionKind z() {
        return this.k;
    }
}
