package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: ReflectKotlinClass.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e implements k {
    public static final a a = new a(null);
    private final Class<?> b;
    private final KotlinClassHeader c;

    /* JADX INFO: compiled from: ReflectKotlinClass.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final e a(Class<?> klass) {
            Intrinsics.checkParameterIsNotNull(klass, "klass");
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.a aVar = new kotlin.reflect.jvm.internal.impl.load.kotlin.header.a();
            c.a.b(klass, aVar);
            KotlinClassHeader kotlinClassHeaderN = aVar.n();
            n nVar = null;
            if (kotlinClassHeaderN != null) {
                return new e(klass, kotlinClassHeaderN, nVar);
            }
            return null;
        }
    }

    private e(Class<?> cls, KotlinClassHeader kotlinClassHeader) {
        this.b = cls;
        this.c = kotlinClassHeader;
    }

    public /* synthetic */ e(Class cls, KotlinClassHeader kotlinClassHeader, n nVar) {
        this(cls, kotlinClassHeader);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public ClassId a() {
        return ReflectClassUtilKt.getClassId(this.b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public void b(k.d visitor, byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(visitor, "visitor");
        c.a.i(this.b, visitor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public KotlinClassHeader c() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public void d(k.c visitor, byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(visitor, "visitor");
        c.a.b(this.b, visitor);
    }

    public final Class<?> e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        return (obj instanceof e) && Intrinsics.areEqual(this.b, ((e) obj).b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public String getLocation() {
        StringBuilder sb = new StringBuilder();
        String name = this.b.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "klass.name");
        sb.append(StringsKt__StringsJVMKt.replace$default(name, '.', '/', false, 4, (Object) null));
        sb.append(".class");
        return sb.toString();
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return e.class.getName() + ": " + this.b;
    }
}
