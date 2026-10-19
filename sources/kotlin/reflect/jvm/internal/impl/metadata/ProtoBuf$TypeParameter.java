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
public final class ProtoBuf$TypeParameter extends GeneratedMessageLite.d<ProtoBuf$TypeParameter> implements k {
    private static final ProtoBuf$TypeParameter c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$TypeParameter> f9568d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9571g;
    private int h;
    private boolean i;
    private Variance j;
    private List<ProtoBuf$Type> k;
    private List<Integer> l;
    private int m;
    private byte n;
    private int o;

    public enum Variance implements Internal.a {
        IN(0, 0),
        OUT(1, 1),
        INV(2, 2);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static Internal.b<Variance> f9572d = new a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f9574f;

        static class a implements Internal.b<Variance> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Variance findValueByNumber(int i) {
                return Variance.valueOf(i);
            }
        }

        Variance(int i, int i2) {
            this.f9574f = i2;
        }

        public static Variance valueOf(int i) {
            if (i == 0) {
                return IN;
            }
            if (i == 1) {
                return OUT;
            }
            if (i != 2) {
                return null;
            }
            return INV;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
        public final int getNumber() {
            return this.f9574f;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$TypeParameter> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeParameter c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$TypeParameter(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$TypeParameter, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9575d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9576e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9577f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f9578g;
        private Variance h = Variance.INV;
        private List<ProtoBuf$Type> i = Collections.emptyList();
        private List<Integer> j = Collections.emptyList();

        private b() {
            u();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9575d & 32) != 32) {
                this.j = new ArrayList(this.j);
                this.f9575d |= 32;
            }
        }

        private void t() {
            if ((this.f9575d & 16) != 16) {
                this.i = new ArrayList(this.i);
                this.f9575d |= 16;
            }
        }

        private void u() {
        }

        public b A(Variance variance) {
            Objects.requireNonNull(variance);
            this.f9575d |= 8;
            this.h = variance;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeParameter build() {
            ProtoBuf$TypeParameter protoBuf$TypeParameterP = p();
            if (protoBuf$TypeParameterP.isInitialized()) {
                return protoBuf$TypeParameterP;
            }
            throw a.AbstractC0539a.e(protoBuf$TypeParameterP);
        }

        public ProtoBuf$TypeParameter p() {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter(this);
            int i = this.f9575d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$TypeParameter.f9571g = this.f9576e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$TypeParameter.h = this.f9577f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$TypeParameter.i = this.f9578g;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$TypeParameter.j = this.h;
            if ((this.f9575d & 16) == 16) {
                this.i = Collections.unmodifiableList(this.i);
                this.f9575d &= -17;
            }
            protoBuf$TypeParameter.k = this.i;
            if ((this.f9575d & 32) == 32) {
                this.j = Collections.unmodifiableList(this.j);
                this.f9575d &= -33;
            }
            protoBuf$TypeParameter.l = this.j;
            protoBuf$TypeParameter.f9570f = i2;
            return protoBuf$TypeParameter;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$TypeParameter protoBuf$TypeParameter) {
            if (protoBuf$TypeParameter == ProtoBuf$TypeParameter.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$TypeParameter.O()) {
                x(protoBuf$TypeParameter.G());
            }
            if (protoBuf$TypeParameter.P()) {
                y(protoBuf$TypeParameter.H());
            }
            if (protoBuf$TypeParameter.Q()) {
                z(protoBuf$TypeParameter.I());
            }
            if (protoBuf$TypeParameter.R()) {
                A(protoBuf$TypeParameter.N());
            }
            if (!protoBuf$TypeParameter.k.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$TypeParameter.k;
                    this.f9575d &= -17;
                } else {
                    t();
                    this.i.addAll(protoBuf$TypeParameter.k);
                }
            }
            if (!protoBuf$TypeParameter.l.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$TypeParameter.l;
                    this.f9575d &= -33;
                } else {
                    s();
                    this.j.addAll(protoBuf$TypeParameter.l);
                }
            }
            m(protoBuf$TypeParameter);
            i(g().c(protoBuf$TypeParameter.f9569e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter.f9568d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter$b");
        }

        public b x(int i) {
            this.f9575d |= 1;
            this.f9576e = i;
            return this;
        }

        public b y(int i) {
            this.f9575d |= 2;
            this.f9577f = i;
            return this;
        }

        public b z(boolean z) {
            this.f9575d |= 4;
            this.f9578g = z;
            return this;
        }
    }

    static {
        ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter(true);
        c = protoBuf$TypeParameter;
        protoBuf$TypeParameter.S();
    }

    private ProtoBuf$TypeParameter(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.m = -1;
        this.n = (byte) -1;
        this.o = -1;
        S();
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
                            this.f9570f |= 1;
                            this.f9571g = codedInputStream.p();
                        } else if (iG == 16) {
                            this.f9570f |= 2;
                            this.h = codedInputStream.p();
                        } else if (iG == 24) {
                            this.f9570f |= 4;
                            this.i = codedInputStream.h();
                        } else if (iG == 32) {
                            int iK = codedInputStream.k();
                            Variance varianceValueOf = Variance.valueOf(iK);
                            if (varianceValueOf == null) {
                                codedOutputStreamNewInstance.G(iG);
                                codedOutputStreamNewInstance.G(iK);
                            } else {
                                this.f9570f |= 8;
                                this.j = varianceValueOf;
                            }
                        } else if (iG == 42) {
                            if ((i & 16) != 16) {
                                this.k = new ArrayList();
                                i |= 16;
                            }
                            this.k.add((ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite));
                        } else if (iG == 48) {
                            if ((i & 32) != 32) {
                                this.l = new ArrayList();
                                i |= 32;
                            }
                            this.l.add(Integer.valueOf(codedInputStream.p()));
                        } else if (iG == 50) {
                            int iG2 = codedInputStream.g(codedInputStream.x());
                            if ((i & 32) != 32 && codedInputStream.c() > 0) {
                                this.l = new ArrayList();
                                i |= 32;
                            }
                            while (codedInputStream.c() > 0) {
                                this.l.add(Integer.valueOf(codedInputStream.p()));
                            }
                            codedInputStream.f(iG2);
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
                if ((i & 16) == 16) {
                    this.k = Collections.unmodifiableList(this.k);
                }
                if ((i & 32) == 32) {
                    this.l = Collections.unmodifiableList(this.l);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f9569e = bVarNewOutput.f();
                    throw th2;
                }
                this.f9569e = bVarNewOutput.f();
                h();
                throw th;
            }
        }
        if ((i & 16) == 16) {
            this.k = Collections.unmodifiableList(this.k);
        }
        if ((i & 32) == 32) {
            this.l = Collections.unmodifiableList(this.l);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9569e = bVarNewOutput.f();
            throw th3;
        }
        this.f9569e = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$TypeParameter(GeneratedMessageLite.c<ProtoBuf$TypeParameter, ?> cVar) {
        super(cVar);
        this.m = -1;
        this.n = (byte) -1;
        this.o = -1;
        this.f9569e = cVar.g();
    }

