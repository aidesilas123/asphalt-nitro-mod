package kotlin.reflect.jvm;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.q;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;

/* JADX INFO: compiled from: reflectLambda.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectLambdaKt {

    /* JADX INFO: compiled from: reflectLambda.kt */
    static final /* synthetic */ class a extends q implements Function2<MemberDeserializer, ProtoBuf$Function, c0> {
        public static final a a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final c0 invoke(MemberDeserializer p1, ProtoBuf$Function p2) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            Intrinsics.checkParameterIsNotNull(p2, "p2");
            return p1.l(p2);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "loadFunction";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(MemberDeserializer.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;";
        }
    }

    public static final <R> KFunction<R> reflect(Function<? extends R> reflect) {
        Intrinsics.checkParameterIsNotNull(reflect, "$this$reflect");
        Metadata metadata = (Metadata) reflect.getClass().getAnnotation(Metadata.class);
        if (metadata != null) {
            String[] strArrD1 = metadata.d1();
            if (strArrD1.length == 0) {
                strArrD1 = null;
            }
            if (strArrD1 != null) {
                Pair<e, ProtoBuf$Function> functionDataFrom = JvmProtoBufUtil.readFunctionDataFrom(strArrD1, metadata.d2());
                e eVarC = functionDataFrom.c();
                ProtoBuf$Function protoBuf$FunctionD = functionDataFrom.d();
                d dVar = new d(metadata.mv(), (metadata.xi() & 8) != 0);
                Class<?> cls = reflect.getClass();
                ProtoBuf$TypeTable protoBuf$TypeTableY = protoBuf$FunctionD.Y();
                Intrinsics.checkExpressionValueIsNotNull(protoBuf$TypeTableY, "proto.typeTable");
                c0 c0Var = (c0) UtilKt.deserializeToDescriptor(cls, protoBuf$FunctionD, eVarC, new kotlin.reflect.jvm.internal.impl.metadata.deserialization.e(protoBuf$TypeTableY), dVar, a.a);
                if (c0Var != null) {
                    return new KFunctionImpl(kotlin.reflect.jvm.internal.a.f9014d, c0Var);
                }
            }
        }
        return null;
    }
}
