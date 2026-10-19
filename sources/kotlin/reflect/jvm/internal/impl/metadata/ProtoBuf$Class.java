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
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.a;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.k;
import kotlin.reflect.jvm.internal.impl.protobuf.l;

/* JADX INFO: loaded from: classes5.dex */
public final class ProtoBuf$Class extends GeneratedMessageLite.d<ProtoBuf$Class> implements k {
    private static final ProtoBuf$Class c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static l<ProtoBuf$Class> f9431d = new a();
    private int A;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ByteString f9432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f9433f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f9434g;
    private int h;
    private int i;
    private List<ProtoBuf$TypeParameter> j;
    private List<ProtoBuf$Type> k;
    private List<Integer> l;
    private int m;
    private List<Integer> n;
    private int o;
    private List<ProtoBuf$Constructor> p;
    private List<ProtoBuf$Function> q;
    private List<ProtoBuf$Property> r;
    private List<ProtoBuf$TypeAlias> s;
    private List<ProtoBuf$EnumEntry> t;
    private List<Integer> u;
    private int v;
    private ProtoBuf$TypeTable w;
    private List<Integer> x;
    private ProtoBuf$VersionRequirementTable y;
    private byte z;

    public enum Kind implements Internal.a {
        CLASS(0, 0),
        INTERFACE(1, 1),
        ENUM_CLASS(2, 2),
        ENUM_ENTRY(3, 3),
        ANNOTATION_CLASS(4, 4),
        OBJECT(5, 5),
        COMPANION_OBJECT(6, 6);

        private static Internal.b<Kind> h = new a();
        private final int j;

        static class a implements Internal.b<Kind> {
            a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Kind findValueByNumber(int i) {
                return Kind.valueOf(i);
            }
        }

        Kind(int i2, int i3) {
            this.j = i3;
        }