    private ProtoBuf$TypeParameter(boolean z) {
        this.m = -1;
        this.n = (byte) -1;
        this.o = -1;
        this.f9569e = ByteString.a;
    }

    private void S() {
        this.f9571g = 0;
        this.h = 0;
        this.i = false;
        this.j = Variance.INV;
        this.k = Collections.emptyList();
        this.l = Collections.emptyList();
    }

    public static ProtoBuf$TypeParameter getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$TypeParameter protoBuf$TypeParameter) {
        return newBuilder().h(protoBuf$TypeParameter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$TypeParameter getDefaultInstanceForType() {
        return c;
    }

    public int G() {
        return this.f9571g;
    }

    public int H() {
        return this.h;
    }

    public boolean I() {
        return this.i;
    }

    public ProtoBuf$Type J(int i) {
        return this.k.get(i);
    }

    public int K() {
        return this.k.size();
    }

    public List<Integer> L() {
        return this.l;
    }

    public List<ProtoBuf$Type> M() {
        return this.k;
    }

    public Variance N() {
        return this.j;
    }

    public boolean O() {
        return (this.f9570f & 1) == 1;
    }

    public boolean P() {
        return (this.f9570f & 2) == 2;
    }

    public boolean Q() {
        return (this.f9570f & 4) == 4;
    }

    public boolean R() {
        return (this.f9570f & 8) == 8;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9570f & 1) == 1) {
            codedOutputStream.s(1, this.f9571g);
        }
        if ((this.f9570f & 2) == 2) {
            codedOutputStream.s(2, this.h);
        }
        if ((this.f9570f & 4) == 4) {
            codedOutputStream.d(3, this.i);
        }
        if ((this.f9570f & 8) == 8) {
            codedOutputStream.k(4, this.j.getNumber());
        }
        for (int i = 0; i < this.k.size(); i++) {
            codedOutputStream.v(5, this.k.get(i));
        }
        if (L().size() > 0) {
            codedOutputStream.G(50);
            codedOutputStream.G(this.m);
        }
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            codedOutputStream.t(this.l.get(i2).intValue());
        }
        aVarT.a(1000, codedOutputStream);
        codedOutputStream.A(this.f9569e);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$TypeParameter> getParserForType() {
        return f9568d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.o;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9570f & 1) == 1 ? CodedOutputStream.computeInt32Size(1, this.f9571g) + 0 : 0;
        if ((this.f9570f & 2) == 2) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.h);
        }
        if ((this.f9570f & 4) == 4) {
            iComputeInt32Size += CodedOutputStream.computeBoolSize(3, this.i);
        }
        if ((this.f9570f & 8) == 8) {
            iComputeInt32Size += CodedOutputStream.computeEnumSize(4, this.j.getNumber());
        }
        for (int i2 = 0; i2 < this.k.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(5, this.k.get(i2));
        }
        int iComputeInt32SizeNoTag = 0;
        for (int i3 = 0; i3 < this.l.size(); i3++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.l.get(i3).intValue());
        }
        int iComputeInt32SizeNoTag2 = iComputeInt32Size + iComputeInt32SizeNoTag;
        if (!L().isEmpty()) {
            iComputeInt32SizeNoTag2 = iComputeInt32SizeNoTag2 + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag);
        }
        this.m = iComputeInt32SizeNoTag;
        int iN = iComputeInt32SizeNoTag2 + n() + this.f9569e.size();
        this.o = iN;
        return iN;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.n;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (!O()) {
            this.n = (byte) 0;
            return false;
        }
        if (!P()) {
            this.n = (byte) 0;
            return false;
        }
        for (int i = 0; i < K(); i++) {
            if (!J(i).isInitialized()) {
                this.n = (byte) 0;
                return false;
            }
        }
        if (m()) {
            this.n = (byte) 1;
            return true;
        }
        this.n = (byte) 0;
        return false;
    }
}
