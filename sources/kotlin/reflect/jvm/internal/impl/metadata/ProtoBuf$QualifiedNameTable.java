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
public final class ProtoBuf$QualifiedNameTable extends GeneratedMessageLite implements k {
    private static final ProtoBuf$QualifiedNameTable b;
    public static l<ProtoBuf$QualifiedNameTable> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<QualifiedName> f9526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte f9527f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9528g;

    public static final class QualifiedName extends GeneratedMessageLite implements k {
        private static final QualifiedName b;
        public static l<QualifiedName> c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ByteString f9529d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9530e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9531f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9532g;
        private Kind h;
        private byte i;
        private int j;

        public enum Kind implements Internal.a {
            CLASS(0, 0),
            PACKAGE(1, 1),
            LOCAL(2, 2);


            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static Internal.b<Kind> f9533d = new a();

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private final int f9535f;

            static class a implements Internal.b<Kind> {
                a() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Kind findValueByNumber(int i) {
                    return Kind.valueOf(i);
                }
            }

            Kind(int i, int i2) {
                this.f9535f = i2;
            }

            public static Kind valueOf(int i) {
                if (i == 0) {
                    return CLASS;
                }
                if (i == 1) {
                    return PACKAGE;
                }
                if (i != 2) {
                    return null;
                }
                return LOCAL;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
            public final int getNumber() {
                return this.f9535f;
            }
        }

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<QualifiedName> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public QualifiedName c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                return new QualifiedName(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class b extends GeneratedMessageLite.b<QualifiedName, b> implements k {
            private int b;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f9536d;
            private int c = -1;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private Kind f9537e = Kind.PACKAGE;

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
            public QualifiedName build() {
                QualifiedName qualifiedNameL = l();
                if (qualifiedNameL.isInitialized()) {
                    return qualifiedNameL;
                }
                throw a.AbstractC0539a.e(qualifiedNameL);
            }

            public QualifiedName l() {
                QualifiedName qualifiedName = new QualifiedName(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                qualifiedName.f9531f = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                qualifiedName.f9532g = this.f9536d;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                qualifiedName.h = this.f9537e;
                qualifiedName.f9530e = i2;
                return qualifiedName;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public b f() {
                return n().h(l());
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
            public b h(QualifiedName qualifiedName) {
                if (qualifiedName == QualifiedName.getDefaultInstance()) {
                    return this;
                }
                if (qualifiedName.v()) {
                    s(qualifiedName.s());
                }
                if (qualifiedName.w()) {
                    t(qualifiedName.t());
                }
                if (qualifiedName.u()) {
                    r(qualifiedName.r());
                }
                i(g().c(qualifiedName.f9529d));
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
            /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.QualifiedNameTable.QualifiedName.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.QualifiedName.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.QualifiedName) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.QualifiedName) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.QualifiedNameTable.QualifiedName.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$QualifiedName$b");
            }

            public b r(Kind kind) {
                Objects.requireNonNull(kind);
                this.b |= 4;
                this.f9537e = kind;
                return this;
            }

            public b s(int i) {
                this.b |= 1;
                this.c = i;
                return this;
            }

            public b t(int i) {
                this.b |= 2;
                this.f9536d = i;
                return this;
            }
        }

        static {
            QualifiedName qualifiedName = new QualifiedName(true);
            b = qualifiedName;
            qualifiedName.x();
        }

        private QualifiedName(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            this.i = (byte) -1;
            this.j = -1;
            x();
            ByteString.b bVarNewOutput = ByteString.newOutput();
            CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iG = codedInputStream.G();
                        if (iG != 0) {
                            if (iG == 8) {
                                this.f9530e |= 1;
                                this.f9531f = codedInputStream.p();
                            } else if (iG == 16) {
                                this.f9530e |= 2;
                                this.f9532g = codedInputStream.p();
                            } else if (iG == 24) {
                                int iK = codedInputStream.k();
                                Kind kindValueOf = Kind.valueOf(iK);
                                if (kindValueOf == null) {
                                    codedOutputStreamNewInstance.G(iG);
                                    codedOutputStreamNewInstance.G(iK);
                                } else {
                                    this.f9530e |= 4;
                                    this.h = kindValueOf;
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
                        this.f9529d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9529d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            }
            try {
                codedOutputStreamNewInstance.b();
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                this.f9529d = bVarNewOutput.f();
                throw th3;
            }
            this.f9529d = bVarNewOutput.f();
            h();
        }

        private QualifiedName(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.i = (byte) -1;
            this.j = -1;
            this.f9529d = bVar.g();
        }

        private QualifiedName(boolean z) {
            this.i = (byte) -1;
            this.j = -1;
            this.f9529d = ByteString.a;
        }

        public static QualifiedName getDefaultInstance() {
            return b;
        }

        public static b newBuilder() {
            return b.n();
        }

        public static b newBuilder(QualifiedName qualifiedName) {
            return newBuilder().h(qualifiedName);
        }

        private void x() {
            this.f9531f = -1;
            this.f9532g = 0;
            this.h = Kind.PACKAGE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public void b(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.f9530e & 1) == 1) {
                codedOutputStream.s(1, this.f9531f);
            }
            if ((this.f9530e & 2) == 2) {
                codedOutputStream.s(2, this.f9532g);
            }
            if ((this.f9530e & 4) == 4) {
                codedOutputStream.k(3, this.h.getNumber());
            }
            codedOutputStream.A(this.f9529d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
        public l<QualifiedName> getParserForType() {
            return c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public int getSerializedSize() {
            int i = this.j;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.f9530e & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.f9531f) : 0;
            if ((this.f9530e & 2) == 2) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.f9532g);
            }
            if ((this.f9530e & 4) == 4) {
                iComputeInt32Size += CodedOutputStream.computeEnumSize(3, this.h.getNumber());
            }
            int size = iComputeInt32Size + this.f9529d.size();
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
            if (w()) {
                this.i = (byte) 1;
                return true;
            }
            this.i = (byte) 0;
            return false;
        }

        public Kind r() {
            return this.h;
        }

        public int s() {
            return this.f9531f;
        }

        public int t() {
            return this.f9532g;
        }

        public boolean u() {
            return (this.f9530e & 4) == 4;
        }

        public boolean v() {
            return (this.f9530e & 1) == 1;
        }

        public boolean w() {
            return (this.f9530e & 2) == 2;
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

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$QualifiedNameTable> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$QualifiedNameTable c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$QualifiedNameTable(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$QualifiedNameTable, b> implements k {
        private int b;
        private List<QualifiedName> c = Collections.emptyList();

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
        public ProtoBuf$QualifiedNameTable build() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTableL = l();
            if (protoBuf$QualifiedNameTableL.isInitialized()) {
                return protoBuf$QualifiedNameTableL;
            }
            throw a.AbstractC0539a.e(protoBuf$QualifiedNameTableL);
        }

        public ProtoBuf$QualifiedNameTable l() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable(this);
            if ((this.b & 1) == 1) {
                this.c = Collections.unmodifiableList(this.c);
                this.b &= -2;
            }
            protoBuf$QualifiedNameTable.f9526e = this.c;
            return protoBuf$QualifiedNameTable;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b f() {
            return n().h(l());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            if (protoBuf$QualifiedNameTable == ProtoBuf$QualifiedNameTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$QualifiedNameTable.f9526e.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = protoBuf$QualifiedNameTable.f9526e;
                    this.b &= -2;
                } else {
                    o();
                    this.c.addAll(protoBuf$QualifiedNameTable.f9526e);
                }
            }
            i(g().c(protoBuf$QualifiedNameTable.f9525d));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable$b");
        }
    }

    static {
        ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable(true);
        b = protoBuf$QualifiedNameTable;
        protoBuf$QualifiedNameTable.r();
    }

    private ProtoBuf$QualifiedNameTable(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.f9527f = (byte) -1;
        this.f9528g = -1;
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
                                this.f9526e = new ArrayList();
                                z2 |= true;
                            }
                            this.f9526e.add((QualifiedName) codedInputStream.r(QualifiedName.c, extensionRegistryLite));
                        } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2 & true) {
                        this.f9526e = Collections.unmodifiableList(this.f9526e);
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9525d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9525d = bVarNewOutput.f();
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
            this.f9526e = Collections.unmodifiableList(this.f9526e);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9525d = bVarNewOutput.f();
            throw th3;
        }
        this.f9525d = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$QualifiedNameTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.f9527f = (byte) -1;
        this.f9528g = -1;
        this.f9525d = bVar.g();
    }