        public static Kind valueOf(int i2) {
            switch (i2) {
                case 0:
                    return CLASS;
                case 1:
                    return INTERFACE;
                case 2:
                    return ENUM_CLASS;
                case 3:
                    return ENUM_ENTRY;
                case 4:
                    return ANNOTATION_CLASS;
                case 5:
                    return OBJECT;
                case 6:
                    return COMPANION_OBJECT;
                default:
                    return null;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
        public final int getNumber() {
            return this.j;
        }
    }

    static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b<ProtoBuf$Class> {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.l
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Class c(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
            return new ProtoBuf$Class(codedInputStream, extensionRegistryLite);
        }
    }

    public static final class b extends GeneratedMessageLite.c<ProtoBuf$Class, b> implements k {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9439d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f9441f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f9442g;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9440e = 6;
        private List<ProtoBuf$TypeParameter> h = Collections.emptyList();
        private List<ProtoBuf$Type> i = Collections.emptyList();
        private List<Integer> j = Collections.emptyList();
        private List<Integer> k = Collections.emptyList();
        private List<ProtoBuf$Constructor> l = Collections.emptyList();
        private List<ProtoBuf$Function> m = Collections.emptyList();
        private List<ProtoBuf$Property> n = Collections.emptyList();
        private List<ProtoBuf$TypeAlias> o = Collections.emptyList();
        private List<ProtoBuf$EnumEntry> p = Collections.emptyList();
        private List<Integer> q = Collections.emptyList();
        private ProtoBuf$TypeTable r = ProtoBuf$TypeTable.getDefaultInstance();
        private List<Integer> s = Collections.emptyList();
        private ProtoBuf$VersionRequirementTable t = ProtoBuf$VersionRequirementTable.getDefaultInstance();

        private b() {
            D();
        }

        private void A() {
            if ((this.f9439d & 1024) != 1024) {
                this.o = new ArrayList(this.o);
                this.f9439d |= 1024;
            }
        }

        private void B() {
            if ((this.f9439d & 8) != 8) {
                this.h = new ArrayList(this.h);
                this.f9439d |= 8;
            }
        }

        private void C() {
            if ((this.f9439d & 16384) != 16384) {
                this.s = new ArrayList(this.s);
                this.f9439d |= 16384;
            }
        }

        private void D() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b r() {
            return new b();
        }

        private void s() {
            if ((this.f9439d & 128) != 128) {
                this.l = new ArrayList(this.l);
                this.f9439d |= 128;
            }
        }

        private void t() {
            if ((this.f9439d & 2048) != 2048) {
                this.p = new ArrayList(this.p);
                this.f9439d |= 2048;
            }
        }

        private void u() {
            if ((this.f9439d & 256) != 256) {
                this.m = new ArrayList(this.m);
                this.f9439d |= 256;
            }
        }

        private void v() {
            if ((this.f9439d & 64) != 64) {
                this.k = new ArrayList(this.k);
                this.f9439d |= 64;
            }
        }

        private void w() {
            if ((this.f9439d & 512) != 512) {
                this.n = new ArrayList(this.n);
                this.f9439d |= 512;
            }
        }

        private void x() {
            if ((this.f9439d & 4096) != 4096) {
                this.q = new ArrayList(this.q);
                this.f9439d |= 4096;
            }
        }

        private void y() {
            if ((this.f9439d & 32) != 32) {
                this.j = new ArrayList(this.j);
                this.f9439d |= 32;
            }
        }

        private void z() {
            if ((this.f9439d & 16) != 16) {
                this.i = new ArrayList(this.i);
                this.f9439d |= 16;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public b h(ProtoBuf$Class protoBuf$Class) {
            if (protoBuf$Class == ProtoBuf$Class.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Class.E0()) {
                J(protoBuf$Class.g0());
            }
            if (protoBuf$Class.F0()) {
                K(protoBuf$Class.h0());
            }
            if (protoBuf$Class.D0()) {
                I(protoBuf$Class.Y());
            }
            if (!protoBuf$Class.j.isEmpty()) {
                if (this.h.isEmpty()) {
                    this.h = protoBuf$Class.j;
                    this.f9439d &= -9;
                } else {
                    B();
                    this.h.addAll(protoBuf$Class.j);
                }
            }
            if (!protoBuf$Class.k.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$Class.k;
                    this.f9439d &= -17;
                } else {
                    z();
                    this.i.addAll(protoBuf$Class.k);
                }
            }
            if (!protoBuf$Class.l.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$Class.l;
                    this.f9439d &= -33;
                } else {
                    y();
                    this.j.addAll(protoBuf$Class.l);
                }
            }
            if (!protoBuf$Class.n.isEmpty()) {
                if (this.k.isEmpty()) {
                    this.k = protoBuf$Class.n;
                    this.f9439d &= -65;
                } else {
                    v();
                    this.k.addAll(protoBuf$Class.n);
                }
            }
            if (!protoBuf$Class.p.isEmpty()) {
                if (this.l.isEmpty()) {
                    this.l = protoBuf$Class.p;
                    this.f9439d &= -129;
                } else {
                    s();
                    this.l.addAll(protoBuf$Class.p);
                }
            }
            if (!protoBuf$Class.q.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$Class.q;
                    this.f9439d &= -257;
                } else {
                    u();
                    this.m.addAll(protoBuf$Class.q);
                }
            }
            if (!protoBuf$Class.r.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$Class.r;
                    this.f9439d &= -513;
                } else {
                    w();
                    this.n.addAll(protoBuf$Class.r);
                }
            }
            if (!protoBuf$Class.s.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Class.s;
                    this.f9439d &= -1025;
                } else {
                    A();
                    this.o.addAll(protoBuf$Class.s);
                }
            }
            if (!protoBuf$Class.t.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Class.t;
                    this.f9439d &= -2049;
                } else {
                    t();
                    this.p.addAll(protoBuf$Class.t);
                }
            }
            if (!protoBuf$Class.u.isEmpty()) {
                if (this.q.isEmpty()) {
                    this.q = protoBuf$Class.u;
                    this.f9439d &= -4097;
                } else {
                    x();
                    this.q.addAll(protoBuf$Class.u);
                }
            }
            if (protoBuf$Class.G0()) {
                G(protoBuf$Class.A0());
            }
            if (!protoBuf$Class.x.isEmpty()) {
                if (this.s.isEmpty()) {
                    this.s = protoBuf$Class.x;
                    this.f9439d &= -16385;
                } else {
                    C();
                    this.s.addAll(protoBuf$Class.x);
                }
            }
            if (protoBuf$Class.H0()) {
                H(protoBuf$Class.C0());
            }
            m(protoBuf$Class);
            i(g().c(protoBuf$Class.f9432e));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0539a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.b d(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.lang.Throwable {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.l<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.f9431d     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                java.lang.Object r3 = r1.c(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.d -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.b.a(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class$b");
        }

        public b G(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.f9439d & 8192) != 8192 || this.r == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.r = protoBuf$TypeTable;
            } else {
                this.r = ProtoBuf$TypeTable.newBuilder(this.r).h(protoBuf$TypeTable).l();
            }
            this.f9439d |= 8192;
            return this;
        }

        public b H(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if ((this.f9439d & 32768) != 32768 || this.t == ProtoBuf$VersionRequirementTable.getDefaultInstance()) {
                this.t = protoBuf$VersionRequirementTable;
            } else {
                this.t = ProtoBuf$VersionRequirementTable.newBuilder(this.t).h(protoBuf$VersionRequirementTable).l();
            }
            this.f9439d |= 32768;
            return this;
        }

        public b I(int i) {
            this.f9439d |= 4;
            this.f9442g = i;
            return this;
        }

        public b J(int i) {
            this.f9439d |= 1;
            this.f9440e = i;
            return this;
        }

        public b K(int i) {
            this.f9439d |= 2;
            this.f9441f = i;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Class build() {
            ProtoBuf$Class protoBuf$ClassP = p();
            if (protoBuf$ClassP.isInitialized()) {
                return protoBuf$ClassP;
            }
            throw a.AbstractC0539a.e(protoBuf$ClassP);
        }

        public ProtoBuf$Class p() {
            ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(this);
            int i = this.f9439d;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Class.f9434g = this.f9440e;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Class.h = this.f9441f;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Class.i = this.f9442g;
            if ((this.f9439d & 8) == 8) {
                this.h = Collections.unmodifiableList(this.h);
                this.f9439d &= -9;
            }
            protoBuf$Class.j = this.h;
            if ((this.f9439d & 16) == 16) {
                this.i = Collections.unmodifiableList(this.i);
                this.f9439d &= -17;
            }
            protoBuf$Class.k = this.i;
            if ((this.f9439d & 32) == 32) {
                this.j = Collections.unmodifiableList(this.j);
                this.f9439d &= -33;
            }
            protoBuf$Class.l = this.j;
            if ((this.f9439d & 64) == 64) {
                this.k = Collections.unmodifiableList(this.k);
                this.f9439d &= -65;
            }
            protoBuf$Class.n = this.k;
            if ((this.f9439d & 128) == 128) {
                this.l = Collections.unmodifiableList(this.l);
                this.f9439d &= -129;
            }
            protoBuf$Class.p = this.l;
            if ((this.f9439d & 256) == 256) {
                this.m = Collections.unmodifiableList(this.m);
                this.f9439d &= -257;
            }
            protoBuf$Class.q = this.m;
            if ((this.f9439d & 512) == 512) {
                this.n = Collections.unmodifiableList(this.n);
                this.f9439d &= -513;
            }
            protoBuf$Class.r = this.n;
            if ((this.f9439d & 1024) == 1024) {
                this.o = Collections.unmodifiableList(this.o);
                this.f9439d &= -1025;
            }
            protoBuf$Class.s = this.o;
            if ((this.f9439d & 2048) == 2048) {
                this.p = Collections.unmodifiableList(this.p);
                this.f9439d &= -2049;
            }
            protoBuf$Class.t = this.p;
            if ((this.f9439d & 4096) == 4096) {
                this.q = Collections.unmodifiableList(this.q);
                this.f9439d &= -4097;
            }
            protoBuf$Class.u = this.q;
            if ((i & 8192) == 8192) {
                i2 |= 8;
            }
            protoBuf$Class.w = this.r;
            if ((this.f9439d & 16384) == 16384) {
                this.s = Collections.unmodifiableList(this.s);
                this.f9439d &= -16385;
            }
            protoBuf$Class.x = this.s;
            if ((i & 32768) == 32768) {
                i2 |= 16;
            }
            protoBuf$Class.y = this.t;
            protoBuf$Class.f9433f = i2;
            return protoBuf$Class;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.b
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public b f() {
            return r().h(p());
        }
    }

    static {
        ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(true);
        c = protoBuf$Class;
        protoBuf$Class.I0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ProtoBuf$Class(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws d {
        this.m = -1;
        this.o = -1;
        this.v = -1;
        this.z = (byte) -1;
        this.A = -1;
        I0();
        ByteString.b bVarNewOutput = ByteString.newOutput();
        CodedOutputStream codedOutputStreamNewInstance = CodedOutputStream.newInstance(bVarNewOutput, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int iG = codedInputStream.G();
                    switch (iG) {
                        case 0:
                            z = true;
                            break;
                        case 8:
                            this.f9433f |= 1;
                            this.f9434g = codedInputStream.p();
                            break;
                        case 16:
                            if ((i & 32) != 32) {
                                this.l = new ArrayList();
                                i |= 32;
                            }
                            this.l.add(Integer.valueOf(codedInputStream.p()));
                            break;
                        case 18:
                            int iG2 = codedInputStream.g(codedInputStream.x());
                            if ((i & 32) != 32 && codedInputStream.c() > 0) {
                                this.l = new ArrayList();
                                i |= 32;
                            }
                            while (codedInputStream.c() > 0) {
                                this.l.add(Integer.valueOf(codedInputStream.p()));
                            }
                            codedInputStream.f(iG2);
                            break;
                        case 24:
                            this.f9433f |= 2;
                            this.h = codedInputStream.p();
                            break;
                        case 32:
                            this.f9433f |= 4;
                            this.i = codedInputStream.p();
                            break;
                        case 42:
                            if ((i & 8) != 8) {
                                this.j = new ArrayList();
                                i |= 8;
                            }
                            this.j.add((ProtoBuf$TypeParameter) codedInputStream.r(ProtoBuf$TypeParameter.f9568d, extensionRegistryLite));
                            break;
                        case 50:
                            if ((i & 16) != 16) {
                                this.k = new ArrayList();
                                i |= 16;
                            }
                            this.k.add((ProtoBuf$Type) codedInputStream.r(ProtoBuf$Type.f9542d, extensionRegistryLite));
                            break;
                        case 56:
                            if ((i & 64) != 64) {
                                this.n = new ArrayList();
                                i |= 64;
                            }
                            this.n.add(Integer.valueOf(codedInputStream.p()));
                            break;
                        case 58:
                            int iG3 = codedInputStream.g(codedInputStream.x());
                            if ((i & 64) != 64 && codedInputStream.c() > 0) {
                                this.n = new ArrayList();
                                i |= 64;
                            }
                            while (codedInputStream.c() > 0) {
                                this.n.add(Integer.valueOf(codedInputStream.p()));
                            }
                            codedInputStream.f(iG3);
                            break;
                        case 66:
                            if ((i & 128) != 128) {
                                this.p = new ArrayList();
                                i |= 128;
                            }
                            this.p.add((ProtoBuf$Constructor) codedInputStream.r(ProtoBuf$Constructor.f9443d, extensionRegistryLite));
                            break;
                        case 74:
                            if ((i & 256) != 256) {
                                this.q = new ArrayList();
                                i |= 256;
                            }
                            this.q.add((ProtoBuf$Function) codedInputStream.r(ProtoBuf$Function.f9485d, extensionRegistryLite));
                            break;
                        case 82:
                            if ((i & 512) != 512) {
                                this.r = new ArrayList();
                                i |= 512;
                            }
                            this.r.add((ProtoBuf$Property) codedInputStream.r(ProtoBuf$Property.f9517d, extensionRegistryLite));
                            break;
                        case 90:
                            if ((i & 1024) != 1024) {
                                this.s = new ArrayList();
                                i |= 1024;
                            }
                            this.s.add((ProtoBuf$TypeAlias) codedInputStream.r(ProtoBuf$TypeAlias.f9560d, extensionRegistryLite));
                            break;
                        case 106:
                            if ((i & 2048) != 2048) {
                                this.t = new ArrayList();
                                i |= 2048;
                            }
                            this.t.add((ProtoBuf$EnumEntry) codedInputStream.r(ProtoBuf$EnumEntry.f9468d, extensionRegistryLite));
                            break;
                        case 128:
                            if ((i & 4096) != 4096) {
                                this.u = new ArrayList();
                                i |= 4096;
                            }
                            this.u.add(Integer.valueOf(codedInputStream.p()));
                            break;
                        case 130:
                            int iG4 = codedInputStream.g(codedInputStream.x());
                            if ((i & 4096) != 4096 && codedInputStream.c() > 0) {
                                this.u = new ArrayList();
                                i |= 4096;
                            }
                            while (codedInputStream.c() > 0) {
                                this.u.add(Integer.valueOf(codedInputStream.p()));
                            }
                            codedInputStream.f(iG4);
                            break;
                        case 242:
                            ProtoBuf$TypeTable.b bVarY = (this.f9433f & 8) == 8 ? this.w.toBuilder() : null;
                            ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) codedInputStream.r(ProtoBuf$TypeTable.c, extensionRegistryLite);
                            this.w = protoBuf$TypeTable;
                            if (bVarY != 0) {
                                bVarY.h(protoBuf$TypeTable);
                                this.w = bVarY.l();
                            }
                            this.f9433f |= 8;
                            break;
                        case 248:
                            if ((i & 16384) != 16384) {
                                this.x = new ArrayList();
                                i |= 16384;
                            }
                            this.x.add(Integer.valueOf(codedInputStream.p()));
                            break;
                        case 250:
                            int iG5 = codedInputStream.g(codedInputStream.x());
                            if ((i & 16384) != 16384 && codedInputStream.c() > 0) {
                                this.x = new ArrayList();
                                i |= 16384;
                            }
                            while (codedInputStream.c() > 0) {
                                this.x.add(Integer.valueOf(codedInputStream.p()));
                            }
                            codedInputStream.f(iG5);
                            break;
                        case 258:
                            ProtoBuf$VersionRequirementTable.b bVarT = (this.f9433f & 16) == 16 ? this.y.toBuilder() : null;
                            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = (ProtoBuf$VersionRequirementTable) codedInputStream.r(ProtoBuf$VersionRequirementTable.c, extensionRegistryLite);
                            this.y = protoBuf$VersionRequirementTable;
                            if (bVarT != 0) {
                                bVarT.h(protoBuf$VersionRequirementTable);
                                this.y = bVarT.l();
                            }
                            this.f9433f |= 16;
                            break;
                        default:
                            if (!i(codedInputStream, codedOutputStreamNewInstance, extensionRegistryLite, iG)) {
                                z = true;
                            }
                            break;
                    }
                } catch (d e2) {
                    throw e2.k(this);
                } catch (IOException e3) {
                    throw new d(e3.getMessage()).k(this);
                }
            } catch (Throwable th) {
                if ((i & 32) == 32) {
                    this.l = Collections.unmodifiableList(this.l);
                }
                if ((i & 8) == 8) {
                    this.j = Collections.unmodifiableList(this.j);
                }
                if ((i & 16) == 16) {
                    this.k = Collections.unmodifiableList(this.k);
                }
                if ((i & 64) == 64) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                if ((i & 128) == 128) {
                    this.p = Collections.unmodifiableList(this.p);
                }
                if ((i & 256) == 256) {
                    this.q = Collections.unmodifiableList(this.q);
                }
                if ((i & 512) == 512) {
                    this.r = Collections.unmodifiableList(this.r);
                }
                if ((i & 1024) == 1024) {
                    this.s = Collections.unmodifiableList(this.s);
                }
                if ((i & 2048) == 2048) {
                    this.t = Collections.unmodifiableList(this.t);
                }
                if ((i & 4096) == 4096) {
                    this.u = Collections.unmodifiableList(this.u);
                }
                if ((i & 16384) == 16384) {
                    this.x = Collections.unmodifiableList(this.x);
                }
                try {
                    codedOutputStreamNewInstance.b();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f9432e = bVarNewOutput.f();
                    throw th2;
                }
                this.f9432e = bVarNewOutput.f();
                h();
                throw th;
            }
        }
        if ((i & 32) == 32) {
            this.l = Collections.unmodifiableList(this.l);
        }
        if ((i & 8) == 8) {
            this.j = Collections.unmodifiableList(this.j);
        }
        if ((i & 16) == 16) {
            this.k = Collections.unmodifiableList(this.k);
        }
        if ((i & 64) == 64) {
            this.n = Collections.unmodifiableList(this.n);
        }
        if ((i & 128) == 128) {
            this.p = Collections.unmodifiableList(this.p);
        }
        if ((i & 256) == 256) {
            this.q = Collections.unmodifiableList(this.q);
        }
        if ((i & 512) == 512) {
            this.r = Collections.unmodifiableList(this.r);
        }
        if ((i & 1024) == 1024) {
            this.s = Collections.unmodifiableList(this.s);
        }
        if ((i & 2048) == 2048) {
            this.t = Collections.unmodifiableList(this.t);
        }
        if ((i & 4096) == 4096) {
            this.u = Collections.unmodifiableList(this.u);
        }
        if ((i & 16384) == 16384) {
            this.x = Collections.unmodifiableList(this.x);
        }
        try {
            codedOutputStreamNewInstance.b();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f9432e = bVarNewOutput.f();
            throw th3;
        }
        this.f9432e = bVarNewOutput.f();
        h();
    }

    private ProtoBuf$Class(GeneratedMessageLite.c<ProtoBuf$Class, ?> cVar) {
        super(cVar);
        this.m = -1;
        this.o = -1;
        this.v = -1;
        this.z = (byte) -1;
        this.A = -1;
        this.f9432e = cVar.g();
    }

    private ProtoBuf$Class(boolean z) {
        this.m = -1;
        this.o = -1;
        this.v = -1;
        this.z = (byte) -1;
        this.A = -1;
        this.f9432e = ByteString.a;
    }

    private void I0() {
        this.f9434g = 6;
        this.h = 0;
        this.i = 0;
        this.j = Collections.emptyList();
        this.k = Collections.emptyList();
        this.l = Collections.emptyList();
        this.n = Collections.emptyList();
        this.p = Collections.emptyList();
        this.q = Collections.emptyList();
        this.r = Collections.emptyList();
        this.s = Collections.emptyList();
        this.t = Collections.emptyList();
        this.u = Collections.emptyList();
        this.w = ProtoBuf$TypeTable.getDefaultInstance();
        this.x = Collections.emptyList();
        this.y = ProtoBuf$VersionRequirementTable.getDefaultInstance();
    }

    public static ProtoBuf$Class getDefaultInstance() {
        return c;
    }

    public static b newBuilder() {
        return b.r();
    }

    public static b newBuilder(ProtoBuf$Class protoBuf$Class) {
        return newBuilder().h(protoBuf$Class);
    }

    public static ProtoBuf$Class parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return f9431d.a(inputStream, extensionRegistryLite);
    }

