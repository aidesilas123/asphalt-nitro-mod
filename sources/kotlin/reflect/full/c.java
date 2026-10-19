package kotlin.reflect.full;

import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.d0;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KProperty1;

/* JADX INFO: compiled from: KClasses.kt */
/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class c extends d0 {
    public static final KProperty1 a = new c();

    c() {
    }

    @Override // kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return KClasses.getSuperclasses((KClass) obj);
    }

    @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
    public String getName() {
        return "superclasses";
    }

    @Override // kotlin.jvm.internal.l
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinPackage(KClasses.class, "kotlin-reflection");
    }

    @Override // kotlin.jvm.internal.l
    public String getSignature() {
        return "getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;";
    }
}