    private ProtoBuf$QualifiedNameTable(boolean z) {
        this.f9527f = (byte) -1;
        this.f9528g = -1;
        this.f9525d = ByteString.a;
    }

    public static ProtoBuf$QualifiedNameTable getDefaultInstance() {
        return b;
    }

    public static b newBuilder() {
        return b.n();
    }

    public static b newBuilder(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
        return newBuilder().h(protoBuf$QualifiedNameTable);
    }

    private void r() {
        this.f9526e = Collections.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        for (int i = 0; i < this.f9526e.size(); i++) {
            codedOutputStream.v(1, this.f9526e.get(i));
        }
        codedOutputStream.A(this.f9525d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$QualifiedNameTable> getParserForType() {
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.f9528g;
        if (i != -1) {
            return i;
        }
        int iComputeMessageSize = 0;
        for (int i2 = 0; i2 < this.f9526e.size(); i2++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.f9526e.get(i2));
        }
        int size = iComputeMessageSize + this.f9525d.size();
        this.f9528g = size;
        return size;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.f9527f;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        for (int i = 0; i < q(); i++) {
            if (!p(i).isInitialized()) {
                this.f9527f = (byte) 0;
                return false;
            }
        }
        this.f9527f = (byte) 1;
        return true;
    }

    public QualifiedName p(int i) {
        return this.f9526e.get(i);
    }

    public int q() {
        return this.f9526e.size();
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