    public ProtoBuf$TypeTable A0() {
        return this.w;
    }

    public List<Integer> B0() {
        return this.x;
    }

    public ProtoBuf$VersionRequirementTable C0() {
        return this.y;
    }

    public boolean D0() {
        return (this.f9433f & 4) == 4;
    }

    public boolean E0() {
        return (this.f9433f & 1) == 1;
    }

    public boolean F0() {
        return (this.f9433f & 2) == 2;
    }

    public boolean G0() {
        return (this.f9433f & 8) == 8;
    }

    public boolean H0() {
        return (this.f9433f & 16) == 16;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    /* JADX INFO: renamed from: K0, reason: merged with bridge method [inline-methods] */
    public b toBuilder() {
        return newBuilder(this);
    }

    public int Y() {
        return this.i;
    }

    public ProtoBuf$Constructor Z(int i) {
        return this.p.get(i);
    }

    public int a0() {
        return this.p.size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.d<MessageType>.a aVarT = t();
        if ((this.f9433f & 1) == 1) {
            codedOutputStream.s(1, this.f9434g);
        }
        if (s0().size() > 0) {
            codedOutputStream.G(18);
            codedOutputStream.G(this.m);
        }
        for (int i = 0; i < this.l.size(); i++) {
            codedOutputStream.t(this.l.get(i).intValue());
        }
        if ((this.f9433f & 2) == 2) {
            codedOutputStream.s(3, this.h);
        }
        if ((this.f9433f & 4) == 4) {
            codedOutputStream.s(4, this.i);
        }
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            codedOutputStream.v(5, this.j.get(i2));
        }
        for (int i3 = 0; i3 < this.k.size(); i3++) {
            codedOutputStream.v(6, this.k.get(i3));
        }
        if (l0().size() > 0) {
            codedOutputStream.G(58);
            codedOutputStream.G(this.o);
        }
        for (int i4 = 0; i4 < this.n.size(); i4++) {
            codedOutputStream.t(this.n.get(i4).intValue());
        }
        for (int i5 = 0; i5 < this.p.size(); i5++) {
            codedOutputStream.v(8, this.p.get(i5));
        }
        for (int i6 = 0; i6 < this.q.size(); i6++) {
            codedOutputStream.v(9, this.q.get(i6));
        }
        for (int i7 = 0; i7 < this.r.size(); i7++) {
            codedOutputStream.v(10, this.r.get(i7));
        }
        for (int i8 = 0; i8 < this.s.size(); i8++) {
            codedOutputStream.v(11, this.s.get(i8));
        }
        for (int i9 = 0; i9 < this.t.size(); i9++) {
            codedOutputStream.v(13, this.t.get(i9));
        }
        if (p0().size() > 0) {
            codedOutputStream.G(130);
            codedOutputStream.G(this.v);
        }
        for (int i10 = 0; i10 < this.u.size(); i10++) {
            codedOutputStream.t(this.u.get(i10).intValue());
        }
        if ((this.f9433f & 8) == 8) {
            codedOutputStream.v(30, this.w);
        }
        for (int i11 = 0; i11 < this.x.size(); i11++) {
            codedOutputStream.s(31, this.x.get(i11).intValue());
        }
        if ((this.f9433f & 16) == 16) {
            codedOutputStream.v(32, this.y);
        }
        aVarT.a(19000, codedOutputStream);
        codedOutputStream.A(this.f9432e);
    }

