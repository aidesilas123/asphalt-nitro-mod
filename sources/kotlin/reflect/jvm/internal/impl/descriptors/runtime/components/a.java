package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinderKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: PackagePartScopeCache.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a {
    private final ConcurrentHashMap<ClassId, MemberScope> a;
    private final DeserializedDescriptorResolver b;
    private final f c;

    public a(DeserializedDescriptorResolver resolver, f kotlinClassFinder) {
        Intrinsics.checkParameterIsNotNull(resolver, "resolver");
        Intrinsics.checkParameterIsNotNull(kotlinClassFinder, "kotlinClassFinder");
        this.b = resolver;
        this.c = kotlinClassFinder;
        this.a = new ConcurrentHashMap<>();
    }

    public final MemberScope a(e fileClass) {
        Collection collectionListOf;
        Intrinsics.checkParameterIsNotNull(fileClass, "fileClass");
        ConcurrentHashMap<ClassId, MemberScope> concurrentHashMap = this.a;
        ClassId classIdA = fileClass.a();
        MemberScope memberScopeA = concurrentHashMap.get(classIdA);
        if (memberScopeA == null) {
            FqName fqNameF = fileClass.a().f();
            Intrinsics.checkExpressionValueIsNotNull(fqNameF, "fileClass.classId.packageFqName");
            if (fileClass.c().c() == KotlinClassHeader.Kind.MULTIFILE_CLASS) {
                List<String> listF = fileClass.c().f();
                collectionListOf = new ArrayList();
                Iterator<T> it = listF.iterator();
                while (it.hasNext()) {
                    JvmClassName jvmClassNameByInternalName = JvmClassName.byInternalName((String) it.next());
                    Intrinsics.checkExpressionValueIsNotNull(jvmClassNameByInternalName, "JvmClassName.byInternalName(partName)");
                    ClassId classId = ClassId.topLevel(jvmClassNameByInternalName.b());
                    Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(JvmClas…velClassMaybeWithDollars)");
                    k kVarFindKotlinClass = KotlinClassFinderKt.findKotlinClass(this.c, classId);
                    if (kVarFindKotlinClass != null) {
                        collectionListOf.add(kVarFindKotlinClass);
                    }
                }
            } else {
                collectionListOf = CollectionsKt__CollectionsJVMKt.listOf(fileClass);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.impl.k kVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.k(this.b.b().p(), fqNameF);
            ArrayList arrayList = new ArrayList();
            Iterator it2 = collectionListOf.iterator();
            while (it2.hasNext()) {
                MemberScope memberScopeA2 = this.b.a(kVar, (k) it2.next());
                if (memberScopeA2 != null) {
                    arrayList.add(memberScopeA2);
                }
            }
            List<? extends MemberScope> list = CollectionsKt___CollectionsKt.toList(arrayList);
            memberScopeA = kotlin.reflect.jvm.internal.impl.resolve.scopes.b.b.a("package " + fqNameF + " (" + fileClass + ')', list);
            MemberScope memberScopePutIfAbsent = concurrentHashMap.putIfAbsent(classIdA, memberScopeA);
            if (memberScopePutIfAbsent != null) {
                memberScopeA = memberScopePutIfAbsent;
            }
        }
        Intrinsics.checkExpressionValueIsNotNull(memberScopeA, "cache.getOrPut(fileClass…ileClass)\", scopes)\n    }");
        return memberScopeA;
    }
}
