package kotlin.reflect.jvm.internal.impl.metadata.jvm;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat;
import kotlin.reflect.jvm.internal.impl.protobuf.a;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.k;
import kotlin.reflect.jvm.internal.impl.protobuf.l;

/* JADX INFO: loaded from: classes5.dex */
public final class JvmProtoBuf {
    public static final GeneratedMessageLite.f<ProtoBuf$Constructor, JvmMethodSignature> a;
    public static final GeneratedMessageLite.f<ProtoBuf$Function, JvmMethodSignature> b;
    public static final GeneratedMessageLite.f<ProtoBuf$Function, Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final GeneratedMessageLite.f<ProtoBuf$Property, JvmPropertySignature> f9631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final GeneratedMessageLite.f<ProtoBuf$Property, Integer> f9632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final GeneratedMessageLite.f<ProtoBuf$Type, List<ProtoBuf$Annotation>> f9633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final GeneratedMessageLite.f<ProtoBuf$Type, Boolean> f9634g;
    public static final GeneratedMessageLite.f<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> h;
    public static final GeneratedMessageLite.f<ProtoBuf$Class, Integer> i;
    public static final GeneratedMessageLite.f<ProtoBuf$Class, List<ProtoBuf$Property>> j;
    public static final GeneratedMessageLite.f<ProtoBuf$Class, Integer> k;
    public static final GeneratedMessageLite.f<ProtoBuf$Package, Integer> l;
    public static final GeneratedMessageLite.f<ProtoBuf$Package, List<ProtoBuf$Property>> m;

