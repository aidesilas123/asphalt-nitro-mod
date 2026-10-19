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
public final class ProtoBuf$TypeTable extends GeneratedMessageLite implements k {
    private static final ProtoBuf$TypeTable b;
    public static l<ProtoBuf$TypeTable> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9579d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9580e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<ProtoBuf$Type> f9581f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9582g;
    private byte h;
    private int i;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$TypeTable> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeTable c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$TypeTable(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$TypeTable, b> implements k {
        private int b;
        private List<ProtoBuf$Type> c = Collections.emptyList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9583d = -1;

        private b() {
            p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b n() {
            return new b();
        }

        private void o() {
            if ((this.b & 1) != 1) {
                this.c = new ArrayList(this.c);
                this.b |= 1;
            }
        }

        private void p() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$TypeTable build() {
            ProtoBuf$TypeTable protoBuf$TypeTableL = l();
            if (protoBuf$TypeTableL.isInitialized()) {
                return protoBuf$TypeTableL;
            }
            throw a.AbstractC0539a.e(protoBuf$TypeTableL);
        }

        public ProtoBuf$TypeTable l() {
            ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable(this);
            int i = this.b;
            if ((i & 1) == 1) {
                this.c = Collections.unmodifiableList(this.c);
                this.b &= -2;
            }
            protoBuf$TypeTable.f9581f = this.c;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$TypeTable.f9582g = this.f9583d;
            protoBuf$TypeTable.f9580e = i2;
            return protoBuf$TypeTable;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b f() {
            return n().h(l());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if (protoBuf$TypeTable == ProtoBuf$TypeTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$TypeTable.f9581f.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = protoBuf$TypeTable.f9581f;
                    this.b &= -2;
                } else {
                    o();
                    this.c.addAll(protoBuf$TypeTable.f9581f);
                }
            }
            if (protoBuf$TypeTable.v()) {
                s(protoBuf$TypeTable.r());
            }
            i(g().c(protoBuf$TypeTable.f9579d));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable$b");
        }

        public b s(int i) {
            this.b |= 2;
            this.f9583d = i;
            return this;
        }
    }

    static {
        ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable(true);
        b = protoBuf$TypeTable;
        protoBuf$TypeTable.w();
    }

    private ProtoBuf$TypeTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.h = (byte) -1;
        this.i = -1;
        w();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    if (iG != 0) {
                        if (iG == 10) {
                            if (!(z2 & true)) {
                                this.f9581f = new ArrayList();
                                z2 |= true;
                            }
                            this.f9581f.add((ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite));
                        } else if (iG == 16) {
                            this.f9580e |= 1;
                            this.f9582g = codedInputStream.p();
                        } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.f9581f = Collections.unmodifiableList(this.f9581f);
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9579d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9579d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            } catch (d e2) {
                throw e2.k(this);
            } catch (IOException e3) {
                throw new d(e3.getMessage()).k(this);
            }
        }
        if (z2 & true) {
            this.f9581f = Collections.unmodifiableList(this.f9581f);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9579d = bVarNewOutput.f();
            throw th3;
        }
        this.f9579d = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$TypeTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.h = (byte) -1;
        this.i = -1;
        this.f9579d = bVar.g();
    }

    private ProtoBuf$TypeTable(boolean z) {
        this.h = (byte) -1;
        this.i = -1;
        this.f9579d = ByteString.a;
    }

    public static ProtoBuf$TypeTable getDefaultInstance() {
        return b;
    }

    public static b newBuilder() {
        return b.n();
    }

    public static b newBuilder(ProtoBuf$TypeTable protoBuf$TypeTable) {
        return newBuilder().h(protoBuf$TypeTable);
    }

    private void w() {
        this.f9581f = Collections.emptyList();
        this.f9582g = -1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        for (int i = 0; i < this.f9581f.size(); i++) {
            codedOutputStream.v(1, this.f9581f.get(i));
        }
        if ((this.f9580e & 1) == 1) {
            codedOutputStream.s(2, this.f9582g);
        }
        codedOutputStream.A(this.f9579d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$TypeTable> getParserForType() {
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.i;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = 0;
        for (int i2 = 0; i2 < this.f9581f.size(); i2++) {
            iComputeInt32Size += CodedOutputStream.computeMessageSize(1, this.f9581f.get(i2));
        }
        if ((this.f9580e & 1) == 1) {
            iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.f9582g);
        }
        int size = iComputeInt32Size + this.f9579d.size();
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
        for (int i = 0; i < t(); i++) {
            if (!s(i).isInitialized()) {
                this.h = (byte) 0;
                return false;
            }
        }
        this.h = (byte) 1;
        return true;
    }

    public int r() {
        return this.f9582g;
    }

    public ProtoBuf$Type s(int i) {
        return this.f9581f.get(i);
    }

    public int t() {
        return this.f9581f.size();
    }

    public List<ProtoBuf$Type> u() {
        return this.f9581f;
    }

    public boolean v() {
        return (this.f9580e & 1) == 1;
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
