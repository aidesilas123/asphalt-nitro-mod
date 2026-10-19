package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;
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
public final class ProtoBuf$PackageFragment extends GeneratedMessageLite.d<ProtoBuf$PackageFragment> implements k {
    private static final ProtoBuf$PackageFragment c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$PackageFragment> f9509d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9511f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ProtoBuf$StringTable f9512g;
    private ProtoBuf$QualifiedNameTable h;
    private ProtoBuf$Package i;
    private List<ProtoBuf$Class> j;
    private byte k;
    private int l;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$PackageFragment> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$PackageFragment c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$PackageFragment(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$PackageFragment, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9513d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ProtoBuf$StringTable f9514e = ProtoBuf$StringTable.getDefaultInstance();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ProtoBuf$QualifiedNameTable f9515f = ProtoBuf$QualifiedNameTable.getDefaultInstance();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ProtoBuf$Package f9516g = ProtoBuf$Package.getDefaultInstance();
        private List<ProtoBuf$Class> h = Collections.emptyList();

        private b() {
            t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9513d & 8) != 8) {
                this.h = new ArrayList(this.h);
                this.f9513d |= 8;
            }
        }

        private void t() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$PackageFragment build() {
            ProtoBuf$PackageFragment protoBuf$PackageFragmentP = p();
            if (protoBuf$PackageFragmentP.isInitialized()) {
                return protoBuf$PackageFragmentP;
            }
            throw a.AbstractC0539a.e(protoBuf$PackageFragmentP);
        }

        public ProtoBuf$PackageFragment p() {
            ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment(this);
            int i = this.f9513d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$PackageFragment.f9512g = this.f9514e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$PackageFragment.h = this.f9515f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$PackageFragment.i = this.f9516g;
            if ((this.f9513d & 8) == 8) {
                this.h = Collections.unmodifiableList(this.h);
                this.f9513d &= -9;
            }
            protoBuf$PackageFragment.j = this.h;
            protoBuf$PackageFragment.f9511f = i2;
            return protoBuf$PackageFragment;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$PackageFragment protoBuf$PackageFragment) {
            if (protoBuf$PackageFragment == ProtoBuf$PackageFragment.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$PackageFragment.L()) {
                y(protoBuf$PackageFragment.I());
            }
            if (protoBuf$PackageFragment.K()) {
                x(protoBuf$PackageFragment.H());
            }
            if (protoBuf$PackageFragment.J()) {
                w(protoBuf$PackageFragment.G());
            }
            if (!protoBuf$PackageFragment.j.isEmpty()) {
                if (this.h.isEmpty()) {
                    this.h = protoBuf$PackageFragment.j;
                    this.f9513d &= -9;
                } else {
                    s();
                    this.h.addAll(protoBuf$PackageFragment.j);
                }
            }
            m(protoBuf$PackageFragment);
            i(g().c(protoBuf$PackageFragment.f9510e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment.f9509d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment$b");
        }

        public b w(ProtoBuf$Package protoBuf$Package) {
            if ((this.f9513d & 4) != 4 || this.f9516g == ProtoBuf$Package.getDefaultInstance()) {
                this.f9516g = protoBuf$Package;
            } else {
                this.f9516g = ProtoBuf$Package.newBuilder(this.f9516g).h(protoBuf$Package).p();
            }
            this.f9513d |= 4;
            return this;
        }

        public b x(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            if ((this.f9513d & 2) != 2 || this.f9515f == ProtoBuf$QualifiedNameTable.getDefaultInstance()) {
                this.f9515f = protoBuf$QualifiedNameTable;
            } else {
                this.f9515f = ProtoBuf$QualifiedNameTable.newBuilder(this.f9515f).h(protoBuf$QualifiedNameTable).l();
            }
            this.f9513d |= 2;
            return this;
        }

        public b y(ProtoBuf$StringTable protoBuf$StringTable) {
            if ((this.f9513d & 1) != 1 || this.f9514e == ProtoBuf$StringTable.getDefaultInstance()) {
                this.f9514e = protoBuf$StringTable;
            } else {
                this.f9514e = ProtoBuf$StringTable.newBuilder(this.f9514e).h(protoBuf$StringTable).l();
            }
            this.f9513d |= 1;
            return this;
        }
    }

    static {
        ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment(true);
        c = protoBuf$PackageFragment;
        protoBuf$PackageFragment.M();
    }

    private ProtoBuf$PackageFragment(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.k = (byte) -1;
        this.l = -1;
        M();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    if (iG != 0) {
                        if (iG == 10) {
                            ProtoBuf$StringTable.b builder = (this.f9511f & 1) == 1 ? this.f9512g.toBuilder() : null;
                            ProtoBuf$StringTable protoBuf$StringTable = (ProtoBuf$StringTable) codedInputStream.r(ProtoBuf$StringTable.c, extensionRegistryLite);
                            this.f9512g = protoBuf$StringTable;
                            if (builder != null) {
                                builder.h(protoBuf$StringTable);
                                this.f9512g = builder.l();
                            }
                            this.f9511f |= 1;
                        } else if (iG == 18) {
                            ProtoBuf$QualifiedNameTable.b builder2 = (this.f9511f & 2) == 2 ? this.h.toBuilder() : null;
                            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = (ProtoBuf$QualifiedNameTable) codedInputStream.r(ProtoBuf$QualifiedNameTable.c, extensionRegistryLite);
                            this.h = protoBuf$QualifiedNameTable;
                            if (builder2 != null) {
                                builder2.h(protoBuf$QualifiedNameTable);
                                this.h = builder2.l();
                            }
                            this.f9511f |= 2;
                        } else if (iG == 26) {
                            ProtoBuf$Package.b builder3 = (this.f9511f & 4) == 4 ? this.i.toBuilder() : null;
                            ProtoBuf$Package protoBuf$Package = (ProtoBuf$Package) codedInputStream.r(ProtoBuf$Package.f9501d, extensionRegistryLite);
                            this.i = protoBuf$Package;
                            if (builder3 != null) {
                                builder3.h(protoBuf$Package);
                                this.i = builder3.p();
                            }
                            this.f9511f |= 4;
                        } else if (iG == 34) {
                            if ((i & 8) != 8) {
                                this.j = new ArrayList();
                                i |= 8;
                            }
                            this.j.add((ProtoBuf$Class) codedInputStream.r(ProtoBuf$Class.f9431d, extensionRegistryLite));
                        } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 8) == 8) {
                        this.j = Collections.unmodifiableList(this.j);
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9510e = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9510e = bVarNewOutput.f();
                    h();
                    throw th;
                }
            } catch (d e2) {
                throw e2.k(this);
            } catch (IOException e3) {
                throw new d(e3.getMessage()).k(this);
            }
        }
        if ((i & 8) == 8) {
            this.j = Collections.unmodifiableList(this.j);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9510e = bVarNewOutput.f();
            throw th3;
        }
        this.f9510e = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$PackageFragment(GeneratedMessageLite.c<ProtoBuf$PackageFragment, ?> cVar) {
        super(cVar);
        this.k = (byte) -1;
        this.l = -1;
        this.f9510e = cVar.g();
    }

    private ProtoBuf$PackageFragment(boolean z) {
        this.k = (byte) -1;
        this.l = -1;
        this.f9510e = ByteString.a;
    }

    private void M() {
        this.f9512g = ProtoBuf$StringTable.getDefaultInstance();
        this.h = ProtoBuf$QualifiedNameTable.getDefaultInstance();
        this.i = ProtoBuf$Package.getDefaultInstance();
        this.j = Collections.emptyList();
    }

    public static ProtoBuf$PackageFragment getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$PackageFragment protoBuf$PackageFragment) {
        return newBuilder().h(protoBuf$PackageFragment);
    }

    public static ProtoBuf$PackageFragment parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return f9509d.a(inputStream, extensionRegistryLite);
    }

    public ProtoBuf$Class C(int i) {
        return this.j.get(i);
    }

    public int D() {
        return this.j.size();
    }

    public List<ProtoBuf$Class> E() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$PackageFragment getDefaultInstanceForType() {
        return c;
    }

    public ProtoBuf$Package G() {
        return this.i;
    }

    public ProtoBuf$QualifiedNameTable H() {
        return this.h;
    }

    public ProtoBuf$StringTable I() {
        return this.f9512g;
    }

    public boolean J() {
        return (this.f9511f & 4) == 4;
    }

    public boolean K() {
        return (this.f9511f & 2) == 2;
    }

    public boolean L() {
        return (this.f9511f & 1) == 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9511f & 1) == 1) {
            codedOutputStream.v(1, this.f9512g);
        }
        if ((this.f9511f & 2) == 2) {
            codedOutputStream.v(2, this.h);
        }
        if ((this.f9511f & 4) == 4) {
            codedOutputStream.v(3, this.i);
        }
        for (int i = 0; i < this.j.size(); i++) {
            codedOutputStream.v(4, this.j.get(i));
        }
        aVarT.a(200, codedOutputStream);
        codedOutputStream.A(this.f9510e);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$PackageFragment> getParserForType() {
        return f9509d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.l;
        if (i != -1) {
            return i;
        }
        int iComputeMessageSize = (this.f9511f & 1) == 1 ? CodedOutputStream.computeMessageSize(1, this.f9512g) + 0 : 0;
        if ((this.f9511f & 2) == 2) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(2, this.h);
        }
        if ((this.f9511f & 4) == 4) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(3, this.i);
        }
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(4, this.j.get(i2));
        }
        int iN = iComputeMessageSize + n() + this.f9510e.size();
        this.l = iN;
        return iN;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.k;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (K() && !H().isInitialized()) {
            this.k = (byte) 0;
            return false;
        }
        if (J() && !G().isInitialized()) {
            this.k = (byte) 0;
            return false;
        }
        for (int i = 0; i < D(); i++) {
            if (!C(i).isInitialized()) {
                this.k = (byte) 0;
                return false;
            }
        }
        if (m()) {
            this.k = (byte) 1;
            return true;
        }
        this.k = (byte) 0;
        return false;
    }
}
