package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class AnnotationConstructorCaller implements Caller {
    private final List<Type> a;
    private final List<Class<?>> b;
    private final List<Object> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Class<?> f9018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f9019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CallMode f9020f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<Method> f9021g;

    /* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
    public enum CallMode {
        CALL_BY_NAME,
        POSITIONAL_CALL
    }

    /* JADX INFO: compiled from: AnnotationConstructorCaller.kt */
    public enum Origin {
        JAVA,
        KOTLIN
    }

    public AnnotationConstructorCaller(Class<?> jClass, List<String> parameterNames, CallMode callMode, Origin origin, List<Method> methods) {
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        Intrinsics.checkParameterIsNotNull(parameterNames, "parameterNames");
        Intrinsics.checkParameterIsNotNull(callMode, "callMode");
        Intrinsics.checkParameterIsNotNull(origin, "origin");
        Intrinsics.checkParameterIsNotNull(methods, "methods");
        this.f9018d = jClass;
        this.f9019e = parameterNames;
        this.f9020f = callMode;
        this.f9021g = methods;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(methods, 10));
        Iterator<T> it = methods.iterator();
        while (it.hasNext()) {
            arrayList.add(((Method) it.next()).getGenericReturnType());
        }
        this.a = arrayList;
        List<Method> list = this.f9021g;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            Class<?> it3 = ((Method) it2.next()).getReturnType();
            Intrinsics.checkExpressionValueIsNotNull(it3, "it");
            Class<?> wrapperByPrimitive = ReflectClassUtilKt.getWrapperByPrimitive(it3);
            if (wrapperByPrimitive != null) {
                it3 = wrapperByPrimitive;
            }
            arrayList2.add(it3);
        }
        this.b = arrayList2;
        List<Method> list2 = this.f9021g;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it4 = list2.iterator();
        while (it4.hasNext()) {
            arrayList3.add(((Method) it4.next()).getDefaultValue());
        }
        this.c = arrayList3;
        if (this.f9020f == CallMode.POSITIONAL_CALL && origin == Origin.JAVA && (!CollectionsKt___CollectionsKt.minus(this.f9019e, "value").isEmpty())) {
            throw new UnsupportedOperationException("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
        }
    }

    public /* synthetic */ AnnotationConstructorCaller(Class cls, List list, CallMode callMode, Origin origin, List list2, int i, n nVar) {
        if ((i & 16) != 0) {
            list2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                list2.add(cls.getDeclaredMethod((String) it.next(), new Class[0]));
            }
        }
        this(cls, list, callMode, origin, list2);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public List<Type> a() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public /* bridge */ /* synthetic */ Member b() {
        return (Member) d();
    }

    public void c(Object[] args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        Caller.DefaultImpls.checkArguments(this, args);
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public Object call(Object[] args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        c(args);
        ArrayList arrayList = new ArrayList(args.length);
        int length = args.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Object obj = args[i];
            int i3 = i2 + 1;
            Object objB = (obj == null && this.f9020f == CallMode.CALL_BY_NAME) ? this.c.get(i2) : AnnotationConstructorCallerKt.b(obj, this.b.get(i2));
            if (objB == null) {
                AnnotationConstructorCallerKt.a(i2, this.f9019e.get(i2), this.b.get(i2));
                throw null;
            }
            arrayList.add(objB);
            i++;
            i2 = i3;
        }
        return AnnotationConstructorCallerKt.createAnnotationInstance(this.f9018d, MapsKt__MapsKt.toMap(CollectionsKt___CollectionsKt.zip(this.f9019e, arrayList)), this.f9021g);
    }

    public Void d() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public Type getReturnType() {
        return this.f9018d;
    }
}
