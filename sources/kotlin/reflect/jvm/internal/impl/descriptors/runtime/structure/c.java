package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaAnnotationArguments.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class c implements kotlin.reflect.jvm.internal.impl.load.java.structure.a {
    public static final a a = new a(null);
    private final Name b;

    /* JADX INFO: compiled from: ReflectJavaAnnotationArguments.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final c a(Object value, Name name) {
            Intrinsics.checkParameterIsNotNull(value, "value");
            return ReflectClassUtilKt.isEnumClassOrSpecializedEnumEntryClass(value.getClass()) ? new k(name, (Enum) value) : value instanceof Annotation ? new d(name, (Annotation) value) : value instanceof Object[] ? new e(name, (Object[]) value) : value instanceof Class ? new g(name, (Class) value) : new m(name, value);
        }
    }

    public c(Name name) {
        this.b = name;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.a
    public Name getName() {
        return this.b;
    }
}
