package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
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
public final class ProtoBuf$Package extends GeneratedMessageLite.d<ProtoBuf$Package> implements k {
    private static final ProtoBuf$Package c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$Package> f9501d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9502e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9503f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<ProtoBuf$Function> f9504g;
    private List<ProtoBuf$Property> h;
    private List<ProtoBuf$TypeAlias> i;
    private ProtoBuf$TypeTable j;
    private ProtoBuf$VersionRequirementTable k;
    private byte l;
    private int m;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Package> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Package c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Package(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Package, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9505d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<ProtoBuf$Function> f9506e = Collections.emptyList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<ProtoBuf$Property> f9507f = Collections.emptyList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<ProtoBuf$TypeAlias> f9508g = Collections.emptyList();
        private ProtoBuf$TypeTable h = ProtoBuf$TypeTable.getDefaultInstance();
        private ProtoBuf$VersionRequirementTable i = ProtoBuf$VersionRequirementTable.getDefaultInstance();

        private b() {
            v();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9505d & 1) != 1) {
                this.f9506e = new ArrayList(this.f9506e);
                this.f9505d |= 1;
            }
        }

        private void t() {
            if ((this.f9505d & 2) != 2) {
                this.f9507f = new ArrayList(this.f9507f);
                this.f9505d |= 2;
            }
        }

        private void u() {
            if ((this.f9505d & 4) != 4) {
                this.f9508g = new ArrayList(this.f9508g);
                this.f9505d |= 4;
            }
        }

        private void v() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Package build() {
            ProtoBuf$Package protoBuf$PackageP = p();
            if (protoBuf$PackageP.isInitialized()) {
                return protoBuf$PackageP;
            }
            throw a.AbstractC0539a.e(protoBuf$PackageP);
        }

        public ProtoBuf$Package p() {
            ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package(this);
            int i = this.f9505d;
            if ((i & 1) == 1) {
                this.f9506e = Collections.unmodifiableList(this.f9506e);
                this.f9505d &= -2;
            }
            protoBuf$Package.f9504g = this.f9506e;
            if ((this.f9505d & 2) == 2) {
                this.f9507f = Collections.unmodifiableList(this.f9507f);
                this.f9505d &= -3;
            }
            protoBuf$Package.h = this.f9507f;
            if ((this.f9505d & 4) == 4) {
                this.f9508g = Collections.unmodifiableList(this.f9508g);
                this.f9505d &= -5;
            }
            protoBuf$Package.i = this.f9508g;
            int i2 = (i & 8) != 8 ? 0 : 1;
            protoBuf$Package.j = this.h;
            if ((i & 16) == 16) {
                i2 |= 2;
            }
            protoBuf$Package.k = this.i;
            protoBuf$Package.f9503f = i2;
            return protoBuf$Package;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Package protoBuf$Package) {
            if (protoBuf$Package == ProtoBuf$Package.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Package.f9504g.isEmpty()) {
                if (this.f9506e.isEmpty()) {
                    this.f9506e = protoBuf$Package.f9504g;
                    this.f9505d &= -2;
                } else {
                    s();
                    this.f9506e.addAll(protoBuf$Package.f9504g);
                }
            }
            if (!protoBuf$Package.h.isEmpty()) {
                if (this.f9507f.isEmpty()) {
                    this.f9507f = protoBuf$Package.h;
                    this.f9505d &= -3;
                } else {
                    t();
                    this.f9507f.addAll(protoBuf$Package.h);
                }
            }
            if (!protoBuf$Package.i.isEmpty()) {
                if (this.f9508g.isEmpty()) {
                    this.f9508g = protoBuf$Package.i;
                    this.f9505d &= -5;
                } else {
                    u();
                    this.f9508g.addAll(protoBuf$Package.i);
                }
            }
            if (protoBuf$Package.R()) {
                y(protoBuf$Package.P());
            }
            if (protoBuf$Package.S()) {
                z(protoBuf$Package.Q());
            }
            m(protoBuf$Package);
            i(g().c(protoBuf$Package.f9502e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package.f9501d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package$b");
        }

        public b y(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.f9505d & 8) != 8 || this.h == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.h = protoBuf$TypeTable;
            } else {
                this.h = ProtoBuf$TypeTable.newBuilder(this.h).h(protoBuf$TypeTable).l();
            }
            this.f9505d |= 8;
            return this;
        }

        public b z(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if ((this.f9505d & 16) != 16 || this.i == ProtoBuf$VersionRequirementTable.getDefaultInstance()) {
                this.i = protoBuf$VersionRequirementTable;
            } else {
                this.i = ProtoBuf$VersionRequirementTable.newBuilder(this.i).h(protoBuf$VersionRequirementTable).l();
            }
            this.f9505d |= 16;
            return this;
        }
    }

    static {
        ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package(true);
        c = protoBuf$Package;
        protoBuf$Package.T();
    }

    private ProtoBuf$Package(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.l = (byte) -1;
        this.m = -1;
        T();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    if (iG != 0) {
                        if (iG == 26) {
                            if ((i & 1) != 1) {
                                this.f9504g = new ArrayList();
                                i |= 1;
                            }
                            this.f9504g.add((ProtoBuf$Function) codedInputStream.r(ProtoBuf$Function.f9485d, extensionRegistryLite));
                        } else if (iG == 34) {
                            if ((i & 2) != 2) {
                                this.h = new ArrayList();
                                i |= 2;
                            }
                            this.h.add((ProtoBuf$Property) codedInputStream.r(ProtoBuf$Property.f9517d, extensionRegistryLite));
                        } else if (iG != 42) {
                            if (iG == 242) {
                                ProtoBuf$TypeTable.b bVarY = (this.f9503f & 1) == 1 ? this.j.toBuilder() : null;
                                ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) codedInputStream.r(ProtoBuf$TypeTable.c, extensionRegistryLite);
                                this.j = protoBuf$TypeTable;
                                if (bVarY != null) {
                                    bVarY.h(protoBuf$TypeTable);
                                    this.j = bVarY.l();
                                }
                                this.f9503f |= 1;
                            } else if (iG == 258) {
                                ProtoBuf$VersionRequirementTable.b bVarT = (this.f9503f & 2) == 2 ? this.k.toBuilder() : null;
                                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = (ProtoBuf$VersionRequirementTable) codedInputStream.r(ProtoBuf$VersionRequirementTable.c, extensionRegistryLite);
                                this.k = protoBuf$VersionRequirementTable;
                                if (bVarT != null) {
                                    bVarT.h(protoBuf$VersionRequirementTable);
                                    this.k = bVarT.l();
                                }
                                this.f9503f |= 2;
                            } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                            }
                        } else {
                            if ((i & 4) != 4) {
                                this.i = new ArrayList();
                                i |= 4;
                            }
                            this.i.add((ProtoBuf$TypeAlias) codedInputStream.r(ProtoBuf$TypeAlias.f9560d, extensionRegistryLite));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 1) == 1) {
                        this.f9504g = Collections.unmodifiableList(this.f9504g);
                    }
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
                        this.f9502e = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9502e = bVarNewOutput.f();
                    h();
                    throw th;
                }
            } catch (d e2) {
                throw e2.k(this);
            } catch (IOException e3) {
                throw new d(e3.getMessage()).k(this);
            }
        }
        if ((i & 1) == 1) {
            this.f9504g = Collections.unmodifiableList(this.f9504g);
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
            this.f9502e = bVarNewOutput.f();
            throw th3;
        }
        this.f9502e = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$Package(GeneratedMessageLite.c<ProtoBuf$Package, ?> cVar) {
        super(cVar);
        this.l = (byte) -1;
        this.m = -1;
        this.f9502e = cVar.g();
    }

    private ProtoBuf$Package(boolean z) {
        this.l = (byte) -1;
        this.m = -1;
        this.f9502e = ByteString.a;
    }

    private void T() {
        this.f9504g = Collections.emptyList();
        this.h = Collections.emptyList();
        this.i = Collections.emptyList();
        this.j = ProtoBuf$TypeTable.getDefaultInstance();
        this.k = ProtoBuf$VersionRequirementTable.getDefaultInstance();
    }

    public static ProtoBuf$Package getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$Package protoBuf$Package) {
        return newBuilder().h(protoBuf$Package);
    }

    public static ProtoBuf$Package parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return f9501d.a(inputStream, extensionRegistryLite);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Package getDefaultInstanceForType() {
        return c;
    }

    public ProtoBuf$Function G(int i) {
        return this.f9504g.get(i);
    }

    public int H() {
        return this.f9504g.size();
    }

    public List<ProtoBuf$Function> I() {
        return this.f9504g;
    }

    public ProtoBuf$Property J(int i) {
        return this.h.get(i);
    }

    public int K() {
        return this.h.size();
    }

    public List<ProtoBuf$Property> L() {
        return this.h;
    }

    public ProtoBuf$TypeAlias M(int i) {
        return this.i.get(i);
    }

    public int N() {
        return this.i.size();
    }

    public List<ProtoBuf$TypeAlias> O() {
        return this.i;
    }

    public ProtoBuf$TypeTable P() {
        return this.j;
    }

    public ProtoBuf$VersionRequirementTable Q() {
        return this.k;
    }

    public boolean R() {
        return (this.f9503f & 1) == 1;
    }

    public boolean S() {
        return (this.f9503f & 2) == 2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        for (int i = 0; i < this.f9504g.size(); i++) {
            codedOutputStream.v(3, this.f9504g.get(i));
        }
        for (int i2 = 0; i2 < this.h.size(); i2++) {
            codedOutputStream.v(4, this.h.get(i2));
        }
        for (int i3 = 0; i3 < this.i.size(); i3++) {
            codedOutputStream.v(5, this.i.get(i3));
        }
        if ((this.f9503f & 1) == 1) {
            codedOutputStream.v(30, this.j);
        }
        if ((this.f9503f & 2) == 2) {
            codedOutputStream.v(32, this.k);
        }
        aVarT.a(200, codedOutputStream);
        codedOutputStream.A(this.f9502e);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Package> getParserForType() {
        return f9501d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.m;
        if (i != -1) {
            return i;
        }
        int iComputeMessageSize = 0;
        for (int i2 = 0; i2 < this.f9504g.size(); i2++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(3, this.f9504g.get(i2));
        }
        for (int i3 = 0; i3 < this.h.size(); i3++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(4, this.h.get(i3));
        }
        for (int i4 = 0; i4 < this.i.size(); i4++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(5, this.i.get(i4));
        }
        if ((this.f9503f & 1) == 1) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(30, this.j);
        }
        if ((this.f9503f & 2) == 2) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(32, this.k);
        }
        int iN = iComputeMessageSize + n() + this.f9502e.size();
        this.m = iN;
        return iN;
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
        for (int i = 0; i < H(); i++) {
            if (!G(i).isInitialized()) {
                this.l = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < K(); i2++) {
            if (!J(i2).isInitialized()) {
                this.l = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < N(); i3++) {
            if (!M(i3).isInitialized()) {
                this.l = (byte) 0;
                return false;
            }
        }
        if (R() && !P().isInitialized()) {
            this.l = (byte) 0;
            return false;
        }
        if (m()) {
            this.l = (byte) 1;
            return true;
        }
        this.l = (byte) 0;
        return false;
    }
}
