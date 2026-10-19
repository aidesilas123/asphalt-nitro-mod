package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
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
public final class ProtoBuf$Constructor extends GeneratedMessageLite.d<ProtoBuf$Constructor> implements k {
    private static final ProtoBuf$Constructor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$Constructor> f9443d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9446g;
    private List<ProtoBuf$ValueParameter> h;
    private List<Integer> i;
    private byte j;
    private int k;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Constructor> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Constructor c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Constructor(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Constructor, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9447d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9448e = 6;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<ProtoBuf$ValueParameter> f9449f = Collections.emptyList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<Integer> f9450g = Collections.emptyList();

        private b() {
            u();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9447d & 2) != 2) {
                this.f9449f = new ArrayList(this.f9449f);
                this.f9447d |= 2;
            }
        }

        private void t() {
            if ((this.f9447d & 4) != 4) {
                this.f9450g = new ArrayList(this.f9450g);
                this.f9447d |= 4;
            }
        }

        private void u() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Constructor build() {
            ProtoBuf$Constructor protoBuf$ConstructorP = p();
            if (protoBuf$ConstructorP.isInitialized()) {
                return protoBuf$ConstructorP;
            }
            throw a.AbstractC0539a.e(protoBuf$ConstructorP);
        }

        public ProtoBuf$Constructor p() {
            ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor(this);
            int i = (this.f9447d & 1) != 1 ? 0 : 1;
            protoBuf$Constructor.f9446g = this.f9448e;
            if ((this.f9447d & 2) == 2) {
                this.f9449f = Collections.unmodifiableList(this.f9449f);
                this.f9447d &= -3;
            }
            protoBuf$Constructor.h = this.f9449f;
            if ((this.f9447d & 4) == 4) {
                this.f9450g = Collections.unmodifiableList(this.f9450g);
                this.f9447d &= -5;
            }
            protoBuf$Constructor.i = this.f9450g;
            protoBuf$Constructor.f9445f = i;
            return protoBuf$Constructor;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Constructor protoBuf$Constructor) {
            if (protoBuf$Constructor == ProtoBuf$Constructor.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Constructor.I()) {
                x(protoBuf$Constructor.D());
            }
            if (!protoBuf$Constructor.h.isEmpty()) {
                if (this.f9449f.isEmpty()) {
                    this.f9449f = protoBuf$Constructor.h;
                    this.f9447d &= -3;
                } else {
                    s();
                    this.f9449f.addAll(protoBuf$Constructor.h);
                }
            }
            if (!protoBuf$Constructor.i.isEmpty()) {
                if (this.f9450g.isEmpty()) {
                    this.f9450g = protoBuf$Constructor.i;
                    this.f9447d &= -5;
                } else {
                    t();
                    this.f9450g.addAll(protoBuf$Constructor.i);
                }
            }
            m(protoBuf$Constructor);
            i(g().c(protoBuf$Constructor.f9444e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor.f9443d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor$b");
        }

        public b x(int i) {
            this.f9447d |= 1;
            this.f9448e = i;
            return this;
        }
    }

    static {
        ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor(true);
        c = protoBuf$Constructor;
        protoBuf$Constructor.J();
    }

    private ProtoBuf$Constructor(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.j = (byte) -1;
        this.k = -1;
        J();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    try {
                        int iG = codedInputStream.G();
                        if (iG != 0) {
                            if (iG == 8) {
                                this.f9445f |= 1;
                                this.f9446g = codedInputStream.p();
                            } else if (iG == 18) {
                                if ((i & 2) != 2) {
                                    this.h = new ArrayList();
                                    i |= 2;
                                }
                                this.h.add((ProtoBuf$ValueParameter) codedInputStream.r(ProtoBuf$ValueParameter.f9584d, extensionRegistryLite));
                            } else if (iG == 248) {
                                if ((i & 4) != 4) {
                                    this.i = new ArrayList();
                                    i |= 4;
                                }
                                this.i.add(Integer.valueOf(codedInputStream.p()));
                            } else if (iG == 250) {
                                int iG2 = codedInputStream.g(codedInputStream.x());
                                if ((i & 4) != 4 && codedInputStream.c() > 0) {
                                    this.i = new ArrayList();
                                    i |= 4;
                                }
                                while (codedInputStream.c() > 0) {
                                    this.i.add(Integer.valueOf(codedInputStream.p()));
                                }
                                codedInputStream.f(iG2);
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
                if ((i & 2) == 2) {
                    this.h = Collections.unmodifiableList(this.h);
                }
                if ((i & 4) == 4) {
                    this.i = Collections.unmodifiableList(this.i);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f9444e = bVarNewOutput.f();
                    throw th2;
                }
                this.f9444e = bVarNewOutput.f();
                h();
                throw th;
            }
        }
        if ((i & 2) == 2) {
            this.h = Collections.unmodifiableList(this.h);
        }
        if ((i & 4) == 4) {
            this.i = Collections.unmodifiableList(this.i);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9444e = bVarNewOutput.f();
            throw th3;
        }
        this.f9444e = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$Constructor(GeneratedMessageLite.c<ProtoBuf$Constructor, ?> cVar) {
        super(cVar);
        this.j = (byte) -1;
        this.k = -1;
        this.f9444e = cVar.g();
    }

    private ProtoBuf$Constructor(boolean z) {
        this.j = (byte) -1;
        this.k = -1;
        this.f9444e = ByteString.a;
    }

    private void J() {
        this.f9446g = 6;
        this.h = Collections.emptyList();
        this.i = Collections.emptyList();
    }

    public static ProtoBuf$Constructor getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$Constructor protoBuf$Constructor) {
        return newBuilder().h(protoBuf$Constructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Constructor getDefaultInstanceForType() {
        return c;
    }

    public int D() {
        return this.f9446g;
    }

    public ProtoBuf$ValueParameter E(int i) {
        return this.h.get(i);
    }

    public int F() {
        return this.h.size();
    }

    public List<ProtoBuf$ValueParameter> G() {
        return this.h;
    }

    public List<Integer> H() {
        return this.i;
    }

    public boolean I() {
        return (this.f9445f & 1) == 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9445f & 1) == 1) {
            codedOutputStream.s(1, this.f9446g);
        }
        for (int i = 0; i < this.h.size(); i++) {
            codedOutputStream.v(2, this.h.get(i));
        }
        for (int i2 = 0; i2 < this.i.size(); i2++) {
            codedOutputStream.s(31, this.i.get(i2).intValue());
        }
        aVarT.a(19000, codedOutputStream);
        codedOutputStream.A(this.f9444e);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Constructor> getParserForType() {
        return f9443d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.k;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9445f & 1) == 1 ? CodedOutputStream.computeInt32Size(1, this.f9446g) + 0 : 0;
        for (int i2 = 0; i2 < this.h.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(2, this.h.get(i2));
        }
        int iComputeInt32SizeNoTag = 0;
        for (int i3 = 0; i3 < this.i.size(); i3++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.i.get(i3).intValue());
        }
        int size = iComputeInt32Size + iComputeInt32SizeNoTag + (H().size() * 2) + n() + this.f9444e.size();
        this.k = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.j;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i = 0; i < F(); i++) {
            if (!E(i).isInitialized()) {
                this.j = (byte) 0;
                return false;
            }
        }
        if (m()) {
            this.j = (byte) 1;
            return true;
        }
        this.j = (byte) 0;
        return false;
    }
}