    public static final class JvmFieldSignature extends GeneratedMessageLite implements k {
        private static final JvmFieldSignature b;
        public static l<JvmFieldSignature> c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ByteString f9635d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9636e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9637f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9638g;
        private byte h;
        private int i;

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<JvmFieldSignature> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public JvmFieldSignature c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                return new JvmFieldSignature(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class b extends GeneratedMessageLite.b<JvmFieldSignature, b> implements k {
            private int b;
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f9639d;

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
            public JvmFieldSignature build() {
                JvmFieldSignature jvmFieldSignatureL = l();
                if (jvmFieldSignatureL.isInitialized()) {
                    return jvmFieldSignatureL;
                }
                throw a.AbstractC0539a.e(jvmFieldSignatureL);
            }

            public JvmFieldSignature l() {
                JvmFieldSignature jvmFieldSignature = new JvmFieldSignature(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmFieldSignature.f9637f = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmFieldSignature.f9638g = this.f9639d;
                jvmFieldSignature.f9636e = i2;
                return jvmFieldSignature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public b f() {
                return n().h(l());
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
            public b h(JvmFieldSignature jvmFieldSignature) {
                if (jvmFieldSignature == JvmFieldSignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmFieldSignature.t()) {
                    s(jvmFieldSignature.r());
                }
                if (jvmFieldSignature.s()) {
                    r(jvmFieldSignature.q());
                }
                i(g().c(jvmFieldSignature.f9635d));
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
            /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmFieldSignature.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature> r1 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmFieldSignature.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature r3 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmFieldSignature) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature r4 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmFieldSignature) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmFieldSignature.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature$b");
            }

            public b r(int i) {
                this.b |= 2;
                this.f9639d = i;
                return this;
            }

            public b s(int i) {
                this.b |= 1;
                this.c = i;
                return this;
            }
        }

        static {
            JvmFieldSignature jvmFieldSignature = new JvmFieldSignature(true);
            b = jvmFieldSignature;
            jvmFieldSignature.u();
        }

        private JvmFieldSignature(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            this.h = (byte) -1;
            this.i = -1;
            u();
            ByteString.b bVarNewOutput = ByteString.newOutput();
            CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iG = codedInputStream.G();
                        if (iG != 0) {
                            if (iG == 8) {
                                this.f9636e |= 1;
                                this.f9637f = codedInputStream.p();
                            } else if (iG == 16) {
                                this.f9636e |= 2;
                                this.f9638g = codedInputStream.p();
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
                        this.f9635d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9635d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            }
            try {
                codedOutputStreamNewInstance.b();
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                this.f9635d = bVarNewOutput.f();
                throw th3;
            }
            this.f9635d = bVarNewOutput.f();
            h();
        }

        private JvmFieldSignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.h = (byte) -1;
            this.i = -1;
            this.f9635d = bVar.g();
        }

        private JvmFieldSignature(boolean z) {
            this.h = (byte) -1;
            this.i = -1;
            this.f9635d = ByteString.a;
        }

        public static JvmFieldSignature getDefaultInstance() {
            return b;
        }

        public static b newBuilder() {
            return b.n();
        }

        public static b newBuilder(JvmFieldSignature jvmFieldSignature) {
            return newBuilder().h(jvmFieldSignature);
        }

        private void u() {
            this.f9637f = 0;
            this.f9638g = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public void b(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.f9636e & 1) == 1) {
                codedOutputStream.s(1, this.f9637f);
            }
            if ((this.f9636e & 2) == 2) {
                codedOutputStream.s(2, this.f9638g);
            }
            codedOutputStream.A(this.f9635d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
        public l<JvmFieldSignature> getParserForType() {
            return c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public int getSerializedSize() {
            int i = this.i;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.f9636e & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.f9637f) : 0;
            if ((this.f9636e & 2) == 2) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.f9638g);
            }
            int size = iComputeInt32Size + this.f9635d.size();
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
            this.h = (byte) 1;
            return true;
        }

        public int q() {
            return this.f9638g;
        }

        public int r() {
            return this.f9637f;
        }

        public boolean s() {
            return (this.f9636e & 2) == 2;
        }

        public boolean t() {
            return (this.f9636e & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b newBuilderForType() {
            return newBuilder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public b toBuilder() {
            return newBuilder(this);
        }
    }

    public static final class JvmMethodSignature extends GeneratedMessageLite implements k {
        private static final JvmMethodSignature b;
        public static l<JvmMethodSignature> c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ByteString f9640d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9641e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9642f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9643g;
        private byte h;
        private int i;

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<JvmMethodSignature> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public JvmMethodSignature c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                return new JvmMethodSignature(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class b extends GeneratedMessageLite.b<JvmMethodSignature, b> implements k {
            private int b;
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f9644d;

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
            public JvmMethodSignature build() {
                JvmMethodSignature jvmMethodSignatureL = l();
                if (jvmMethodSignatureL.isInitialized()) {
                    return jvmMethodSignatureL;
                }
                throw a.AbstractC0539a.e(jvmMethodSignatureL);
            }

            public JvmMethodSignature l() {
                JvmMethodSignature jvmMethodSignature = new JvmMethodSignature(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmMethodSignature.f9642f = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmMethodSignature.f9643g = this.f9644d;
                jvmMethodSignature.f9641e = i2;
                return jvmMethodSignature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public b f() {
                return n().h(l());
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
            public b h(JvmMethodSignature jvmMethodSignature) {
                if (jvmMethodSignature == JvmMethodSignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmMethodSignature.t()) {
                    s(jvmMethodSignature.r());
                }
                if (jvmMethodSignature.s()) {
                    r(jvmMethodSignature.q());
                }
                i(g().c(jvmMethodSignature.f9640d));
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
            /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmMethodSignature.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmMethodSignature> r1 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmMethodSignature.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmMethodSignature r3 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmMethodSignature) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmMethodSignature r4 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmMethodSignature) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmMethodSignature.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmMethodSignature$b");
            }

            public b r(int i) {
                this.b |= 2;
                this.f9644d = i;
                return this;
            }

            public b s(int i) {
                this.b |= 1;
                this.c = i;
                return this;
            }
        }

        static {
            JvmMethodSignature jvmMethodSignature = new JvmMethodSignature(true);
            b = jvmMethodSignature;
            jvmMethodSignature.u();
        }

        private JvmMethodSignature(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            this.h = (byte) -1;
            this.i = -1;
            u();
            ByteString.b bVarNewOutput = ByteString.newOutput();
            CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iG = codedInputStream.G();
                        if (iG != 0) {
                            if (iG == 8) {
                                this.f9641e |= 1;
                                this.f9642f = codedInputStream.p();
                            } else if (iG == 16) {
                                this.f9641e |= 2;
                                this.f9643g = codedInputStream.p();
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
                        this.f9640d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9640d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            }
            try {
                codedOutputStreamNewInstance.b();
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                this.f9640d = bVarNewOutput.f();
                throw th3;
            }
            this.f9640d = bVarNewOutput.f();
            h();
        }

        private JvmMethodSignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.h = (byte) -1;
            this.i = -1;
            this.f9640d = bVar.g();
        }

        private JvmMethodSignature(boolean z) {
            this.h = (byte) -1;
            this.i = -1;
            this.f9640d = ByteString.a;
        }

        public static JvmMethodSignature getDefaultInstance() {
            return b;
        }

        public static b newBuilder() {
            return b.n();
        }

        public static b newBuilder(JvmMethodSignature jvmMethodSignature) {
            return newBuilder().h(jvmMethodSignature);
        }

        private void u() {
            this.f9642f = 0;
            this.f9643g = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public void b(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.f9641e & 1) == 1) {
                codedOutputStream.s(1, this.f9642f);
            }
            if ((this.f9641e & 2) == 2) {
                codedOutputStream.s(2, this.f9643g);
            }
            codedOutputStream.A(this.f9640d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
        public l<JvmMethodSignature> getParserForType() {
            return c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public int getSerializedSize() {
            int i = this.i;
            if (i != -1) {
                return i;
            }
            int iComputeInt32Size = (this.f9641e & 1) == 1 ? 0 + CodedOutputStream.computeInt32Size(1, this.f9642f) : 0;
            if ((this.f9641e & 2) == 2) {
                iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.f9643g);
            }
            int size = iComputeInt32Size + this.f9640d.size();
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
            this.h = (byte) 1;
            return true;
        }

        public int q() {
            return this.f9643g;
        }

        public int r() {
            return this.f9642f;
        }

        public boolean s() {
            return (this.f9641e & 2) == 2;
        }

        public boolean t() {
            return (this.f9641e & 1) == 1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b newBuilderForType() {
            return newBuilder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public b toBuilder() {
            return newBuilder(this);
        }
    }

    public static final class JvmPropertySignature extends GeneratedMessageLite implements k {
        private static final JvmPropertySignature b;
        public static l<JvmPropertySignature> c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ByteString f9645d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9646e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private JvmFieldSignature f9647f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private JvmMethodSignature f9648g;
        private JvmMethodSignature h;
        private JvmMethodSignature i;
        private byte j;
        private int k;

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<JvmPropertySignature> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public JvmPropertySignature c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                return new JvmPropertySignature(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class b extends GeneratedMessageLite.b<JvmPropertySignature, b> implements k {
            private int b;
            private JvmFieldSignature c = JvmFieldSignature.getDefaultInstance();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private JvmMethodSignature f9649d = JvmMethodSignature.getDefaultInstance();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private JvmMethodSignature f9650e = JvmMethodSignature.getDefaultInstance();

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private JvmMethodSignature f9651f = JvmMethodSignature.getDefaultInstance();

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
            public JvmPropertySignature build() {
                JvmPropertySignature jvmPropertySignatureL = l();
                if (jvmPropertySignatureL.isInitialized()) {
                    return jvmPropertySignatureL;
                }
                throw a.AbstractC0539a.e(jvmPropertySignatureL);
            }

            public JvmPropertySignature l() {
                JvmPropertySignature jvmPropertySignature = new JvmPropertySignature(this);
                int i = this.b;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmPropertySignature.f9647f = this.c;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmPropertySignature.f9648g = this.f9649d;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                jvmPropertySignature.h = this.f9650e;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                jvmPropertySignature.i = this.f9651f;
                jvmPropertySignature.f9646e = i2;
                return jvmPropertySignature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public b f() {
                return n().h(l());
            }

            public b p(JvmFieldSignature jvmFieldSignature) {
                if ((this.b & 1) != 1 || this.c == JvmFieldSignature.getDefaultInstance()) {
                    this.c = jvmFieldSignature;
                } else {
                    this.c = JvmFieldSignature.newBuilder(this.c).h(jvmFieldSignature).l();
                }
                this.b |= 1;
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
            public b h(JvmPropertySignature jvmPropertySignature) {
                if (jvmPropertySignature == JvmPropertySignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmPropertySignature.w()) {
                    p(jvmPropertySignature.s());
                }
                if (jvmPropertySignature.z()) {
                    u(jvmPropertySignature.v());
                }
                if (jvmPropertySignature.x()) {
                    s(jvmPropertySignature.t());
                }
                if (jvmPropertySignature.y()) {
                    t(jvmPropertySignature.u());
                }
                i(g().c(jvmPropertySignature.f9645d));
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
            /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature> r1 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature r3 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature r4 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature$b");
            }

            public b s(JvmMethodSignature jvmMethodSignature) {
                if ((this.b & 4) != 4 || this.f9650e == JvmMethodSignature.getDefaultInstance()) {
                    this.f9650e = jvmMethodSignature;
                } else {
                    this.f9650e = JvmMethodSignature.newBuilder(this.f9650e).h(jvmMethodSignature).l();
                }
                this.b |= 4;
                return this;
            }

            public b t(JvmMethodSignature jvmMethodSignature) {
                if ((this.b & 8) != 8 || this.f9651f == JvmMethodSignature.getDefaultInstance()) {
                    this.f9651f = jvmMethodSignature;
                } else {
                    this.f9651f = JvmMethodSignature.newBuilder(this.f9651f).h(jvmMethodSignature).l();
                }
                this.b |= 8;
                return this;
            }

            public b u(JvmMethodSignature jvmMethodSignature) {
                if ((this.b & 2) != 2 || this.f9649d == JvmMethodSignature.getDefaultInstance()) {
                    this.f9649d = jvmMethodSignature;
                } else {
                    this.f9649d = JvmMethodSignature.newBuilder(this.f9649d).h(jvmMethodSignature).l();
                }
                this.b |= 2;
                return this;
            }
        }

        static {
            JvmPropertySignature jvmPropertySignature = new JvmPropertySignature(true);
            b = jvmPropertySignature;
            jvmPropertySignature.A();
        }

        private JvmPropertySignature(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            this.j = (byte) -1;
            this.k = -1;
            A();
            ByteString.b bVarNewOutput = ByteString.newOutput();
            CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int iG = codedInputStream.G();
                        if (iG != 0) {
                            if (iG == 10) {
                                JvmFieldSignature.b builder = (this.f9646e & 1) == 1 ? this.f9647f.toBuilder() : null;
                                JvmFieldSignature jvmFieldSignature = (JvmFieldSignature) codedInputStream.r(JvmFieldSignature.c, extensionRegistryLite);
                                this.f9647f = jvmFieldSignature;
                                if (builder != null) {
                                    builder.h(jvmFieldSignature);
                                    this.f9647f = builder.l();
                                }
                                this.f9646e |= 1;
                            } else if (iG == 18) {
                                JvmMethodSignature.b builder2 = (this.f9646e & 2) == 2 ? this.f9648g.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature = (JvmMethodSignature) codedInputStream.r(JvmMethodSignature.c, extensionRegistryLite);
                                this.f9648g = jvmMethodSignature;
                                if (builder2 != null) {
                                    builder2.h(jvmMethodSignature);
                                    this.f9648g = builder2.l();
                                }
                                this.f9646e |= 2;
                            } else if (iG == 26) {
                                JvmMethodSignature.b builder3 = (this.f9646e & 4) == 4 ? this.h.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature2 = (JvmMethodSignature) codedInputStream.r(JvmMethodSignature.c, extensionRegistryLite);
                                this.h = jvmMethodSignature2;
                                if (builder3 != null) {
                                    builder3.h(jvmMethodSignature2);
                                    this.h = builder3.l();
                                }
                                this.f9646e |= 4;
                            } else if (iG == 34) {
                                JvmMethodSignature.b builder4 = (this.f9646e & 8) == 8 ? this.i.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature3 = (JvmMethodSignature) codedInputStream.r(JvmMethodSignature.c, extensionRegistryLite);
                                this.i = jvmMethodSignature3;
                                if (builder4 != null) {
                                    builder4.h(jvmMethodSignature3);
                                    this.i = builder4.l();
                                }
                                this.f9646e |= 8;
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
                        this.f9645d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9645d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            }
            try {
                codedOutputStreamNewInstance.b();
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                this.f9645d = bVarNewOutput.f();
                throw th3;
            }
            this.f9645d = bVarNewOutput.f();
            h();
        }

        private JvmPropertySignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.j = (byte) -1;
            this.k = -1;
            this.f9645d = bVar.g();
        }

        private JvmPropertySignature(boolean z) {
            this.j = (byte) -1;
            this.k = -1;
            this.f9645d = ByteString.a;
        }

        private void A() {
            this.f9647f = JvmFieldSignature.getDefaultInstance();
            this.f9648g = JvmMethodSignature.getDefaultInstance();
            this.h = JvmMethodSignature.getDefaultInstance();
            this.i = JvmMethodSignature.getDefaultInstance();
        }

        public static JvmPropertySignature getDefaultInstance() {
            return b;
        }

        public static b newBuilder() {
            return b.n();
        }

        public static b newBuilder(JvmPropertySignature jvmPropertySignature) {
            return newBuilder().h(jvmPropertySignature);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
        public b newBuilderForType() {
            return newBuilder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public b toBuilder() {
            return newBuilder(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public void b(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.f9646e & 1) == 1) {
                codedOutputStream.v(1, this.f9647f);
            }
            if ((this.f9646e & 2) == 2) {
                codedOutputStream.v(2, this.f9648g);
            }
            if ((this.f9646e & 4) == 4) {
                codedOutputStream.v(3, this.h);
            }
            if ((this.f9646e & 8) == 8) {
                codedOutputStream.v(4, this.i);
            }
            codedOutputStream.A(this.f9645d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
        public l<JvmPropertySignature> getParserForType() {
            return c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public int getSerializedSize() {
            int i = this.k;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = (this.f9646e & 1) == 1 ? 0 + CodedOutputStream.computeMessageSize(1, this.f9647f) : 0;
            if ((this.f9646e & 2) == 2) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, this.f9648g);
            }
            if ((this.f9646e & 4) == 4) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, this.h);
            }
            if ((this.f9646e & 8) == 8) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(4, this.i);
            }
            int size = iComputeMessageSize + this.f9645d.size();
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
            this.j = (byte) 1;
            return true;
        }

        public JvmFieldSignature s() {
            return this.f9647f;
        }

        public JvmMethodSignature t() {
            return this.h;
        }

        public JvmMethodSignature u() {
            return this.i;
        }

        public JvmMethodSignature v() {
            return this.f9648g;
        }

        public boolean w() {
            return (this.f9646e & 1) == 1;
        }

        public boolean x() {
            return (this.f9646e & 4) == 4;
        }

        public boolean y() {
            return (this.f9646e & 8) == 8;
        }

        public boolean z() {
            return (this.f9646e & 2) == 2;
        }
    }

    public static final class StringTableTypes extends GeneratedMessageLite implements k {
        private static final StringTableTypes b;
        public static l<StringTableTypes> c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ByteString f9652d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<Record> f9653e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<Integer> f9654f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9655g;
        private byte h;
        private int i;

        public static final class Record extends GeneratedMessageLite implements k {
            private static final Record b;
            public static l<Record> c = new a();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final ByteString f9656d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f9657e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private int f9658f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private int f9659g;
            private Object h;
            private Operation i;
            private List<Integer> j;
            private int k;
            private List<Integer> l;
            private int m;
            private byte n;
            private int o;

            public enum Operation implements Internal.a {
                NONE(0, 0),
                INTERNAL_TO_CLASS_ID(1, 1),
                DESC_TO_CLASS_ID(2, 2);


                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private static Internal.b<Operation> f9660d = new a();

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                private final int f9662f;

                static class a implements Internal.b<Operation> {
                    a() {
                    }

                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Operation findValueByNumber(int i) {
                        return Operation.valueOf(i);
                    }
                }

                Operation(int i, int i2) {
                    this.f9662f = i2;
                }

                public static Operation valueOf(int i) {
                    if (i == 0) {
                        return NONE;
                    }
                    if (i == 1) {
                        return INTERNAL_TO_CLASS_ID;
                    }
                    if (i != 2) {
                        return null;
                    }
                    return DESC_TO_CLASS_ID;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
                public final int getNumber() {
                    return this.f9662f;
                }
            }

            static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<Record> {
                a() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
                /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
                public Record c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                    return new Record(codedInputStream, extensionRegistryLite);
                }
            }

            public static final class b extends GeneratedMessageLite.b<Record, b> implements k {
                private int b;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private int f9663d;
                private int c = 1;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private Object f9664e = "";

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                private Operation f9665f = Operation.NONE;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                private List<Integer> f9666g = Collections.emptyList();
                private List<Integer> h = Collections.emptyList();

                private b() {
                    q();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static b n() {
                    return new b();
                }

                private void o() {
                    if ((this.b & 32) != 32) {
                        this.h = new ArrayList(this.h);
                        this.b |= 32;
                    }
                }

                private void p() {
                    if ((this.b & 16) != 16) {
                        this.f9666g = new ArrayList(this.f9666g);
                        this.b |= 16;
                    }
                }

                private void q() {
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
                /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
                public Record build() {
                    Record recordL = l();
                    if (recordL.isInitialized()) {
                        return recordL;
                    }
                    throw a.AbstractC0539a.e(recordL);
                }

                public Record l() {
                    Record record = new Record(this);
                    int i = this.b;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    record.f9658f = this.c;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    record.f9659g = this.f9663d;
                    if ((i & 4) == 4) {
                        i2 |= 4;
                    }
                    record.h = this.f9664e;
                    if ((i & 8) == 8) {
                        i2 |= 8;
                    }
                    record.i = this.f9665f;
                    if ((this.b & 16) == 16) {
                        this.f9666g = Collections.unmodifiableList(this.f9666g);
                        this.b &= -17;
                    }
                    record.j = this.f9666g;
                    if ((this.b & 32) == 32) {
                        this.h = Collections.unmodifiableList(this.h);
                        this.b &= -33;
                    }
                    record.l = this.h;
                    record.f9657e = i2;
                    return record;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
                /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
                public b f() {
                    return n().h(l());
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
                /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
                public b h(Record record) {
                    if (record == Record.getDefaultInstance()) {
                        return this;
                    }
                    if (record.I()) {
                        v(record.z());
                    }
                    if (record.H()) {
                        u(record.y());
                    }
                    if (record.J()) {
                        this.b |= 4;
                        this.f9664e = record.h;
                    }
                    if (record.G()) {
                        t(record.x());
                    }
                    if (!record.j.isEmpty()) {
                        if (this.f9666g.isEmpty()) {
                            this.f9666g = record.j;
                            this.b &= -17;
                        } else {
                            p();
                            this.f9666g.addAll(record.j);
                        }
                    }
                    if (!record.l.isEmpty()) {
                        if (this.h.isEmpty()) {
                            this.h = record.l;
                            this.b &= -33;
                        } else {
                            o();
                            this.h.addAll(record.l);
                        }
                    }
                    i(g().c(record.f9656d));
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
                /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Record.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                    /*
                        r2 = this;
                        r0 = 0
                        kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record> r1 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Record.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                        java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                        kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record r3 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Record) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                        kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record r4 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Record) r4     // Catch: java.lang.Throwable -> Lf
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
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.Record.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$Record$b");
                }

                public b t(Operation operation) {
                    Objects.requireNonNull(operation);
                    this.b |= 8;
                    this.f9665f = operation;
                    return this;
                }

                public b u(int i) {
                    this.b |= 2;
                    this.f9663d = i;
                    return this;
                }

                public b v(int i) {
                    this.b |= 1;
                    this.c = i;
                    return this;
                }
            }

            static {
                Record record = new Record(true);
                b = record;
                record.K();
            }

            private Record(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                this.k = -1;
                this.m = -1;
                this.n = (byte) -1;
                this.o = -1;
                K();
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
                                    this.f9657e |= 1;
                                    this.f9658f = codedInputStream.p();
                                } else if (iG == 16) {
                                    this.f9657e |= 2;
                                    this.f9659g = codedInputStream.p();
                                } else if (iG == 24) {
                                    int iK = codedInputStream.k();
                                    Operation operationValueOf = Operation.valueOf(iK);
                                    if (operationValueOf == null) {
                                        codedOutputStreamNewInstance.G(iG);
                                        codedOutputStreamNewInstance.G(iK);
                                    } else {
                                        this.f9657e |= 8;
                                        this.i = operationValueOf;
                                    }
                                } else if (iG == 32) {
                                    if ((i & 16) != 16) {
                                        this.j = new ArrayList();
                                        i |= 16;
                                    }
                                    this.j.add(Integer.valueOf(codedInputStream.p()));
                                } else if (iG == 34) {
                                    int iG2 = codedInputStream.g(codedInputStream.x());
                                    if ((i & 16) != 16 && codedInputStream.c() > 0) {
                                        this.j = new ArrayList();
                                        i |= 16;
                                    }
                                    while (codedInputStream.c() > 0) {
                                        this.j.add(Integer.valueOf(codedInputStream.p()));
                                    }
                                    codedInputStream.f(iG2);
                                } else if (iG == 40) {
                                    if ((i & 32) != 32) {
                                        this.l = new ArrayList();
                                        i |= 32;
                                    }
                                    this.l.add(Integer.valueOf(codedInputStream.p()));
                                } else if (iG == 42) {
                                    int iG3 = codedInputStream.g(codedInputStream.x());
                                    if ((i & 32) != 32 && codedInputStream.c() > 0) {
                                        this.l = new ArrayList();
                                        i |= 32;
                                    }
                                    while (codedInputStream.c() > 0) {
                                        this.l.add(Integer.valueOf(codedInputStream.p()));
                                    }
                                    codedInputStream.f(iG3);
                                } else if (iG == 50) {
                                    ByteString byteStringI = codedInputStream.i();
                                    this.f9657e |= 4;
                                    this.h = byteStringI;
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
                            this.j = Collections.unmodifiableList(this.j);
                        }
                        if ((i & 32) == 32) {
                            this.l = Collections.unmodifiableList(this.l);
                        }
                        try {
                            codedOutputStreamNewInstance.b();
                        } catch (IOException unused) {
                        } catch (Throwable th2) {
                            this.f9656d = bVarNewOutput.f();
                            throw th2;
                        }
                        this.f9656d = bVarNewOutput.f();
                        h();
                        throw th;
                    }
                }
                if ((i & 16) == 16) {
                    this.j = Collections.unmodifiableList(this.j);
                }
                if ((i & 32) == 32) {
                    this.l = Collections.unmodifiableList(this.l);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f9656d = bVarNewOutput.f();
                    throw th3;
                }
                this.f9656d = bVarNewOutput.f();
                h();
            }

            private Record(GeneratedMessageLite.b bVar) {
                super(bVar);
                this.k = -1;
                this.m = -1;
                this.n = (byte) -1;
                this.o = -1;
                this.f9656d = bVar.g();
            }

            private Record(boolean z) {
                this.k = -1;
                this.m = -1;
                this.n = (byte) -1;
                this.o = -1;
                this.f9656d = ByteString.a;
            }

            private void K() {
                this.f9658f = 1;
                this.f9659g = 0;
                this.h = "";
                this.i = Operation.NONE;
                this.j = Collections.emptyList();
                this.l = Collections.emptyList();
            }

            public static Record getDefaultInstance() {
                return b;
            }

            public static b newBuilder() {
                return b.n();
            }

            public static b newBuilder(Record record) {
                return newBuilder().h(record);
            }

            public int A() {
                return this.l.size();
            }

            public List<Integer> B() {
                return this.l;
            }

            public String C() {
                Object obj = this.h;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String strV = byteString.v();
                if (byteString.h()) {
                    this.h = strV;
                }
                return strV;
            }

            public ByteString D() {
                Object obj = this.h;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString byteStringCopyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.h = byteStringCopyFromUtf8;
                return byteStringCopyFromUtf8;
            }

            public int E() {
                return this.j.size();
            }

            public List<Integer> F() {
                return this.j;
            }

            public boolean G() {
                return (this.f9657e & 8) == 8;
            }

            public boolean H() {
                return (this.f9657e & 2) == 2;
            }

            public boolean I() {
                return (this.f9657e & 1) == 1;
            }

            public boolean J() {
                return (this.f9657e & 4) == 4;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
            /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
            public b newBuilderForType() {
                return newBuilder();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
            /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
            public b toBuilder() {
                return newBuilder(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
            public void b(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if ((this.f9657e & 1) == 1) {
                    codedOutputStream.s(1, this.f9658f);
                }
                if ((this.f9657e & 2) == 2) {
                    codedOutputStream.s(2, this.f9659g);
                }
                if ((this.f9657e & 8) == 8) {
                    codedOutputStream.k(3, this.i.getNumber());
                }
                if (F().size() > 0) {
                    codedOutputStream.G(34);
                    codedOutputStream.G(this.k);
                }
                for (int i = 0; i < this.j.size(); i++) {
                    codedOutputStream.t(this.j.get(i).intValue());
                }
                if (B().size() > 0) {
                    codedOutputStream.G(42);
                    codedOutputStream.G(this.m);
                }
                for (int i2 = 0; i2 < this.l.size(); i2++) {
                    codedOutputStream.t(this.l.get(i2).intValue());
                }
                if ((this.f9657e & 4) == 4) {
                    codedOutputStream.g(6, D());
                }
                codedOutputStream.A(this.f9656d);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
            public l<Record> getParserForType() {
                return c;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
            public int getSerializedSize() {
                int i = this.o;
                if (i != -1) {
                    return i;
                }
                int iComputeInt32Size = (this.f9657e & 1) == 1 ? CodedOutputStream.computeInt32Size(1, this.f9658f) + 0 : 0;
                if ((this.f9657e & 2) == 2) {
                    iComputeInt32Size += CodedOutputStream.computeInt32Size(2, this.f9659g);
                }
                if ((this.f9657e & 8) == 8) {
                    iComputeInt32Size += CodedOutputStream.computeEnumSize(3, this.i.getNumber());
                }
                int iComputeInt32SizeNoTag = 0;
                for (int i2 = 0; i2 < this.j.size(); i2++) {
                    iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.j.get(i2).intValue());
                }
                int iComputeInt32SizeNoTag2 = iComputeInt32Size + iComputeInt32SizeNoTag;
                if (!F().isEmpty()) {
                    iComputeInt32SizeNoTag2 = iComputeInt32SizeNoTag2 + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag);
                }
                this.k = iComputeInt32SizeNoTag;
                int iComputeInt32SizeNoTag3 = 0;
                for (int i3 = 0; i3 < this.l.size(); i3++) {
                    iComputeInt32SizeNoTag3 += CodedOutputStream.computeInt32SizeNoTag(this.l.get(i3).intValue());
                }
                int iComputeBytesSize = iComputeInt32SizeNoTag2 + iComputeInt32SizeNoTag3;
                if (!B().isEmpty()) {
                    iComputeBytesSize = iComputeBytesSize + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag3);
                }
                this.m = iComputeInt32SizeNoTag3;
                if ((this.f9657e & 4) == 4) {
                    iComputeBytesSize += CodedOutputStream.computeBytesSize(6, D());
                }
                int size = iComputeBytesSize + this.f9656d.size();
                this.o = size;
                return size;
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
                this.n = (byte) 1;
                return true;
            }

            public Operation x() {
                return this.i;
            }

            public int y() {
                return this.f9659g;
            }

            public int z() {
                return this.f9658f;
            }
        }

        static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<StringTableTypes> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public StringTableTypes c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
                return new StringTableTypes(codedInputStream, extensionRegistryLite);
            }
        }

        public static final class b extends GeneratedMessageLite.b<StringTableTypes, b> implements k {
            private int b;
            private List<Record> c = Collections.emptyList();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private List<Integer> f9667d = Collections.emptyList();

            private b() {
                q();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static b n() {
                return new b();
            }

            private void o() {
                if ((this.b & 2) != 2) {
                    this.f9667d = new ArrayList(this.f9667d);
                    this.b |= 2;
                }
            }

            private void p() {
                if ((this.b & 1) != 1) {
                    this.c = new ArrayList(this.c);
                    this.b |= 1;
                }
            }

            private void q() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public StringTableTypes build() {
                StringTableTypes stringTableTypesL = l();
                if (stringTableTypesL.isInitialized()) {
                    return stringTableTypesL;
                }
                throw a.AbstractC0539a.e(stringTableTypesL);
            }

            public StringTableTypes l() {
                StringTableTypes stringTableTypes = new StringTableTypes(this);
                if ((this.b & 1) == 1) {
                    this.c = Collections.unmodifiableList(this.c);
                    this.b &= -2;
                }
                stringTableTypes.f9653e = this.c;
                if ((this.b & 2) == 2) {
                    this.f9667d = Collections.unmodifiableList(this.f9667d);
                    this.b &= -3;
                }
                stringTableTypes.f9654f = this.f9667d;
                return stringTableTypes;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public b f() {
                return n().h(l());
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
            /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
            public b h(StringTableTypes stringTableTypes) {
                if (stringTableTypes == StringTableTypes.getDefaultInstance()) {
                    return this;
                }
                if (!stringTableTypes.f9653e.isEmpty()) {
                    if (this.c.isEmpty()) {
                        this.c = stringTableTypes.f9653e;
                        this.b &= -2;
                    } else {
                        p();
                        this.c.addAll(stringTableTypes.f9653e);
                    }
                }
                if (!stringTableTypes.f9654f.isEmpty()) {
                    if (this.f9667d.isEmpty()) {
                        this.f9667d = stringTableTypes.f9654f;
                        this.b &= -3;
                    } else {
                        o();
                        this.f9667d.addAll(stringTableTypes.f9654f);
                    }
                }
                i(g().c(stringTableTypes.f9652d));
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
            /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
                /*
                    r2 = this;
                    r0 = 0
                    kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes> r1 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.c     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes r3 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                    kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes r4 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes) r4     // Catch: java.lang.Throwable -> Lf
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes.b.d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes$b");
            }
        }

        static {
            StringTableTypes stringTableTypes = new StringTableTypes(true);
            b = stringTableTypes;
            stringTableTypes.t();
        }

        private StringTableTypes(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            this.f9655g = -1;
            this.h = (byte) -1;
            this.i = -1;
            t();
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
                                if ((i & 1) != 1) {
                                    this.f9653e = new ArrayList();
                                    i |= 1;
                                }
                                this.f9653e.add((Record) codedInputStream.r(Record.c, extensionRegistryLite));
                            } else if (iG == 40) {
                                if ((i & 2) != 2) {
                                    this.f9654f = new ArrayList();
                                    i |= 2;
                                }
                                this.f9654f.add(Integer.valueOf(codedInputStream.p()));
                            } else if (iG == 42) {
                                int iG2 = codedInputStream.g(codedInputStream.x());
                                if ((i & 2) != 2 && codedInputStream.c() > 0) {
                                    this.f9654f = new ArrayList();
                                    i |= 2;
                                }
                                while (codedInputStream.c() > 0) {
                                    this.f9654f.add(Integer.valueOf(codedInputStream.p()));
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
                    if ((i & 1) == 1) {
                        this.f9653e = Collections.unmodifiableList(this.f9653e);
                    }
                    if ((i & 2) == 2) {
                        this.f9654f = Collections.unmodifiableList(this.f9654f);
                    }
                    try {
                        codedOutputStreamNewInstance.b();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f9652d = bVarNewOutput.f();
                        throw th2;
                    }
                    this.f9652d = bVarNewOutput.f();
                    h();
                    throw th;
                }
            }
            if ((i & 1) == 1) {
                this.f9653e = Collections.unmodifiableList(this.f9653e);
            }
            if ((i & 2) == 2) {
                this.f9654f = Collections.unmodifiableList(this.f9654f);
            }
            try {
                codedOutputStreamNewInstance.b();
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                this.f9652d = bVarNewOutput.f();
                throw th3;
            }
            this.f9652d = bVarNewOutput.f();
            h();
        }

        private StringTableTypes(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.f9655g = -1;
            this.h = (byte) -1;
            this.i = -1;
            this.f9652d = bVar.g();
        }

        private StringTableTypes(boolean z) {
            this.f9655g = -1;
            this.h = (byte) -1;
            this.i = -1;
            this.f9652d = ByteString.a;
        }

        public static StringTableTypes getDefaultInstance() {
            return b;
        }

        public static b newBuilder() {
            return b.n();
        }

        public static b newBuilder(StringTableTypes stringTableTypes) {
            return newBuilder().h(stringTableTypes);
        }

        public static StringTableTypes parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return c.d(inputStream, extensionRegistryLite);
        }

        private void t() {
            this.f9653e = Collections.emptyList();
            this.f9654f = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public void b(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            for (int i = 0; i < this.f9653e.size(); i++) {
                codedOutputStream.v(1, this.f9653e.get(i));
            }
            if (r().size() > 0) {
                codedOutputStream.G(42);
                codedOutputStream.G(this.f9655g);
            }
            for (int i2 = 0; i2 < this.f9654f.size(); i2++) {
                codedOutputStream.t(this.f9654f.get(i2).intValue());
            }
            codedOutputStream.A(this.f9652d);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
        public l<StringTableTypes> getParserForType() {
            return c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        public int getSerializedSize() {
            int i = this.i;
            if (i != -1) {
                return i;
            }
            int iComputeMessageSize = 0;
            for (int i2 = 0; i2 < this.f9653e.size(); i2++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.f9653e.get(i2));
            }
            int iComputeInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < this.f9654f.size(); i3++) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.f9654f.get(i3).intValue());
            }
            int iComputeInt32SizeNoTag2 = iComputeMessageSize + iComputeInt32SizeNoTag;
            if (!r().isEmpty()) {
                iComputeInt32SizeNoTag2 = iComputeInt32SizeNoTag2 + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag);
            }
            this.f9655g = iComputeInt32SizeNoTag;
            int size = iComputeInt32SizeNoTag2 + this.f9652d.size();
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
            this.h = (byte) 1;
            return true;
        }

        public List<Integer> r() {
            return this.f9654f;
        }

        public List<Record> s() {
            return this.f9653e;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public b newBuilderForType() {
            return newBuilder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public b toBuilder() {
            return newBuilder(this);
        }
    }

    static {
        ProtoBuf$Constructor defaultInstance = ProtoBuf$Constructor.getDefaultInstance();
        JvmMethodSignature defaultInstance2 = JvmMethodSignature.getDefaultInstance();
        JvmMethodSignature defaultInstance3 = JvmMethodSignature.getDefaultInstance();
        WireFormat.FieldType fieldType = WireFormat.FieldType.k;
        a = GeneratedMessageLite.newSingularGeneratedExtension(defaultInstance, defaultInstance2, defaultInstance3, null, 100, fieldType, JvmMethodSignature.class);
        b = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Function.getDefaultInstance(), JvmMethodSignature.getDefaultInstance(), JvmMethodSignature.getDefaultInstance(), null, 100, fieldType, JvmMethodSignature.class);
        ProtoBuf$Function defaultInstance4 = ProtoBuf$Function.getDefaultInstance();
        WireFormat.FieldType fieldType2 = WireFormat.FieldType.f9699e;
        c = GeneratedMessageLite.newSingularGeneratedExtension(defaultInstance4, 0, null, null, 101, fieldType2, Integer.class);
        f9631d = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), JvmPropertySignature.getDefaultInstance(), JvmPropertySignature.getDefaultInstance(), null, 100, fieldType, JvmPropertySignature.class);
        f9632e = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        f9633f = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Type.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 100, fieldType, false, ProtoBuf$Annotation.class);
        f9634g = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Type.getDefaultInstance(), Boolean.FALSE, null, null, 101, WireFormat.FieldType.h, Boolean.class);
        h = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$TypeParameter.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 100, fieldType, false, ProtoBuf$Annotation.class);
        i = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        j = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), ProtoBuf$Property.getDefaultInstance(), null, 102, fieldType, false, ProtoBuf$Property.class);
        k = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), 0, null, null, 103, fieldType2, Integer.class);
        l = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Package.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        m = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Package.getDefaultInstance(), ProtoBuf$Property.getDefaultInstance(), null, 102, fieldType, false, ProtoBuf$Property.class);
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
        extensionRegistryLite.a(a);
        extensionRegistryLite.a(b);
        extensionRegistryLite.a(c);
        extensionRegistryLite.a(f9631d);
        extensionRegistryLite.a(f9632e);
        extensionRegistryLite.a(f9633f);
        extensionRegistryLite.a(f9634g);
        extensionRegistryLite.a(h);
        extensionRegistryLite.a(i);
        extensionRegistryLite.a(j);
        extensionRegistryLite.a(k);
        extensionRegistryLite.a(l);
        extensionRegistryLite.a(m);
    }
}
