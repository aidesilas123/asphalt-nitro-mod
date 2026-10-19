package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: BuiltInFictitiousFunctionClassFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BuiltInFictitiousFunctionClassFactory implements kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b {
    public static final Companion a = new Companion(null);
    private final h b;
    private final ModuleDescriptor c;

    /* JADX INFO: compiled from: BuiltInFictitiousFunctionClassFactory.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final a b(String str, FqName fqName) {
            FunctionClassDescriptor.Kind kindA = FunctionClassDescriptor.Kind.f9066f.a(fqName, str);
            if (kindA == null) {
                return null;
            }
            int length = kindA.e().length();
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String strSubstring = str.substring(length);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
            Integer numC = c(strSubstring);
            if (numC != null) {
                return new a(kindA, numC.intValue());
            }
            return null;
        }

        private final Integer c(String str) {
            if (str.length() == 0) {
                return null;
            }
            int length = str.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                int iCharAt = str.charAt(i2) - '0';
                if (iCharAt < 0 || 9 < iCharAt) {
                    return null;
                }
                i = (i * 10) + iCharAt;
            }
            return Integer.valueOf(i);
        }

        public final FunctionClassDescriptor.Kind a(String className, FqName packageFqName) {
            Intrinsics.checkParameterIsNotNull(className, "className");
            Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
            a aVarB = b(className, packageFqName);
            if (aVarB != null) {
                return aVarB.c();
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: BuiltInFictitiousFunctionClassFactory.kt */
    private static final class a {
        private final FunctionClassDescriptor.Kind a;
        private final int b;

        public a(FunctionClassDescriptor.Kind kind, int i) {
            Intrinsics.checkParameterIsNotNull(kind, "kind");
            this.a = kind;
            this.b = i;
        }

        public final FunctionClassDescriptor.Kind a() {
            return this.a;
        }

        public final int b() {
            return this.b;
        }

        public final FunctionClassDescriptor.Kind c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && this.b == aVar.b;
        }

        public int hashCode() {
            FunctionClassDescriptor.Kind kind = this.a;
            return ((kind != null ? kind.hashCode() : 0) * 31) + this.b;
        }

        public String toString() {
            return "KindWithArity(kind=" + this.a + ", arity=" + this.b + ")";
        }
    }

    public BuiltInFictitiousFunctionClassFactory(h storageManager, ModuleDescriptor module) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.b = storageManager;
        this.c = module;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> a(FqName packageFqName) {
        Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
        return SetsKt__SetsKt.emptySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b
    public boolean b(FqName packageFqName, Name name) {
        Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
        Intrinsics.checkParameterIsNotNull(name, "name");
        String strE = name.e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
        return (StringsKt__StringsJVMKt.startsWith$default(strE, "Function", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(strE, "KFunction", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(strE, "SuspendFunction", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(strE, "KSuspendFunction", false, 2, null)) && a.b(strE, packageFqName) != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b
    public kotlin.reflect.jvm.internal.impl.descriptors.d c(ClassId classId) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        if (!classId.i() && !classId.j()) {
            String strB = classId.g().b();
            Intrinsics.checkExpressionValueIsNotNull(strB, "classId.relativeClassName.asString()");
            if (!StringsKt__StringsKt.contains$default((CharSequence) strB, (CharSequence) "Function", false, 2, (Object) null)) {
                return null;
            }
            FqName fqNameF = classId.f();
            Intrinsics.checkExpressionValueIsNotNull(fqNameF, "classId.packageFqName");
            a aVarB = a.b(strB, fqNameF);
            if (aVarB != null) {
                FunctionClassDescriptor.Kind kindA = aVarB.a();
                int iB = aVarB.b();
                List<s> listA0 = this.c.d0(fqNameF).a0();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listA0) {
                    if (obj instanceof kotlin.reflect.jvm.internal.impl.builtins.b) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : arrayList) {
                    if (obj2 instanceof kotlin.reflect.jvm.internal.impl.builtins.d) {
                        arrayList2.add(obj2);
                    }
                }
                s sVar = (kotlin.reflect.jvm.internal.impl.builtins.d) p.firstOrNull((List) arrayList2);
                if (sVar == null) {
                    sVar = (kotlin.reflect.jvm.internal.impl.builtins.b) p.first((List) arrayList);
                }
                return new FunctionClassDescriptor(this.b, sVar, kindA, iB);
            }
        }
        return null;
    }
}
