package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression;
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
public final class ProtoBuf$Effect extends GeneratedMessageLite implements k {
    private static final ProtoBuf$Effect b;
    public static l<ProtoBuf$Effect> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ByteString f9455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private EffectType f9457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<ProtoBuf$Expression> f9458g;
    private ProtoBuf$Expression h;
    private InvocationKind i;
    private byte j;
    private int k;

    public enum EffectType implements Internal.a {
        RETURNS_CONSTANT(0, 0),
        CALLS(1, 1),
        RETURNS_NOT_NULL(2, 2);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static Internal.b<EffectType> f9459d = new a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f9461f;

        static class a implements Internal.b<EffectType> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public EffectType findValueByNumber(int i) {
                return EffectType.valueOf(i);
            }
        }

        EffectType(int i, int i2) {
            this.f9461f = i2;
        }

        public static EffectType valueOf(int i) {
            if (i == 0) {
                return RETURNS_CONSTANT;
            }
            if (i == 1) {
                return CALLS;
            }
            if (i != 2) {
                return null;
            }
            return RETURNS_NOT_NULL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
        public final int getNumber() {
            return this.f9461f;
        }
    }

    public enum InvocationKind implements Internal.a {
        AT_MOST_ONCE(0, 0),
        EXACTLY_ONCE(1, 1),
        AT_LEAST_ONCE(2, 2);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static Internal.b<InvocationKind> f9462d = new a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f9464f;

        static class a implements Internal.b<InvocationKind> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public InvocationKind findValueByNumber(int i) {
                return InvocationKind.valueOf(i);
            }
        }

        InvocationKind(int i, int i2) {
            this.f9464f = i2;
        }

