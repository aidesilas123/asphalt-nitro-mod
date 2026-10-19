package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
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
public final class ProtoBuf$EnumEntry extends GeneratedMessageLite.d<ProtoBuf$EnumEntry> implements k {
    private static final ProtoBuf$EnumEntry c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$EnumEntry> f9468d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9470f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9471g;
    private byte h;
    private int i;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$EnumEntry> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$EnumEntry c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$EnumEntry(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$EnumEntry, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9472d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9473e;

        private b() {
            s();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$EnumEntry build() {
            ProtoBuf$EnumEntry protoBuf$EnumEntryP = p();
            if (protoBuf$EnumEntryP.isInitialized()) {
                return protoBuf$EnumEntryP;
            }
            throw a.AbstractC0539a.e(protoBuf$EnumEntryP);
        }

        public ProtoBuf$EnumEntry p() {
            ProtoBuf$EnumEntry protoBuf$EnumEntry = new ProtoBuf$EnumEntry(this);
            int i = (this.f9472d & 1) != 1 ? 0 : 1;
            protoBuf$EnumEntry.f9471g = this.f9473e;
            protoBuf$EnumEntry.f9470f = i;
            return protoBuf$EnumEntry;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$EnumEntry protoBuf$EnumEntry) {
            if (protoBuf$EnumEntry == ProtoBuf$EnumEntry.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$EnumEntry.A()) {
                v(protoBuf$EnumEntry.z());
            }
            m(protoBuf$EnumEntry);
            i(g().c(protoBuf$EnumEntry.f9469e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry.f9468d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry$b");
        }

        public b v(int i) {
            this.f9472d |= 1;
            this.f9473e = i;
            return this;
        }
    }

    static {
        ProtoBuf$EnumEntry protoBuf$EnumEntry = new ProtoBuf$EnumEntry(true);
        c = protoBuf$EnumEntry;
        protoBuf$EnumEntry.B();
    }

    private ProtoBuf$EnumEntry(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.h = (byte) -1;
        this.i = -1;
        B();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    if (iG != 0) {
                        if (iG == 8) {
                            this.f9470f |= 1;
                            this.f9471g = codedInputStream.p();
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
                    this.f9469e = bVarNewOutput.f();
                    throw th2;
                }
                this.f9469e = bVarNewOutput.f();
                h();
                throw th;
            }
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9469e = bVarNewOutput.f();
            throw th3;
        }
        this.f9469e = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$EnumEntry(GeneratedMessageLite.c<ProtoBuf$EnumEntry, ?> cVar) {
        super(cVar);
        this.h = (byte) -1;
        this.i = -1;
        this.f9469e = cVar.g();
    }

    private ProtoBuf$EnumEntry(boolean z) {
        this.h = (byte) -1;
        this.i = -1;
        this.f9469e = ByteString.a;
    }

    private void B() {
        this.f9471g = 0;
    }

    public static ProtoBuf$EnumEntry getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$EnumEntry protoBuf$EnumEntry) {
        return newBuilder().h(protoBuf$EnumEntry);
    }

    public boolean A() {
        return (this.f9470f & 1) == 1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9470f & 1) == 1) {
            codedOutputStream.s(1, this.f9471g);
        }
        aVarT.a(200, codedOutputStream);
        codedOutputStream.A(this.f9469e);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$EnumEntry> getParserForType() {
        return f9468d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.i;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = ((this.f9470f & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.f9471g) : 0) + n() + this.f9469e.size();
        this.i = iComputeInt32Size;
        return iComputeInt32Size;
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
        if (m()) {
            this.h = (byte) 1;
            return true;
        }
        this.h = (byte) 0;
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$EnumEntry getDefaultInstanceForType() {
        return c;
    }

    public int z() {
        return this.f9471g;
    }
}
