package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite;
import com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite.b;
import com.fyber.inneractive.sdk.protobuf.a;
import com.fyber.inneractive.sdk.protobuf.e;
import com.fyber.inneractive.sdk.protobuf.o0;
import com.fyber.inneractive.sdk.protobuf.q;
import com.fyber.inneractive.sdk.protobuf.r1;
import com.fyber.inneractive.sdk.protobuf.u;
import com.fyber.inneractive.sdk.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends com.fyber.inneractive.sdk.protobuf.a<MessageType, BuilderType> {
    private static Map<Object, GeneratedMessageLite<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    public l1 unknownFields = l1.f2692f;
    public int memoizedSerializedSize = -1;

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType> extends GeneratedMessageLite<MessageType, BuilderType> implements p0 {
        public u<d> extensions = u.b();

        public class a {
            public a(ExtendableMessage extendableMessage, boolean z) {
                Iterator<Map.Entry<T, Object>> itF = extendableMessage.extensions.f();
                if (itF.hasNext()) {
                }
            }
        }

        private void eagerlyMergeMessageSetExtension(j jVar, e<?, ?> eVar, q qVar, int i) throws IOException {
            parseExtension(jVar, qVar, eVar, r1.a(i, 2), i);
        }

        private void mergeMessageSetExtensionFromBytes(i iVar, q qVar, e<?, ?> eVar) throws IOException {
            o0 o0Var = (o0) this.extensions.a(eVar.f2656d);
            o0.a builder = o0Var != null ? o0Var.toBuilder() : null;
            if (builder == null) {
                builder = eVar.c.newBuilderForType();
            }
            a.AbstractC0193a abstractC0193a = (a.AbstractC0193a) builder;
            abstractC0193a.getClass();
            try {
                j jVarG = iVar.g();
                ((b) abstractC0193a).a(jVarG, qVar);
                jVarG.a(0);
                ensureExtensionsAreMutable().c(eVar.f2656d, eVar.b(((b) builder).a()));
            } catch (z e2) {
                throw e2;
            } catch (IOException e3) {
                throw new RuntimeException("Reading " + abstractC0193a.getClass().getName() + " from a ByteString threw an IOException (should never happen).", e3);
            }
        }

        private <MessageType extends o0> void mergeMessageSetExtensionFromCodedStream(MessageType messagetype, j jVar, q qVar) throws IOException {
            int iU = 0;
            i iVarE = null;
            e<?, ?> eVar = null;
            while (true) {
                int iT = jVar.t();
                if (iT == 0) {
                    break;
                }
                if (iT == r1.c) {
                    iU = jVar.u();
                    if (iU != 0) {
                        eVar = qVar.a.get(new q.a(messagetype, iU));
                    }
                } else if (iT == r1.f2704d) {
                    if (iU == 0 || eVar == null) {
                        iVarE = jVar.e();
                    } else {
                        eagerlyMergeMessageSetExtension(jVar, eVar, qVar, iU);
                        iVarE = null;
                    }
                } else if (!jVar.e(iT)) {
                    break;
                }
            }
            jVar.a(r1.b);
            if (iVarE == null || iU == 0) {
                return;
            }
            if (eVar != null) {
                mergeMessageSetExtensionFromBytes(iVarE, qVar, eVar);
            } else {
                mergeLengthDelimitedField(iU, iVarE);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private boolean parseExtension(com.fyber.inneractive.sdk.protobuf.j r6, com.fyber.inneractive.sdk.protobuf.q r7, com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite.e<?, ?> r8, int r9, int r10) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 273
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite.ExtendableMessage.parseExtension(com.fyber.inneractive.sdk.protobuf.j, com.fyber.inneractive.sdk.protobuf.q, com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite$e, int, int):boolean");
        }

        private void verifyExtensionContainingType(e<MessageType, ?> eVar) {
            if (eVar.a != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public u<d> ensureExtensionsAreMutable() {
            u<d> uVar = this.extensions;
            if (uVar.b) {
                this.extensions = uVar.clone();
            }
            return this.extensions;
        }

        public boolean extensionsAreInitialized() {
            return this.extensions.e();
        }

        public int extensionsSerializedSize() {
            return this.extensions.d();
        }

        public int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.c();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite, com.fyber.inneractive.sdk.protobuf.p0
        public /* bridge */ /* synthetic */ o0 getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        /* JADX WARN: Type inference failed for: r1v4, types: [Type, java.util.ArrayList] */
        public final <Type> Type getExtension(o<MessageType, Type> oVar) {
            e<MessageType, ?> eVarCheckIsLite = GeneratedMessageLite.checkIsLite(oVar);
            verifyExtensionContainingType(eVarCheckIsLite);
            Type type = (Type) this.extensions.a(eVarCheckIsLite.f2656d);
            if (type == null) {
                return eVarCheckIsLite.b;
            }
            d dVar = eVarCheckIsLite.f2656d;
            if (!dVar.f2654d) {
                return (Type) eVarCheckIsLite.a(type);
            }
            if (dVar.c.e() != r1.c.ENUM) {
                return type;
            }
            ?? r1 = (Type) new ArrayList();
            Iterator it = ((List) type).iterator();
            while (it.hasNext()) {
                r1.add(eVarCheckIsLite.a(it.next()));
            }
            return r1;
        }

        public final <Type> Type getExtension(o<MessageType, List<Type>> oVar, int i) {
            e<MessageType, ?> eVarCheckIsLite = GeneratedMessageLite.checkIsLite(oVar);
            verifyExtensionContainingType(eVarCheckIsLite);
            u<d> uVar = this.extensions;
            d dVar = eVarCheckIsLite.f2656d;
            uVar.getClass();
            if (!dVar.b()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            Object objA = uVar.a(dVar);
            if (objA != null) {
                return (Type) eVarCheckIsLite.a(((List) objA).get(i));
            }
            throw new IndexOutOfBoundsException();
        }

        public final <Type> int getExtensionCount(o<MessageType, List<Type>> oVar) {
            e<MessageType, ?> eVarCheckIsLite = GeneratedMessageLite.checkIsLite(oVar);
            verifyExtensionContainingType(eVarCheckIsLite);
            u<d> uVar = this.extensions;
            d dVar = eVarCheckIsLite.f2656d;
            uVar.getClass();
            if (!dVar.b()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            Object objA = uVar.a(dVar);
            if (objA == null) {
                return 0;
            }
            return ((List) objA).size();
        }

        public final <Type> boolean hasExtension(o<MessageType, Type> oVar) {
            e<MessageType, ?> eVarCheckIsLite = GeneratedMessageLite.checkIsLite(oVar);
            verifyExtensionContainingType(eVarCheckIsLite);
            u<d> uVar = this.extensions;
            d dVar = eVarCheckIsLite.f2656d;
            uVar.getClass();
            if (dVar.b()) {
                throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
            }
            return uVar.a.get(dVar) != null;
        }

        public final void mergeExtensionFields(MessageType messagetype) {
            u<d> uVar = this.extensions;
            if (uVar.b) {
                this.extensions = uVar.clone();
            }
            this.extensions.a((u) messagetype.extensions);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite, com.fyber.inneractive.sdk.protobuf.o0
        public /* bridge */ /* synthetic */ o0.a newBuilderForType() {
            return super.newBuilderForType();
        }

        public ExtendableMessage<MessageType, BuilderType>.a newExtensionWriter() {
            return new a(this, false);
        }

        public ExtendableMessage<MessageType, BuilderType>.a newMessageSetExtensionWriter() {
            return new a(this, true);
        }

        public <MessageType extends o0> boolean parseUnknownField(MessageType messagetype, j jVar, q qVar, int i) throws IOException {
            int i2 = r1.a;
            int i3 = i >>> 3;
            return parseExtension(jVar, qVar, qVar.a.get(new q.a(messagetype, i3)), i, i3);
        }

        public <MessageType extends o0> boolean parseUnknownFieldAsMessageSet(MessageType messagetype, j jVar, q qVar, int i) throws IOException {
            if (i != r1.a) {
                return (i & 7) == 2 ? parseUnknownField(messagetype, jVar, qVar, i) : jVar.e(i);
            }
            mergeMessageSetExtensionFromCodedStream(messagetype, jVar, qVar);
            return true;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite, com.fyber.inneractive.sdk.protobuf.o0
        public /* bridge */ /* synthetic */ o0.a toBuilder() {
            return super.toBuilder();
        }
    }

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[r1.c.values().length];
            a = iArr;
            try {
                iArr[r1.c.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[r1.c.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends a.AbstractC0193a<MessageType, BuilderType> {
        public final MessageType a;
        public MessageType b;
        public boolean c = false;

        public b(MessageType messagetype) {
            this.a = messagetype;
            this.b = (MessageType) messagetype.dynamicMethod(f.NEW_MUTABLE_INSTANCE);
        }

        public BuilderType a(MessageType messagetype) {
            c();
            a(this.b, messagetype);
            return this;
        }

        public BuilderType a(j jVar, q qVar) throws IOException {
            c();
            try {
                z0 z0Var = z0.c;
                MessageType messagetype = this.b;
                z0Var.getClass();
                d1 d1VarA = z0Var.a(messagetype.getClass());
                MessageType messagetype2 = this.b;
                k kVar = jVar.f2674d;
                if (kVar == null) {
                    kVar = new k(jVar);
                }
                d1VarA.a(messagetype2, kVar, qVar);
                return this;
            } catch (RuntimeException e2) {
                if (e2.getCause() instanceof IOException) {
                    throw ((IOException) e2.getCause());
                }
                throw e2;
            }
        }

        public final MessageType a() {
            MessageType messagetype = (MessageType) b();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new j1();
        }

        public final void a(MessageType messagetype, MessageType messagetype2) {
            z0 z0Var = z0.c;
            z0Var.getClass();
            z0Var.a(messagetype.getClass()).a(messagetype, messagetype2);
        }

        public MessageType b() {
            if (this.c) {
                return this.b;
            }
            this.b.makeImmutable();
            this.c = true;
            return this.b;
        }

        public final void c() {
            if (this.c) {
                MessageType messagetype = (MessageType) this.b.dynamicMethod(f.NEW_MUTABLE_INSTANCE);
                MessageType messagetype2 = this.b;
                z0 z0Var = z0.c;
                z0Var.getClass();
                z0Var.a(messagetype.getClass()).a(messagetype, messagetype2);
                this.b = messagetype;
                this.c = false;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object clone() throws CloneNotSupportedException {
            b bVarNewBuilderForType = this.a.newBuilderForType();
            bVarNewBuilderForType.a(b());
            return bVarNewBuilderForType;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.p0
        public o0 getDefaultInstanceForType() {
            return this.a;
        }
    }

    public static class c<T extends GeneratedMessageLite<T, ?>> extends com.fyber.inneractive.sdk.protobuf.b<T> {
        public final T a;

        public c(T t) {
            this.a = t;
        }
    }

    public static final class d implements u.b<d> {
        public final y.d<?> a;
        public final int b;
        public final r1.b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f2654d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f2655e;

        public d(y.d<?> dVar, int i, r1.b bVar, boolean z, boolean z2) {
            this.a = dVar;
            this.b = i;
            this.c = bVar;
            this.f2654d = z;
            this.f2655e = z2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.u.b
        public int a() {
            return this.b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.fyber.inneractive.sdk.protobuf.u.b
        public o0.a a(o0.a aVar, o0 o0Var) {
            return ((b) aVar).a((GeneratedMessageLite) o0Var);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.u.b
        public boolean b() {
            return this.f2654d;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.u.b
        public r1.b c() {
            return this.c;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.b - ((d) obj).b;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.u.b
        public r1.c d() {
            return this.c.e();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.u.b
        public boolean isPacked() {
            return this.f2655e;
        }
    }

    public static class e<ContainingType extends o0, Type> extends o<ContainingType, Type> {
        public final ContainingType a;
        public final Type b;
        public final o0 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final d f2656d;

        /* JADX WARN: Multi-variable type inference failed */
        public e(o0 o0Var, Object obj, o0 o0Var2, d dVar) {
            if (o0Var == 0) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (dVar.c() == r1.b.MESSAGE && o0Var2 == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.a = o0Var;
            this.b = obj;
            this.c = o0Var2;
            this.f2656d = dVar;
        }

        public Object a(Object obj) {
            return this.f2656d.c.e() == r1.c.ENUM ? this.f2656d.a.a(((Integer) obj).intValue()) : obj;
        }

        public Object b(Object obj) {
            return this.f2656d.c.e() == r1.c.ENUM ? Integer.valueOf(((y.c) obj).a()) : obj;
        }
    }

    public enum f {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType, T> e<MessageType, T> checkIsLite(o<MessageType, T> oVar) {
        oVar.getClass();
        return (e) oVar;
    }

    private static <T extends GeneratedMessageLite<T, ?>> T checkMessageInitialized(T t) throws z {
        if (t == null || t.isInitialized()) {
            return t;
        }
        j1 j1VarNewUninitializedMessageException = t.newUninitializedMessageException();
        j1VarNewUninitializedMessageException.getClass();
        throw new z(j1VarNewUninitializedMessageException.getMessage());
    }

    public static y.a emptyBooleanList() {
        return g.f2665d;
    }

    public static y.b emptyDoubleList() {
        return n.f2695d;
    }

    public static y.f emptyFloatList() {
        return v.f2707d;
    }

    public static y.g emptyIntList() {
        return x.f2708d;
    }

    public static y.i emptyLongList() {
        return f0.f2663d;
    }

    public static <E> y.j<E> emptyProtobufList() {
        return a1.f2657d;
    }

    private final void ensureUnknownFieldsInitialized() {
        if (this.unknownFields == l1.f2692f) {
            this.unknownFields = l1.c();
        }
    }

    public static <T extends GeneratedMessageLite<?, ?>> T getDefaultInstance(Class<T> cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = defaultInstanceMap.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (generatedMessageLite == null) {
            try {
                generatedMessageLite = (T) ((GeneratedMessageLite) p1.a.allocateInstance(cls)).getDefaultInstanceForType();
                if (generatedMessageLite == null) {
                    throw new IllegalStateException();
                }
                defaultInstanceMap.put(cls, generatedMessageLite);
            } catch (Throwable th) {
                throw new IllegalStateException(th);
            }
        }
        return (T) generatedMessageLite;
    }

    public static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e2);
        }
    }

    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
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

    public static final <T extends GeneratedMessageLite<T, ?>> boolean isInitialized(T t, boolean z) {
        byte bByteValue = ((Byte) t.dynamicMethod(f.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        z0 z0Var = z0.c;
        z0Var.getClass();
        boolean zA = z0Var.a(t.getClass()).a(t);
        if (z) {
            t.dynamicMethod(f.SET_MEMOIZED_IS_INITIALIZED, zA ? t : null);
        }
        return zA;
    }

    public static y.a mutableCopy(y.a aVar) {
        g gVar = (g) aVar;
        int i = gVar.c;
        return gVar.b(i == 0 ? 10 : i * 2);
    }

    public static y.b mutableCopy(y.b bVar) {
        n nVar = (n) bVar;
        int i = nVar.c;
        return nVar.b(i == 0 ? 10 : i * 2);
    }

    public static y.f mutableCopy(y.f fVar) {
        v vVar = (v) fVar;
        int i = vVar.c;
        return vVar.b(i == 0 ? 10 : i * 2);
    }

    public static y.g mutableCopy(y.g gVar) {
        x xVar = (x) gVar;
        int i = xVar.c;
        return xVar.b(i == 0 ? 10 : i * 2);
    }

    public static y.i mutableCopy(y.i iVar) {
        f0 f0Var = (f0) iVar;
        int i = f0Var.c;
        return f0Var.b(i == 0 ? 10 : i * 2);
    }

    public static <E> y.j<E> mutableCopy(y.j<E> jVar) {
        int size = jVar.size();
        return jVar.b(size == 0 ? 10 : size * 2);
    }

    public static Object newMessageInfo(o0 o0Var, String str, Object[] objArr) {
        return new b1(o0Var, str, objArr);
    }

    public static <ContainingType extends o0, Type> e<ContainingType, Type> newRepeatedGeneratedExtension(ContainingType containingtype, o0 o0Var, y.d<?> dVar, int i, r1.b bVar, boolean z, Class cls) {
        return new e<>(containingtype, Collections.emptyList(), o0Var, new d(dVar, i, bVar, true, z));
    }

    public static <ContainingType extends o0, Type> e<ContainingType, Type> newSingularGeneratedExtension(ContainingType containingtype, Type type, o0 o0Var, y.d<?> dVar, int i, r1.b bVar, Class cls) {
        return new e<>(containingtype, type, o0Var, new d(dVar, i, bVar, false, false));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseDelimitedFrom(T t, InputStream inputStream) throws z {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t, inputStream, q.a()));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseDelimitedFrom(T t, InputStream inputStream, q qVar) throws z {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t, inputStream, qVar));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, i iVar) throws z {
        return (T) checkMessageInitialized(parseFrom(t, iVar, q.a()));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, i iVar, q qVar) throws z {
        return (T) checkMessageInitialized(parsePartialFrom(t, iVar, qVar));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, j jVar) throws z {
        return (T) parseFrom(t, jVar, q.a());
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, j jVar, q qVar) throws z {
        return (T) checkMessageInitialized(parsePartialFrom(t, jVar, qVar));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, InputStream inputStream) throws z {
        return (T) checkMessageInitialized(parsePartialFrom(t, j.a(inputStream), q.a()));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, InputStream inputStream, q qVar) throws z {
        return (T) checkMessageInitialized(parsePartialFrom(t, j.a(inputStream), qVar));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteBuffer byteBuffer) throws z {
        return (T) parseFrom(t, byteBuffer, q.a());
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, ByteBuffer byteBuffer, q qVar) throws z {
        return (T) checkMessageInitialized(parseFrom(t, j.a(byteBuffer, false), qVar));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, byte[] bArr) throws z {
        return (T) checkMessageInitialized(parsePartialFrom(t, bArr, 0, bArr.length, q.a()));
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parseFrom(T t, byte[] bArr, q qVar) throws z {
        return (T) checkMessageInitialized(parsePartialFrom(t, bArr, 0, bArr.length, qVar));
    }

    private static <T extends GeneratedMessageLite<T, ?>> T parsePartialDelimitedFrom(T t, InputStream inputStream, q qVar) throws z {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            if ((i & 128) != 0) {
                i &= 127;
                int i2 = 7;
                while (true) {
                    if (i2 >= 32) {
                        while (i2 < 64) {
                            int i3 = inputStream.read();
                            if (i3 == -1) {
                                throw z.i();
                            }
                            if ((i3 & 128) != 0) {
                                i2 += 7;
                            }
                        }
                        throw z.e();
                    }
                    int i4 = inputStream.read();
                    if (i4 == -1) {
                        throw z.i();
                    }
                    i |= (i4 & 127) << i2;
                    if ((i4 & 128) == 0) {
                        break;
                    }
                    i2 += 7;
                }
            }
            j jVarA = j.a(new a.AbstractC0193a.C0194a(inputStream, i));
            T t2 = (T) parsePartialFrom(t, jVarA, qVar);
            try {
                jVarA.a(0);
                return t2;
            } catch (z e2) {
                throw e2;
            }
        } catch (IOException e3) {
            throw new z(e3.getMessage());
        }
    }

    private static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, i iVar, q qVar) throws z {
        try {
            j jVarG = iVar.g();
            T t2 = (T) parsePartialFrom(t, jVarG, qVar);
            try {
                jVarG.a(0);
                return t2;
            } catch (z e2) {
                throw e2;
            }
        } catch (z e3) {
            throw e3;
        }
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, j jVar) throws z {
        return (T) parsePartialFrom(t, jVar, q.a());
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, j jVar, q qVar) throws z {
        T t2 = (T) t.dynamicMethod(f.NEW_MUTABLE_INSTANCE);
        try {
            z0 z0Var = z0.c;
            z0Var.getClass();
            d1 d1VarA = z0Var.a(t2.getClass());
            k kVar = jVar.f2674d;
            if (kVar == null) {
                kVar = new k(jVar);
            }
            d1VarA.a(t2, kVar, qVar);
            d1VarA.c(t2);
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof z) {
                throw ((z) e2.getCause());
            }
            throw new z(e2.getMessage());
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof z) {
                throw ((z) e3.getCause());
            }
            throw e3;
        }
    }

    public static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, byte[] bArr, int i, int i2, q qVar) throws z {
        T t2 = (T) t.dynamicMethod(f.NEW_MUTABLE_INSTANCE);
        try {
            z0 z0Var = z0.c;
            z0Var.getClass();
            d1 d1VarA = z0Var.a(t2.getClass());
            d1VarA.a(t2, bArr, i, i + i2, new e.b(qVar));
            d1VarA.c(t2);
            if (t2.memoizedHashCode == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e2) {
            if (e2.getCause() instanceof z) {
                throw ((z) e2.getCause());
            }
            throw new z(e2.getMessage());
        } catch (IndexOutOfBoundsException unused) {
            throw z.i();
        }
    }

    private static <T extends GeneratedMessageLite<T, ?>> T parsePartialFrom(T t, byte[] bArr, q qVar) throws z {
        return (T) checkMessageInitialized(parsePartialFrom(t, bArr, 0, bArr.length, qVar));
    }

    public static <T extends GeneratedMessageLite<?, ?>> void registerDefaultInstance(Class<T> cls, T t) {
        defaultInstanceMap.put(cls, t);
    }

    public Object buildMessageInfo() throws Exception {
        return dynamicMethod(f.BUILD_MESSAGE_INFO);
    }

    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> BuilderType createBuilder() {
        return (BuilderType) dynamicMethod(f.NEW_BUILDER);
    }

    public final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> BuilderType createBuilder(MessageType messagetype) {
        BuilderType buildertype = (BuilderType) createBuilder();
        buildertype.c();
        buildertype.a(buildertype.b, messagetype);
        return buildertype;
    }

    public Object dynamicMethod(f fVar) {
        return dynamicMethod(fVar, null, null);
    }

    public Object dynamicMethod(f fVar, Object obj) {
        return dynamicMethod(fVar, obj, null);
    }

    public abstract Object dynamicMethod(f fVar, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        z0 z0Var = z0.c;
        z0Var.getClass();
        return z0Var.a(getClass()).b(this, (GeneratedMessageLite) obj);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.p0
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) dynamicMethod(f.GET_DEFAULT_INSTANCE);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.a
    public int getMemoizedSerializedSize() {
        return this.memoizedSerializedSize;
    }

    public final w0<MessageType> getParserForType() {
        return (w0) dynamicMethod(f.GET_PARSER);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.o0
    public int getSerializedSize() {
        if (this.memoizedSerializedSize == -1) {
            z0 z0Var = z0.c;
            z0Var.getClass();
            this.memoizedSerializedSize = z0Var.a(getClass()).b(this);
        }
        return this.memoizedSerializedSize;
    }

    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        z0 z0Var = z0.c;
        z0Var.getClass();
        int iD = z0Var.a(getClass()).d(this);
        this.memoizedHashCode = iD;
        return iD;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.p0
    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    public void makeImmutable() {
        z0 z0Var = z0.c;
        z0Var.getClass();
        z0Var.a(getClass()).c(this);
    }

    public void mergeLengthDelimitedField(int i, i iVar) {
        ensureUnknownFieldsInitialized();
        l1 l1Var = this.unknownFields;
        l1Var.a();
        if (i == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        l1Var.a(r1.a(i, 2), iVar);
    }

    public final void mergeUnknownFields(l1 l1Var) {
        this.unknownFields = l1.a(this.unknownFields, l1Var);
    }

    public void mergeVarintField(int i, int i2) {
        ensureUnknownFieldsInitialized();
        l1 l1Var = this.unknownFields;
        l1Var.a();
        if (i == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        l1Var.a(r1.a(i, 0), Long.valueOf(i2));
    }

    @Override // com.fyber.inneractive.sdk.protobuf.o0
    public final BuilderType newBuilderForType() {
        return (BuilderType) dynamicMethod(f.NEW_BUILDER);
    }

    public boolean parseUnknownField(int i, j jVar) throws IOException {
        int i2 = r1.a;
        if ((i & 7) == 4) {
            return false;
        }
        ensureUnknownFieldsInitialized();
        return this.unknownFields.a(i, jVar);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.a
    public void setMemoizedSerializedSize(int i) {
        this.memoizedSerializedSize = i;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.o0
    public final BuilderType toBuilder() {
        BuilderType buildertype = (BuilderType) dynamicMethod(f.NEW_BUILDER);
        buildertype.c();
        buildertype.a(buildertype.b, this);
        return buildertype;
    }

    public String toString() {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        q0.a(this, sb, 0);
        return sb.toString();
    }

    @Override // com.fyber.inneractive.sdk.protobuf.o0
    public void writeTo(l lVar) throws IOException {
        z0 z0Var = z0.c;
        z0Var.getClass();
        d1 d1VarA = z0Var.a(getClass());
        m mVar = lVar.a;
        if (mVar == null) {
            mVar = new m(lVar);
        }
        d1VarA.a(this, mVar);
    }
}