        public static InvocationKind valueOf(int i) {
            if (i == 0) {
                return AT_MOST_ONCE;
            }
            if (i == 1) {
                return EXACTLY_ONCE;
            }
            if (i != 2) {
                return null;
            }
            return AT_LEAST_ONCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
        public final int getNumber() {
            return this.f9464f;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Effect> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Effect c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Effect(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.b<ProtoBuf$Effect, b> implements k {
        private int b;
        private EffectType c = EffectType.RETURNS_CONSTANT;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<ProtoBuf$Expression> f9465d = Collections.emptyList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ProtoBuf$Expression f9466e = ProtoBuf$Expression.getDefaultInstance();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private InvocationKind f9467f = InvocationKind.AT_MOST_ONCE;

        private b() {
            p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b n() {
            return new b();
        }

        private void o() {
            if ((this.b & 2) != 2) {
                this.f9465d = new ArrayList(this.f9465d);
                this.b |= 2;
            }
        }

        private void p() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Effect build() {
            ProtoBuf$Effect protoBuf$EffectL = l();
            if (protoBuf$EffectL.isInitialized()) {
                return protoBuf$EffectL;
            }
            throw a.AbstractC0539a.e(protoBuf$EffectL);
        }

        public ProtoBuf$Effect l() {
            ProtoBuf$Effect protoBuf$Effect = new ProtoBuf$Effect(this);
            int i = this.b;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Effect.f9457f = this.c;
            if ((this.b & 2) == 2) {
                this.f9465d = Collections.unmodifiableList(this.f9465d);
                this.b &= -3;
            }
            protoBuf$Effect.f9458g = this.f9465d;
            if ((i & 4) == 4) {
                i2 |= 2;
            }
            protoBuf$Effect.h = this.f9466e;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$Effect.i = this.f9467f;
            protoBuf$Effect.f9456e = i2;
            return protoBuf$Effect;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public b f() {
            return n().h(l());
        }

        public b q(ProtoBuf$Expression protoBuf$Expression) {
            if ((this.b & 4) != 4 || this.f9466e == ProtoBuf$Expression.getDefaultInstance()) {
                this.f9466e = protoBuf$Expression;
            } else {
                this.f9466e = ProtoBuf$Expression.newBuilder(this.f9466e).h(protoBuf$Expression).l();
            }
            this.b |= 4;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Effect protoBuf$Effect) {
            if (protoBuf$Effect == ProtoBuf$Effect.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Effect.z()) {
                t(protoBuf$Effect.w());
            }
            if (!protoBuf$Effect.f9458g.isEmpty()) {
                if (this.f9465d.isEmpty()) {
                    this.f9465d = protoBuf$Effect.f9458g;
                    this.b &= -3;
                } else {
                    o();
                    this.f9465d.addAll(protoBuf$Effect.f9458g);
                }
            }
            if (protoBuf$Effect.y()) {
                q(protoBuf$Effect.t());
            }
            if (protoBuf$Effect.A()) {
                u(protoBuf$Effect.x());
            }
            i(g().c(protoBuf$Effect.f9455d));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect$b");
        }

        public b t(EffectType effectType) {
            Objects.requireNonNull(effectType);
            this.b |= 1;
            this.c = effectType;
            return this;
        }

        public b u(InvocationKind invocationKind) {
            Objects.requireNonNull(invocationKind);
            this.b |= 8;
            this.f9467f = invocationKind;
            return this;
        }
    }

    static {
        ProtoBuf$Effect protoBuf$Effect = new ProtoBuf$Effect(true);
        b = protoBuf$Effect;
        protoBuf$Effect.B();
    }

    private ProtoBuf$Effect(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.j = (byte) -1;
        this.k = -1;
        B();
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
                            int iK = codedInputStream.k();
                            EffectType effectTypeValueOf = EffectType.valueOf(iK);
                            if (effectTypeValueOf == null) {
                                codedOutputStreamNewInstance.G(iG);
                                codedOutputStreamNewInstance.G(iK);
                            } else {
                                this.f9456e |= 1;
                                this.f9457f = effectTypeValueOf;
                            }
                        } else if (iG == 18) {
                            if ((i & 2) != 2) {
                                this.f9458g = new ArrayList();
                                i |= 2;
                            }
                            this.f9458g.add((ProtoBuf$Expression) codedInputStream.r(ProtoBuf$Expression.c, extensionRegistryLite));
                        } else if (iG == 26) {
                            ProtoBuf$Expression.b builder = (this.f9456e & 2) == 2 ? this.h.toBuilder() : null;
                            ProtoBuf$Expression protoBuf$Expression = (ProtoBuf$Expression) codedInputStream.r(ProtoBuf$Expression.c, extensionRegistryLite);
                            this.h = protoBuf$Expression;
                            if (builder != null) {
                                builder.h(protoBuf$Expression);
                                this.h = builder.l();
                            }
                            this.f9456e |= 2;
                        } else if (iG == 32) {
                            int iK2 = codedInputStream.k();
                            InvocationKind invocationKindValueOf = InvocationKind.valueOf(iK2);
                            if (invocationKindValueOf == null) {
                                codedOutputStreamNewInstance.G(iG);
                                codedOutputStreamNewInstance.G(iK2);
                            } else {
                                this.f9456e |= 4;
                                this.i = invocationKindValueOf;
                            }
                        } else if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 2) == 2) {
                        this.f9458g = Collections.unmodifiableList(this.f9458g);
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9455d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9455d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            } catch (d e2) {
                throw e2.k(this);
            } catch (IOException e3) {
                throw new d(e3.getMessage()).k(this);
            }
        }
        if ((i & 2) == 2) {
            this.f9458g = Collections.unmodifiableList(this.f9458g);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9455d = bVarNewOutput.f();
            throw th3;
        }
        this.f9455d = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$Effect(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.j = (byte) -1;
        this.k = -1;
        this.f9455d = bVar.g();
    }

    private ProtoBuf$Effect(boolean z) {
        this.j = (byte) -1;
        this.k = -1;
        this.f9455d = ByteString.a;
    }

    private void B() {
        this.f9457f = EffectType.RETURNS_CONSTANT;
        this.f9458g = Collections.emptyList();
        this.h = ProtoBuf$Expression.getDefaultInstance();
        this.i = InvocationKind.AT_MOST_ONCE;
    }

    public static ProtoBuf$Effect getDefaultInstance() {
        return b;
    }

    public static b newBuilder() {
        return b.n();
    }

    public static b newBuilder(ProtoBuf$Effect protoBuf$Effect) {
        return newBuilder().h(protoBuf$Effect);
    }

    public boolean A() {
        return (this.f9456e & 4) == 4;
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
        if ((this.f9456e & 1) == 1) {
            codedOutputStream.k(1, this.f9457f.getNumber());
        }
        for (int i = 0; i < this.f9458g.size(); i++) {
            codedOutputStream.v(2, this.f9458g.get(i));
        }
        if ((this.f9456e & 2) == 2) {
            codedOutputStream.v(3, this.h);
        }
        if ((this.f9456e & 4) == 4) {
            codedOutputStream.k(4, this.i.getNumber());
        }
        codedOutputStream.A(this.f9455d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Effect> getParserForType() {
        return c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.k;
        if (i != -1) {
            return i;
        }
        int iComputeEnumSize = (this.f9456e & 1) == 1 ? CodedOutputStream.computeEnumSize(1, this.f9457f.getNumber()) + 0 : 0;
        for (int i2 = 0; i2 < this.f9458g.size(); i2++) {
            iComputeEnumSize += CodedOutputStream.computeMessageSize(2, this.f9458g.get(i2));
        }
        if ((this.f9456e & 2) == 2) {
            iComputeEnumSize += CodedOutputStream.computeMessageSize(3, this.h);
        }
        if ((this.f9456e & 4) == 4) {
            iComputeEnumSize += CodedOutputStream.computeEnumSize(4, this.i.getNumber());
        }
        int size = iComputeEnumSize + this.f9455d.size();
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
        for (int i = 0; i < v(); i++) {
            if (!u(i).isInitialized()) {
                this.j = (byte) 0;
                return false;
            }
        }
        if (!y() || t().isInitialized()) {
            this.j = (byte) 1;
            return true;
        }
        this.j = (byte) 0;
        return false;
    }

    public ProtoBuf$Expression t() {
        return this.h;
    }

    public ProtoBuf$Expression u(int i) {
        return this.f9458g.get(i);
    }

    public int v() {
        return this.f9458g.size();
    }

    public EffectType w() {
        return this.f9457f;
    }

    public InvocationKind x() {
        return this.i;
    }

    public boolean y() {
        return (this.f9456e & 2) == 2;
    }

    public boolean z() {
        return (this.f9456e & 1) == 1;
    }
}
