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
public final class ProtoBuf$Contract extends GeneratedMessageLite implements k {
    private static final ProtoBuf$Contract b;
    public static l<ProtoBuf$Contract> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<ProtoBuf$Effect> f9452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte f9453f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9454g;

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Contract> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Contract c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Contract(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$Contract, b> implements k {
        private int b;
        private List<ProtoBuf$Effect> c = Collections.emptyList();

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
        public ProtoBuf$Contract build() {
            ProtoBuf$Contract protoBuf$ContractL = l();
            if (protoBuf$ContractL.isInitialized()) {
                return protoBuf$ContractL;
            }
            throw a.AbstractC0539a.e(protoBuf$ContractL);
        }

        public ProtoBuf$Contract l() {
            ProtoBuf$Contract protoBuf$Contract = new ProtoBuf$Contract(this);
            if ((this.b & 1) == 1) {
                this.c = Collections.unmodifiableList(this.c);
                this.b &= -2;
            }
            protoBuf$Contract.f9452e = this.c;
            return protoBuf$Contract;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b f() {
            return n().h(l());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Contract protoBuf$Contract) {
            if (protoBuf$Contract == ProtoBuf$Contract.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Contract.f9452e.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = protoBuf$Contract.f9452e;
                    this.b &= -2;
                } else {
                    o();
                    this.c.addAll(protoBuf$Contract.f9452e);
                }
            }
            i(g().c(protoBuf$Contract.f9451d));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract$b");
        }
    }

    static {
        ProtoBuf$Contract protoBuf$Contract = new ProtoBuf$Contract(true);
        b = protoBuf$Contract;
        protoBuf$Contract.r();
    }

    private ProtoBuf$Contract(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.f9453f = (byte) -1;
        this.f9454g = -1;
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
                            if (!(z2 & true)) {
                                this.f9452e = new ArrayList();
                                z2 |= true;
                            }
                            this.f9452e.add((ProtoBuf$Effect) codedInputStream.r(ProtoBuf$Effect.c, extensionRegistryLite));
                        } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.f9452e = Collections.unmodifiableList(this.f9452e);
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9451d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9451d = bVarNewOutput.f();
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
            this.f9452e = Collections.unmodifiableList(this.f9452e);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9451d = bVarNewOutput.f();
            throw th3;
        }
        this.f9451d = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$Contract(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.f9453f = (byte) -1;
        this.f9454g = -1;
        this.f9451d = bVar.g();
    }

    private ProtoBuf$Contract(boolean z) {
        this.f9453f = (byte) -1;
        this.f9454g = -1;
        this.f9451d = ByteString.a;
    }

    public static ProtoBuf$Contract getDefaultInstance() {
        return b;
    }

    public static b newBuilder() {
        return b.n();
    }

    public static b newBuilder(ProtoBuf$Contract protoBuf$Contract) {
        return newBuilder().h(protoBuf$Contract);
    }

    private void r() {
        this.f9452e = Collections.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        for (int i = 0; i < this.f9452e.size(); i++) {
            codedOutputStream.v(1, this.f9452e.get(i));
        }
        codedOutputStream.A(this.f9451d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Contract> getParserForType() {
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.f9454g;
        if (i != -1) {
            return i;
        }
        int iComputeMessageSize = 0;
        for (int i2 = 0; i2 < this.f9452e.size(); i2++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.f9452e.get(i2));
        }
        int size = iComputeMessageSize + this.f9451d.size();
        this.f9454g = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.f9453f;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i = 0; i < q(); i++) {
            if (!p(i).isInitialized()) {
                this.f9453f = (byte) 0;
                return false;
            }
        }
        this.f9453f = (byte) 1;
        return true;
    }

    public ProtoBuf$Effect p(int i) {
        return this.f9452e.get(i);
    }

    public int q() {
        return this.f9452e.size();
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
