package kotlin.reflect.jvm.internal.impl.resolve;

import defpackage.UniversalRequestStoreOuterClass;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import kotlin.v;

/* JADX INFO: compiled from: overridingUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class OverridingUtilsKt {

    /* JADX INFO: Add missing generic type declarations: [D] */
    /* JADX INFO: compiled from: overridingUtils.kt */
    static final class a<D> extends Lambda implements Function1<D, D> {
        public static final a a = new a();

        a() {
            super(1);
        }

        /* JADX WARN: Incorrect return type in method signature: (TD;)TD; */
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(kotlin.reflect.jvm.internal.impl.descriptors.a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            return receiver;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [H] */
    /* JADX INFO: compiled from: overridingUtils.kt */
    static final class b<H> extends Lambda implements Function1<H, v> {
        final /* synthetic */ SmartSet a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(SmartSet smartSet) {
            super(1);
            this.a = smartSet;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Object obj) {
            invoke2(obj);
            return v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(H it) {
            SmartSet smartSet = this.a;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            smartSet.add(it);
        }
    }

    public static final <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> void retainMostSpecificInEachOverridableGroup(Collection<D> retainMostSpecificInEachOverridableGroup) {
        Intrinsics.checkParameterIsNotNull(retainMostSpecificInEachOverridableGroup, "$this$retainMostSpecificInEachOverridableGroup");
        Collection<?> collectionSelectMostSpecificInEachOverridableGroup = selectMostSpecificInEachOverridableGroup(retainMostSpecificInEachOverridableGroup, a.a);
        if (retainMostSpecificInEachOverridableGroup.size() == collectionSelectMostSpecificInEachOverridableGroup.size()) {
            return;
        }
        retainMostSpecificInEachOverridableGroup.retainAll(collectionSelectMostSpecificInEachOverridableGroup);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <H> Collection<H> selectMostSpecificInEachOverridableGroup(Collection<? extends H> selectMostSpecificInEachOverridableGroup, Function1<? super H, ? extends kotlin.reflect.jvm.internal.impl.descriptors.a> descriptorByHandle) {
        Intrinsics.checkParameterIsNotNull(selectMostSpecificInEachOverridableGroup, "$this$selectMostSpecificInEachOverridableGroup");
        Intrinsics.checkParameterIsNotNull(descriptorByHandle, "descriptorByHandle");
        if (selectMostSpecificInEachOverridableGroup.size() <= 1) {
            return selectMostSpecificInEachOverridableGroup;
        }
        LinkedList linkedList = new LinkedList(selectMostSpecificInEachOverridableGroup);
        SmartSet smartSetA = SmartSet.a.a();
        while (!linkedList.isEmpty()) {
            Object objFirst = p.first((List<? extends Object>) linkedList);
            SmartSet smartSetA2 = SmartSet.a.a();
            Collection<UniversalRequestStoreOuterClass.UniversalRequestStore.a> collectionExtractMembersOverridableInBothWays = OverridingUtil.extractMembersOverridableInBothWays(objFirst, linkedList, descriptorByHandle, new b(smartSetA2));
            Intrinsics.checkExpressionValueIsNotNull(collectionExtractMembersOverridableInBothWays, "OverridingUtil.extractMe…nflictedHandles.add(it) }");
            if (collectionExtractMembersOverridableInBothWays.size() == 1 && smartSetA2.isEmpty()) {
                Object objSingle = p.single(collectionExtractMembersOverridableInBothWays);
                Intrinsics.checkExpressionValueIsNotNull(objSingle, "overridableGroup.single()");
                smartSetA.add(objSingle);
            } else {
                UniversalRequestStoreOuterClass.UniversalRequestStore.a aVar = (Object) OverridingUtil.selectMostSpecificMember(collectionExtractMembersOverridableInBothWays, descriptorByHandle);
                Intrinsics.checkExpressionValueIsNotNull(aVar, "OverridingUtil.selectMos…roup, descriptorByHandle)");
                kotlin.reflect.jvm.internal.impl.descriptors.a aVarInvoke = descriptorByHandle.invoke(aVar);
                for (UniversalRequestStoreOuterClass.UniversalRequestStore.a it : collectionExtractMembersOverridableInBothWays) {
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    if (!OverridingUtil.isMoreSpecific(aVarInvoke, descriptorByHandle.invoke(it))) {
                        smartSetA2.add(it);
                    }
                }
                if (!smartSetA2.isEmpty()) {
                    smartSetA.addAll(smartSetA2);
                }
                smartSetA.add(aVar);
            }
        }
        return smartSetA;
    }
}
