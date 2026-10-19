package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.o;
import kotlin.reflect.jvm.internal.impl.load.java.structure.t;
import kotlin.reflect.jvm.internal.impl.load.java.structure.w;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.m;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
public final class DescriptorResolverUtils {

    static class a extends kotlin.reflect.jvm.internal.impl.resolve.b {
        final /* synthetic */ m a;
        final /* synthetic */ Set b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils$a$a, reason: collision with other inner class name */
        class C0524a implements Function1<CallableMemberDescriptor, v> {
            C0524a() {
            }

            private static /* synthetic */ void a(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "descriptor", "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1", "invoke"));
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public v invoke(CallableMemberDescriptor callableMemberDescriptor) {
                if (callableMemberDescriptor == null) {
                    a(0);
                }
                a.this.a.a(callableMemberDescriptor);
                return v.a;
            }
        }

        a(m mVar, Set set, boolean z) {
            this.a = mVar;
            this.b = set;
            this.c = z;
        }

        private static /* synthetic */ void f(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "fromSuper";
            } else if (i == 2) {
                objArr[0] = "fromCurrent";
            } else if (i == 3) {
                objArr[0] = "member";
            } else if (i != 4) {
                objArr[0] = "fakeOverride";
            } else {
                objArr[0] = "overridden";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1";
            if (i == 1 || i == 2) {
                objArr[2] = "conflict";
            } else if (i == 3 || i == 4) {
                objArr[2] = "setOverriddenDescriptors";
            } else {
                objArr[2] = "addFakeOverride";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.c
        public void a(CallableMemberDescriptor callableMemberDescriptor) {
            if (callableMemberDescriptor == null) {
                f(0);
            }
            OverridingUtil.resolveUnknownVisibilityForMember(callableMemberDescriptor, new C0524a());
            this.b.add(callableMemberDescriptor);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.c
        public void d(CallableMemberDescriptor callableMemberDescriptor, Collection<? extends CallableMemberDescriptor> collection) {
            if (callableMemberDescriptor == null) {
                f(3);
            }
            if (collection == null) {
                f(4);
            }
            if (!this.c || callableMemberDescriptor.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                super.d(callableMemberDescriptor, collection);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.b
        public void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
            if (callableMemberDescriptor == null) {
                f(1);
            }
            if (callableMemberDescriptor2 == null) {
                f(2);
            }
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = i != 18 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 18 ? 3 : 2];
        switch (i) {
            case 1:
            case 7:
            case 13:
                objArr[0] = "membersFromSupertypes";
                break;
            case 2:
            case 8:
            case 14:
                objArr[0] = "membersFromCurrent";
                break;
            case 3:
            case 9:
            case 15:
                objArr[0] = "classDescriptor";
                break;
            case 4:
            case 10:
            case 16:
                objArr[0] = "errorReporter";
                break;
            case 5:
            case 11:
            case 17:
                objArr[0] = "overridingUtil";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "name";
                break;
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
                break;
            case 20:
                objArr[0] = "annotationClass";
                break;
            case 21:
                objArr[0] = "member";
                break;
            case 22:
            case 23:
                objArr[0] = "method";
                break;
        }
        if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
        } else {
            objArr[1] = "resolveOverrides";
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "resolveOverridesForStaticMembers";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "resolveOverrides";
                break;
            case 18:
                break;
            case 19:
            case 20:
                objArr[2] = "getAnnotationParameterByName";
                break;
            case 21:
                objArr[2] = "isObjectMethodInInterface";
                break;
            case 22:
                objArr[2] = "isObjectMethod";
                break;
            case 23:
                objArr[2] = "isMethodWithOneObjectParameter";
                break;
            default:
                objArr[2] = "resolveOverridesForNonStaticMembers";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i == 18) {
            throw new IllegalStateException(str2);
        }
    }

    private static boolean b(JavaMethod javaMethod) {
        FqName fqNameE;
        if (javaMethod == null) {
            a(23);
        }
        List<w> listG = javaMethod.g();
        if (listG.size() == 1) {
            t type = listG.get(0).getType();
            if (type instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.i) {
                kotlin.reflect.jvm.internal.impl.load.java.structure.h hVarD = ((kotlin.reflect.jvm.internal.impl.load.java.structure.i) type).d();
                return (hVarD instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.f) && (fqNameE = ((kotlin.reflect.jvm.internal.impl.load.java.structure.f) hVarD).e()) != null && fqNameE.b().equals("java.lang.Object");
            }
        }
        return false;
    }

    private static boolean c(JavaMethod javaMethod) {
        if (javaMethod == null) {
            a(22);
        }
        String strE = javaMethod.getName().e();
        if (strE.equals("toString") || strE.equals("hashCode")) {
            return javaMethod.g().isEmpty();
        }
        if (strE.equals("equals")) {
            return b(javaMethod);
        }
        return false;
    }

    private static <D extends CallableMemberDescriptor> Collection<D> d(Name name, Collection<D> collection, Collection<D> collection2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, m mVar, OverridingUtil overridingUtil, boolean z) {
        if (name == null) {
            a(12);
        }
        if (collection == null) {
            a(13);
        }
        if (collection2 == null) {
            a(14);
        }
        if (dVar == null) {
            a(15);
        }
        if (mVar == null) {
            a(16);
        }
        if (overridingUtil == null) {
            a(17);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        overridingUtil.q(name, collection, collection2, dVar, new a(mVar, linkedHashSet, z));
        return linkedHashSet;
    }

    public static ValueParameterDescriptor getAnnotationParameterByName(Name name, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (name == null) {
            a(19);
        }
        if (dVar == null) {
            a(20);
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionF = dVar.f();
        if (collectionF.size() != 1) {
            return null;
        }
        for (ValueParameterDescriptor valueParameterDescriptor : collectionF.iterator().next().g()) {
            if (valueParameterDescriptor.getName().equals(name)) {
                return valueParameterDescriptor;
            }
        }
        return null;
    }

    public static boolean isObjectMethodInInterface(o oVar) {
        if (oVar == null) {
            a(21);
        }
        return oVar.I().D() && (oVar instanceof JavaMethod) && c((JavaMethod) oVar);
    }

    public static <D extends CallableMemberDescriptor> Collection<D> resolveOverridesForNonStaticMembers(Name name, Collection<D> collection, Collection<D> collection2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, m mVar, OverridingUtil overridingUtil) {
        if (name == null) {
            a(0);
        }
        if (collection == null) {
            a(1);
        }
        if (collection2 == null) {
            a(2);
        }
        if (dVar == null) {
            a(3);
        }
        if (mVar == null) {
            a(4);
        }
        if (overridingUtil == null) {
            a(5);
        }
        return d(name, collection, collection2, dVar, mVar, overridingUtil, false);
    }

    public static <D extends CallableMemberDescriptor> Collection<D> resolveOverridesForStaticMembers(Name name, Collection<D> collection, Collection<D> collection2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, m mVar, OverridingUtil overridingUtil) {
        if (name == null) {
            a(6);
        }
        if (collection == null) {
            a(7);
        }
        if (collection2 == null) {
            a(8);
        }
        if (dVar == null) {
            a(9);
        }
        if (mVar == null) {
            a(10);
        }
        if (overridingUtil == null) {
            a(11);
        }
        return d(name, collection, collection2, dVar, mVar, overridingUtil, true);
    }
}