    public List<ProtoBuf$Constructor> b0() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public ProtoBuf$Class getDefaultInstanceForType() {
        return c;
    }

    public ProtoBuf$EnumEntry d0(int i) {
        return this.t.get(i);
    }

    public int e0() {
        return this.t.size();
    }

    public List<ProtoBuf$EnumEntry> f0() {
        return this.t;
    }

    public int g0() {
        return this.f9434g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<ProtoBuf$Class> getParserForType() {
        return f9431d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public int getSerializedSize() {
        int i = this.A;
        if (i != -1) {
            return i;
        }
        int iComputeInt32Size = (this.f9433f & 1) == 1 ? CodedOutputStream.computeInt32Size(1, this.f9434g) + 0 : 0;
        int iComputeInt32SizeNoTag = 0;
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(this.l.get(i2).intValue());
        }
        int iComputeMessageSize = iComputeInt32Size + iComputeInt32SizeNoTag;
        if (!s0().isEmpty()) {
            iComputeMessageSize = iComputeMessageSize + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag);
        }
        this.m = iComputeInt32SizeNoTag;
        if ((this.f9433f & 2) == 2) {
            iComputeMessageSize += CodedOutputStream.computeInt32Size(3, this.h);
        }
        if ((this.f9433f & 4) == 4) {
            iComputeMessageSize += CodedOutputStream.computeInt32Size(4, this.i);
        }
        for (int i3 = 0; i3 < this.j.size(); i3++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(5, this.j.get(i3));
        }
        for (int i4 = 0; i4 < this.k.size(); i4++) {
            iComputeMessageSize += CodedOutputStream.computeMessageSize(6, this.k.get(i4));
        }
        int iComputeInt32SizeNoTag2 = 0;
        for (int i5 = 0; i5 < this.n.size(); i5++) {
            iComputeInt32SizeNoTag2 += CodedOutputStream.computeInt32SizeNoTag(this.n.get(i5).intValue());
        }
        int iComputeMessageSize2 = iComputeMessageSize + iComputeInt32SizeNoTag2;
        if (!l0().isEmpty()) {
            iComputeMessageSize2 = iComputeMessageSize2 + 1 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag2);
        }
        this.o = iComputeInt32SizeNoTag2;
        for (int i6 = 0; i6 < this.p.size(); i6++) {
            iComputeMessageSize2 += CodedOutputStream.computeMessageSize(8, this.p.get(i6));
        }
        for (int i7 = 0; i7 < this.q.size(); i7++) {
            iComputeMessageSize2 += CodedOutputStream.computeMessageSize(9, this.q.get(i7));
        }
        for (int i8 = 0; i8 < this.r.size(); i8++) {
            iComputeMessageSize2 += CodedOutputStream.computeMessageSize(10, this.r.get(i8));
        }
        for (int i9 = 0; i9 < this.s.size(); i9++) {
            iComputeMessageSize2 += CodedOutputStream.computeMessageSize(11, this.s.get(i9));
        }
        for (int i10 = 0; i10 < this.t.size(); i10++) {
            iComputeMessageSize2 += CodedOutputStream.computeMessageSize(13, this.t.get(i10));
        }
        int iComputeInt32SizeNoTag3 = 0;
        for (int i11 = 0; i11 < this.u.size(); i11++) {
            iComputeInt32SizeNoTag3 += CodedOutputStream.computeInt32SizeNoTag(this.u.get(i11).intValue());
        }
        int iComputeMessageSize3 = iComputeMessageSize2 + iComputeInt32SizeNoTag3;
        if (!p0().isEmpty()) {
            iComputeMessageSize3 = iComputeMessageSize3 + 2 + CodedOutputStream.computeInt32SizeNoTag(iComputeInt32SizeNoTag3);
        }
        this.v = iComputeInt32SizeNoTag3;
        if ((this.f9433f & 8) == 8) {
            iComputeMessageSize3 += CodedOutputStream.computeMessageSize(30, this.w);
        }
        int iComputeInt32SizeNoTag4 = 0;
        for (int i12 = 0; i12 < this.x.size(); i12++) {
            iComputeInt32SizeNoTag4 += CodedOutputStream.computeInt32SizeNoTag(this.x.get(i12).intValue());
        }
        int size = iComputeMessageSize3 + iComputeInt32SizeNoTag4 + (B0().size() * 2);
        if ((this.f9433f & 16) == 16) {
            size += CodedOutputStream.computeMessageSize(32, this.y);
        }
        int iN = size + n() + this.f9432e.size();
        this.A = iN;
        return iN;
    }

    public int h0() {
        return this.h;
    }

    public ProtoBuf$Function i0(int i) {
        return this.q.get(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.k
    public final boolean isInitialized() {
        byte b2 = this.z;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (!F0()) {
            this.z = (byte) 0;
            return false;
        }
        for (int i = 0; i < y0(); i++) {
            if (!x0(i).isInitialized()) {
                this.z = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < r0(); i2++) {
            if (!q0(i2).isInitialized()) {
                this.z = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < a0(); i3++) {
            if (!Z(i3).isInitialized()) {
                this.z = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < j0(); i4++) {
            if (!i0(i4).isInitialized()) {
                this.z = (byte) 0;
                return false;
            }
        }
        for (int i5 = 0; i5 < n0(); i5++) {
            if (!m0(i5).isInitialized()) {
                this.z = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < v0(); i6++) {
            if (!u0(i6).isInitialized()) {
                this.z = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < e0(); i7++) {
            if (!d0(i7).isInitialized()) {
                this.z = (byte) 0;
                return false;
            }
        }
        if (G0() && !A0().isInitialized()) {
            this.z = (byte) 0;
            return false;
        }
        if (m()) {
            this.z = (byte) 1;
            return true;
        }
        this.z = (byte) 0;
        return false;
    }

    public int j0() {
        return this.q.size();
    }

    public List<ProtoBuf$Function> k0() {
        return this.q;
    }

    public List<Integer> l0() {
        return this.n;
    }

    public ProtoBuf$Property m0(int i) {
        return this.r.get(i);
    }

    public int n0() {
        return this.r.size();
    }

    public List<ProtoBuf$Property> o0() {
        return this.r;
    }

    public List<Integer> p0() {
        return this.u;
    }

    public ProtoBuf$Type q0(int i) {
        return this.k.get(i);
    }

    public int r0() {
        return this.k.size();
    }

    public List<Integer> s0() {
        return this.l;
    }

    public List<ProtoBuf$Type> t0() {
        return this.k;
    }

    public ProtoBuf$TypeAlias u0(int i) {
        return this.s.get(i);
    }

    public int v0() {
        return this.s.size();
    }

    public List<ProtoBuf$TypeAlias> w0() {
        return this.s;
    }

    public ProtoBuf$TypeParameter x0(int i) {
        return this.j.get(i);
    }

    public int y0() {
        return this.j.size();
    }

    public List<ProtoBuf$TypeParameter> z0() {
        return this.j;
    }
}
