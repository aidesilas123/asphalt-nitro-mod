package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.a;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.g;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.protobuf.k;
import kotlin.reflect.jvm.internal.impl.protobuf.l;
import kotlin.reflect.jvm.internal.impl.protobuf.m;

/* JADX INFO: loaded from: classes5.dex */
public final class ProtoBuf$StringTable extends GeneratedMessageLite implements k {
    private static final ProtoBuf$StringTable b;
    public static l<ProtoBuf$StringTable> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9538d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f9539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte f9540f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9541g;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$StringTable> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$StringTable c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$StringTable(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$StringTable, b> implements k {
        private int b;
        private h c = g.a;

        private b() {
            p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b n() {
            return new b();
        }

        private void o() {
            if ((this.b & 1) != 1) {
                this.c = new g(this.c);
                this.b |= 1;
            }
        }

        private void p() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$StringTable build() {
            ProtoBuf$StringTable protoBuf$StringTableL = l();
            if (protoBuf$StringTableL.isInitialized()) {
                return protoBuf$StringTableL;
            }
            throw a.AbstractC0539a.e(protoBuf$StringTableL);
        }

        public ProtoBuf$StringTable l() {
            ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable(this);
            if ((this.b & 1) == 1) {
                this.c = this.c.getUnmodifiableView();
                this.b &= -2;
            }
            protoBuf$StringTable.f9539e = this.c;
            return protoBuf$StringTable;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b f() {
            return n().h(l());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$StringTable protoBuf$StringTable) {
            if (protoBuf$StringTable == ProtoBuf$StringTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$StringTable.f9539e.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = protoBuf$StringTable.f9539e;
                    this.b &= -2;
                } else {
                    o();
                    this.c.addAll(protoBuf$StringTable.f9539e);
                }
            }
            i(g().c(protoBuf$StringTable.f9538d));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable$b");
        }
    }

    static {
        ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable(true);
        b = protoBuf$StringTable;
        protoBuf$StringTable.r();
    }

    private ProtoBuf$StringTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.f9540f = (byte) -1;
        this.f9541g = -1;
        r();
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
                            ByteString byteStringI = codedInputStream.i();
                            if (!(z2 & true)) {
                                this.f9539e = new g();
                                z2 |= true;
                            }
                            this.f9539e.p(byteStringI);
                        } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.f9539e = this.f9539e.getUnmodifiableView();
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9538d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9538d = bVarNewOutput.f();
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
            this.f9539e = this.f9539e.getUnmodifiableView();
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9538d = bVarNewOutput.f();
            throw th3;
        }
        this.f9538d = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$StringTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.f9540f = (byte) -1;
        this.f9541g = -1;
        this.f9538d = bVar.g();
    }

    private ProtoBuf$StringTable(boolean z) {
        this.f9540f = (byte) -1;
        this.f9541g = -1;
        this.f9538d = ByteString.a;
    }

    public static ProtoBuf$StringTable getDefaultInstance() {
        return b;
    }

    public static b newBuilder() {
        return b.n();
    }

    public static b newBuilder(ProtoBuf$StringTable protoBuf$StringTable) {
        return newBuilder().h(protoBuf$StringTable);
    }

    private void r() {
        this.f9539e = g.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        for (int i = 0; i < this.f9539e.size(); i++) {
            codedOutputStream.g(1, this.f9539e.getByteString(i));
        }
        codedOutputStream.A(this.f9538d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$StringTable> getParserForType() {
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.f9541g;
        if (i != -1) {
            return i;
        }
        int iComputeBytesSizeNoTag = 0;
        for (int i2 = 0; i2 < this.f9539e.size(); i2++) {
            iComputeBytesSizeNoTag += CodedOutputStream.computeBytesSizeNoTag(this.f9539e.getByteString(i2));
        }
        int size = 0 + iComputeBytesSizeNoTag + (q().size() * 1) + this.f9538d.size();
        this.f9541g = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.f9540f;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.f9540f = (byte) 1;
        return true;
    }

    public String p(int i) {
        return this.f9539e.get(i);
    }

    public m q() {
        return this.f9539e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }
}
