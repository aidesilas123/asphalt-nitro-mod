package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.FieldSet;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat;
import kotlin.reflect.jvm.internal.impl.protobuf.a;
import kotlin.reflect.jvm.internal.impl.protobuf.j;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GeneratedMessageLite extends kotlin.reflect.jvm.internal.impl.protobuf.a implements Serializable {

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[WireFormat.JavaType.values().length];
            a = iArr;
            try {
                iArr[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[WireFormat.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b<MessageType extends GeneratedMessageLite, BuilderType extends b> extends a.AbstractC0539a<BuilderType> {
        private ByteString a = ByteString.a;

        protected b() {
        }

        @Override // 
        public BuilderType f() {
            throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
        }

        public final ByteString g() {
            return this.a;
        }

        public abstract BuilderType h(MessageType messagetype);

        public final BuilderType i(ByteString byteString) {
            this.a = byteString;
            return this;
        }
    }

    public static abstract class c<MessageType extends d<MessageType>, BuilderType extends c<MessageType, BuilderType>> extends b<MessageType, BuilderType> implements k {
        private FieldSet<e> b = FieldSet.emptySet();
        private boolean c;

        protected c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public FieldSet<e> k() {
            this.b.o();
            this.c = false;
            return this.b;
        }

        private void l() {
            if (this.c) {
                return;
            }
            this.b = this.b.clone();
            this.c = true;
        }

        protected final void m(MessageType messagetype) {
            l();
            this.b.p(((d) messagetype).b);
        }
    }

    public static abstract class d<MessageType extends d<MessageType>> extends GeneratedMessageLite implements k {
        private final FieldSet<e> b;

        protected class a {
            private final Iterator<Map.Entry<e, Object>> a;
            private Map.Entry<e, Object> b;
            private final boolean c;

            private a(boolean z) {
                Iterator<Map.Entry<e, Object>> itN = d.this.b.n();
                this.a = itN;
                if (itN.hasNext()) {
                    this.b = itN.next();
                }
                this.c = z;
            }

            /* synthetic */ a(d dVar, boolean z, a aVar) {
                this(z);
            }

            public void a(int i, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<e, Object> entry = this.b;
                    if (entry == null || entry.getKey().getNumber() >= i) {
                        return;
                    }
                    e key = this.b.getKey();
                    if (this.c && key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated()) {
                        codedOutputStream.x(key.getNumber(), (j) this.b.getValue());
                    } else {
                        FieldSet.writeField(key, this.b.getValue(), codedOutputStream);
                    }
                    if (this.a.hasNext()) {
                        this.b = this.a.next();
                    } else {
                        this.b = null;
                    }
                }
            }
        }

        protected d() {
            this.b = FieldSet.newFieldSet();
        }

        protected d(c<MessageType, ?> cVar) {
            this.b = cVar.k();
        }

        private void u(f<MessageType, ?> fVar) {
            if (fVar.b() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        protected void h() {
            this.b.o();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite
        protected boolean i(CodedInputStream codedInputStream, CodedOutputStream codedOutputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
            return GeneratedMessageLite.j(this.b, getDefaultInstanceForType(), codedInputStream, codedOutputStream, extensionRegistryLite, i);
        }

        protected boolean m() {
            return this.b.l();
        }

        protected int n() {
            return this.b.i();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <Type> Type p(f<MessageType, Type> fVar) {
            u(fVar);
            Object objF = this.b.f(fVar.f9694d);
            return objF == null ? fVar.b : (Type) fVar.a(objF);
        }

        public final <Type> Type q(f<MessageType, List<Type>> fVar, int i) {
            u(fVar);
            return (Type) fVar.e(this.b.g(fVar.f9694d, i));
        }

        public final <Type> int r(f<MessageType, List<Type>> fVar) {
            u(fVar);
            return this.b.h(fVar.f9694d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <Type> boolean s(f<MessageType, Type> fVar) {
            u(fVar);
            return this.b.k(fVar.f9694d);
        }

        protected d<MessageType>.a t() {
            return new a(this, false, null);
        }
    }

    static final class e implements FieldSet.b<e> {
        final Internal.b<?> a;
        final int b;
        final WireFormat.FieldType c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final boolean f9692d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f9693e;

        e(Internal.b<?> bVar, int i, WireFormat.FieldType fieldType, boolean z, boolean z2) {
            this.a = bVar;
            this.b = i;
            this.c = fieldType;
            this.f9692d = z;
            this.f9693e = z2;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(e eVar) {
            return this.b - eVar.b;
        }

        public Internal.b<?> e() {
            return this.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.b
        public WireFormat.JavaType getLiteJavaType() {
            return this.c.e();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.b
        public WireFormat.FieldType getLiteType() {
            return this.c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.b
        public int getNumber() {
            return this.b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.b
        public boolean isPacked() {
            return this.f9693e;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.b
        public boolean isRepeated() {
            return this.f9692d;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.b
        public j.a r(j.a aVar, j jVar) {
            return ((b) aVar).h((GeneratedMessageLite) jVar);
        }
    }

    public static class f<ContainingType extends j, Type> {
        final ContainingType a;
        final Type b;
        final j c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final e f9694d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Class f9695e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final Method f9696f;

        f(ContainingType containingtype, Type type, j jVar, e eVar, Class cls) {
            if (containingtype == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (eVar.getLiteType() == WireFormat.FieldType.k && jVar == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.a = containingtype;
            this.b = type;
            this.c = jVar;
            this.f9694d = eVar;
            this.f9695e = cls;
            if (Internal.a.class.isAssignableFrom(cls)) {
                this.f9696f = GeneratedMessageLite.f(cls, "valueOf", Integer.TYPE);
            } else {
                this.f9696f = null;
            }
        }

        Object a(Object obj) {
            if (!this.f9694d.isRepeated()) {
                return e(obj);
            }
            if (this.f9694d.getLiteJavaType() != WireFormat.JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(e(it.next()));
            }
            return arrayList;
        }

        public ContainingType b() {
            return this.a;
        }

        public j c() {
            return this.c;
        }

        public int d() {
            return this.f9694d.getNumber();
        }

        Object e(Object obj) {
            return this.f9694d.getLiteJavaType() == WireFormat.JavaType.ENUM ? GeneratedMessageLite.g(this.f9696f, null, (Integer) obj) : obj;
        }

        Object f(Object obj) {
            return this.f9694d.getLiteJavaType() == WireFormat.JavaType.ENUM ? Integer.valueOf(((Internal.a) obj).getNumber()) : obj;
        }
    }

    protected GeneratedMessageLite() {
    }

    protected GeneratedMessageLite(b bVar) {
    }

    static Method f(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            String name = cls.getName();
            String strValueOf = String.valueOf(str);
            StringBuilder sb = new StringBuilder(name.length() + 45 + strValueOf.length());
            sb.append("Generated message class \"");
            sb.append(name);
            sb.append("\" missing method \"");
            sb.append(strValueOf);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    static Object g(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends j> boolean j(FieldSet<e> fieldSet, MessageType messagetype, CodedInputStream codedInputStream, CodedOutputStream codedOutputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
        boolean z;
        boolean z2;
        Object objBuild;
        j jVar;
        int iA = WireFormat.a(i);
        f fVarB = extensionRegistryLite.b(messagetype, WireFormat.getTagFieldNumber(i));
        if (fVarB == null) {
            z = true;
            z2 = false;
        } else if (iA == FieldSet.j(fVarB.f9694d.getLiteType(), false)) {
            z = false;
            z2 = false;
        } else {
            e eVar = fVarB.f9694d;
            if (eVar.f9692d && eVar.c.g() && iA == FieldSet.j(fVarB.f9694d.getLiteType(), true)) {
                z = false;
                z2 = true;
            }
            z = true;
            z2 = false;
        }
        if (z) {
            return codedInputStream.L(i, codedOutputStream);
        }
        if (z2) {
            int iG = codedInputStream.g(codedInputStream.x());
            if (fVarB.f9694d.getLiteType() == WireFormat.FieldType.n) {
                while (codedInputStream.c() > 0) {
                    Internal.a aVarFindValueByNumber = fVarB.f9694d.e().findValueByNumber(codedInputStream.k());
                    if (aVarFindValueByNumber == null) {
                        return true;
                    }
                    fieldSet.a(fVarB.f9694d, fVarB.f(aVarFindValueByNumber));
                }
            } else {
                while (codedInputStream.c() > 0) {
                    fieldSet.a(fVarB.f9694d, FieldSet.readPrimitiveField(codedInputStream, fVarB.f9694d.getLiteType(), false));
                }
            }
            codedInputStream.f(iG);
        } else {
            int i2 = a.a[fVarB.f9694d.getLiteJavaType().ordinal()];
            if (i2 == 1) {
                j.a aVarNewBuilderForType = null;
                if (!fVarB.f9694d.isRepeated() && (jVar = (j) fieldSet.f(fVarB.f9694d)) != null) {
                    aVarNewBuilderForType = jVar.toBuilder();
                }
                if (aVarNewBuilderForType == null) {
                    aVarNewBuilderForType = fVarB.c().newBuilderForType();
                }
                if (fVarB.f9694d.getLiteType() == WireFormat.FieldType.j) {
                    codedInputStream.o(fVarB.d(), aVarNewBuilderForType, extensionRegistryLite);
                } else {
                    codedInputStream.s(aVarNewBuilderForType, extensionRegistryLite);
                }
                objBuild = aVarNewBuilderForType.build();
            } else if (i2 != 2) {
                objBuild = FieldSet.readPrimitiveField(codedInputStream, fVarB.f9694d.getLiteType(), false);
            } else {
                int iK = codedInputStream.k();
                Internal.a aVarFindValueByNumber2 = fVarB.f9694d.e().findValueByNumber(iK);
                if (aVarFindValueByNumber2 == null) {
                    codedOutputStream.G(i);
                    codedOutputStream.Q(iK);
                    return true;
                }
                objBuild = aVarFindValueByNumber2;
            }
            if (fVarB.f9694d.isRepeated()) {
                fieldSet.a(fVarB.f9694d, fVarB.f(objBuild));
            } else {
                fieldSet.r(fVarB.f9694d, fVarB.f(objBuild));
            }
        }
        return true;
    }

    public static <ContainingType extends j, Type> f<ContainingType, Type> newRepeatedGeneratedExtension(ContainingType containingtype, j jVar, Internal.b<?> bVar, int i, WireFormat.FieldType fieldType, boolean z, Class cls) {
        return new f<>(containingtype, Collections.emptyList(), jVar, new e(bVar, i, fieldType, true, z), cls);
    }

    public static <ContainingType extends j, Type> f<ContainingType, Type> newSingularGeneratedExtension(ContainingType containingtype, Type type, j jVar, Internal.b<?> bVar, int i, WireFormat.FieldType fieldType, Class cls) {
        return new f<>(containingtype, type, jVar, new e(bVar, i, fieldType, false, false), cls);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j
    public l<? extends j> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    protected void h() {
    }

    protected boolean i(CodedInputStream codedInputStream, CodedOutputStream codedOutputStream, ExtensionRegistryLite extensionRegistryLite, int i) throws IOException {
        return codedInputStream.L(i, codedOutputStream);
    }
}
