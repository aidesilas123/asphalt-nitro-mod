package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.SuspendFunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: TypeDeserializer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeDeserializer {
    private final Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.d> a;
    private final Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.f> b;
    private final Map<Integer, i0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DeserializationContext f9784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TypeDeserializer f9785e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f9786f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f9787g;
    private boolean h;

    /* JADX INFO: compiled from: TypeDeserializer.kt */
    static final class a extends Lambda implements Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.d> {
        a() {
            super(1);
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d c(int i) {
            return TypeDeserializer.this.a(i);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d invoke(Integer num) {
            return c(num.intValue());
        }
    }

    /* JADX INFO: compiled from: TypeDeserializer.kt */
    static final class b extends Lambda implements Function1<ProtoBuf$Type, List<? extends ProtoBuf$Type.Argument>> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<ProtoBuf$Type.Argument> invoke(ProtoBuf$Type collectAllArguments) {
            Intrinsics.checkParameterIsNotNull(collectAllArguments, "$this$collectAllArguments");
            List<ProtoBuf$Type.Argument> argumentList = collectAllArguments.Q();
            Intrinsics.checkExpressionValueIsNotNull(argumentList, "argumentList");
            ProtoBuf$Type protoBuf$TypeOuterType = ProtoTypeTableUtilKt.outerType(collectAllArguments, TypeDeserializer.this.f9784d.i());
            List<ProtoBuf$Type.Argument> listInvoke = protoBuf$TypeOuterType != null ? invoke(protoBuf$TypeOuterType) : null;
            if (listInvoke == null) {
                listInvoke = CollectionsKt__CollectionsKt.emptyList();
            }
            return CollectionsKt___CollectionsKt.plus((Collection) argumentList, (Iterable) listInvoke);
        }
    }

    /* JADX INFO: compiled from: TypeDeserializer.kt */
    static final class c extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
        final /* synthetic */ ProtoBuf$Type b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(ProtoBuf$Type protoBuf$Type) {
            super(0);
            this.b = protoBuf$Type;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<AnnotationDescriptor> invoke() {
            return TypeDeserializer.this.f9784d.b().d().c(this.b, TypeDeserializer.this.f9784d.f());
        }
    }

    /* JADX INFO: compiled from: TypeDeserializer.kt */
    static final class d extends Lambda implements Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.f> {
        d() {
            super(1);
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.f c(int i) {
            return TypeDeserializer.this.c(i);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.f invoke(Integer num) {
            return c(num.intValue());
        }
    }

    /* JADX INFO: compiled from: TypeDeserializer.kt */
    static final class e extends Lambda implements Function1<Integer, kotlin.reflect.jvm.internal.impl.descriptors.d> {
        final /* synthetic */ ProtoBuf$Type b;

        /* JADX INFO: compiled from: TypeDeserializer.kt */
        static final /* synthetic */ class a extends kotlin.jvm.internal.q implements Function1<ClassId, ClassId> {
            public static final a a = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ClassId invoke(ClassId p1) {
                Intrinsics.checkParameterIsNotNull(p1, "p1");
                return p1.e();
            }

            @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
            public final String getName() {
                return "getOuterClassId";
            }

            @Override // kotlin.jvm.internal.l
            public final KDeclarationContainer getOwner() {
                return Reflection.getOrCreateKotlinClass(ClassId.class);
            }

            @Override // kotlin.jvm.internal.l
            public final String getSignature() {
                return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
            }
        }

        /* JADX INFO: compiled from: TypeDeserializer.kt */
        static final class b extends Lambda implements Function1<ProtoBuf$Type, ProtoBuf$Type> {
            b() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ProtoBuf$Type invoke(ProtoBuf$Type it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return ProtoTypeTableUtilKt.outerType(it, TypeDeserializer.this.f9784d.i());
            }
        }

        /* JADX INFO: compiled from: TypeDeserializer.kt */
        static final class c extends Lambda implements Function1<ProtoBuf$Type, Integer> {
            public static final c a = new c();

            c() {
                super(1);
            }

            public final int a(ProtoBuf$Type it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return it.P();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Integer invoke(ProtoBuf$Type protoBuf$Type) {
                return Integer.valueOf(a(protoBuf$Type));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(ProtoBuf$Type protoBuf$Type) {
            super(1);
            this.b = protoBuf$Type;
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d c(int i) {
            ClassId classId = NameResolverUtilKt.getClassId(TypeDeserializer.this.f9784d.f(), i);
            List<Integer> mutableList = SequencesKt___SequencesKt.toMutableList(SequencesKt___SequencesKt.map(SequencesKt__SequencesKt.generateSequence(this.b, new b()), c.a));
            int iCount = SequencesKt___SequencesKt.count(SequencesKt__SequencesKt.generateSequence(classId, a.a));
            while (mutableList.size() < iCount) {
                mutableList.add(0);
            }
            return TypeDeserializer.this.f9784d.b().q().a(classId, mutableList);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d invoke(Integer num) {
            return c(num.intValue());
        }
    }

    public TypeDeserializer(DeserializationContext c2, TypeDeserializer typeDeserializer, List<ProtoBuf$TypeParameter> typeParameterProtos, String debugName, String containerPresentableName, boolean z) {
        Map<Integer, i0> linkedHashMap;
        Intrinsics.checkParameterIsNotNull(c2, "c");
        Intrinsics.checkParameterIsNotNull(typeParameterProtos, "typeParameterProtos");
        Intrinsics.checkParameterIsNotNull(debugName, "debugName");
        Intrinsics.checkParameterIsNotNull(containerPresentableName, "containerPresentableName");
        this.f9784d = c2;
        this.f9785e = typeDeserializer;
        this.f9786f = debugName;
        this.f9787g = containerPresentableName;
        this.h = z;
        this.a = c2.g().g(new a());
        this.b = c2.g().g(new d());
        if (typeParameterProtos.isEmpty()) {
            linkedHashMap = MapsKt__MapsKt.emptyMap();
        } else {
            linkedHashMap = new LinkedHashMap<>();
            int i = 0;
            for (ProtoBuf$TypeParameter protoBuf$TypeParameter : typeParameterProtos) {
                linkedHashMap.put(Integer.valueOf(protoBuf$TypeParameter.G()), new DeserializedTypeParameterDescriptor(this.f9784d, protoBuf$TypeParameter, i));
                i++;
            }
        }
        this.c = linkedHashMap;
    }

    public /* synthetic */ TypeDeserializer(DeserializationContext deserializationContext, TypeDeserializer typeDeserializer, List list, String str, String str2, boolean z, int i, kotlin.jvm.internal.n nVar) {
        this(deserializationContext, typeDeserializer, list, str, str2, (i & 32) != 0 ? false : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d a(int i) {
        ClassId classId = NameResolverUtilKt.getClassId(this.f9784d.f(), i);
        return classId.i() ? this.f9784d.b().b(classId) : FindClassInModuleKt.findClassAcrossModuleDependencies(this.f9784d.b().p(), classId);
    }

    private final y b(int i) {
        if (NameResolverUtilKt.getClassId(this.f9784d.f(), i).i()) {
            return this.f9784d.b().n().a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.f c(int i) {
        ClassId classId = NameResolverUtilKt.getClassId(this.f9784d.f(), i);
        if (classId.i()) {
            return null;
        }
        return FindClassInModuleKt.findTypeAliasAcrossModuleDependencies(this.f9784d.b().p(), classId);
    }

    private final y d(kotlin.reflect.jvm.internal.impl.types.u uVar, kotlin.reflect.jvm.internal.impl.types.u uVar2) {
        KotlinBuiltIns builtIns = TypeUtilsKt.getBuiltIns(uVar);
        Annotations annotations = uVar.getAnnotations();
        kotlin.reflect.jvm.internal.impl.types.u receiverTypeFromFunctionType = FunctionTypesKt.getReceiverTypeFromFunctionType(uVar);
        List listDropLast = CollectionsKt___CollectionsKt.dropLast(FunctionTypesKt.getValueParameterTypesFromFunctionType(uVar), 1);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listDropLast, 10));
        Iterator it = listDropLast.iterator();
        while (it.hasNext()) {
            arrayList.add(((g0) it.next()).getType());
        }
        return FunctionTypesKt.createFunctionType(builtIns, annotations, receiverTypeFromFunctionType, arrayList, null, uVar2, true).L0(uVar.I0());
    }

    private final y e(Annotations annotations, f0 f0Var, List<? extends g0> list, boolean z) {
        int size;
        int size2 = f0Var.getParameters().size() - list.size();
        y yVarF = null;
        if (size2 == 0) {
            yVarF = f(annotations, f0Var, list, z);
        } else if (size2 == 1 && (size = list.size() - 1) >= 0) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarU = f0Var.k().U(size);
            Intrinsics.checkExpressionValueIsNotNull(dVarU, "functionTypeConstructor.…getSuspendFunction(arity)");
            f0 f0VarI = dVarU.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI, "functionTypeConstructor.…on(arity).typeConstructor");
            yVarF = KotlinTypeFactory.simpleType$default(annotations, f0VarI, list, z, null, 16, null);
        }
        if (yVarF != null) {
            return yVarF;
        }
        y yVarCreateErrorTypeWithArguments = ErrorUtils.createErrorTypeWithArguments("Bad suspend function in metadata with constructor: " + f0Var, list);
        Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorTypeWithArguments, "ErrorUtils.createErrorTy…      arguments\n        )");
        return yVarCreateErrorTypeWithArguments;
    }

    private final y f(Annotations annotations, f0 f0Var, List<? extends g0> list, boolean z) {
        y yVarSimpleType$default = KotlinTypeFactory.simpleType$default(annotations, f0Var, list, z, null, 16, null);
        if (FunctionTypesKt.isFunctionType(yVarSimpleType$default)) {
            return j(yVarSimpleType$default);
        }
        return null;
    }

    private final y j(kotlin.reflect.jvm.internal.impl.types.u uVar) {
        kotlin.reflect.jvm.internal.impl.types.u type;
        boolean zD = this.f9784d.b().g().d();
        g0 g0Var = (g0) kotlin.collections.p.lastOrNull((List) FunctionTypesKt.getValueParameterTypesFromFunctionType(uVar));
        if (g0Var == null || (type = g0Var.getType()) == null) {
            return null;
        }
        Intrinsics.checkExpressionValueIsNotNull(type, "funType.getValueParamete…ll()?.type ?: return null");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = type.H0().q();
        FqName fqNameSafe = fVarQ != null ? DescriptorUtilsKt.getFqNameSafe(fVarQ) : null;
        boolean z = true;
        if (type.G0().size() != 1 || (!SuspendFunctionTypesKt.isContinuation(fqNameSafe, true) && !SuspendFunctionTypesKt.isContinuation(fqNameSafe, false))) {
            return (y) uVar;
        }
        kotlin.reflect.jvm.internal.impl.types.u type2 = ((g0) kotlin.collections.p.single((List) type.G0())).getType();
        Intrinsics.checkExpressionValueIsNotNull(type2, "continuationArgumentType.arguments.single().type");
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarD = this.f9784d.d();
        if (!(iVarD instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) {
            iVarD = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) iVarD;
        if (Intrinsics.areEqual(aVar != null ? DescriptorUtilsKt.fqNameOrNull(aVar) : null, w.a)) {
            return d(uVar, type2);
        }
        if (!this.h && (!zD || !SuspendFunctionTypesKt.isContinuation(fqNameSafe, !zD))) {
            z = false;
        }
        this.h = z;
        return d(uVar, type2);
    }

    private final g0 l(i0 i0Var, ProtoBuf$Type.Argument argument) {
        if (argument.r() == ProtoBuf$Type.Argument.Projection.STAR) {
            return i0Var == null ? new b0(this.f9784d.b().p().k()) : new StarProjectionImpl(i0Var);
        }
        v vVar = v.a;
        ProtoBuf$Type.Argument.Projection projectionR = argument.r();
        Intrinsics.checkExpressionValueIsNotNull(projectionR, "typeArgumentProto.projection");
        Variance varianceD = vVar.d(projectionR);
        ProtoBuf$Type protoBuf$TypeType = ProtoTypeTableUtilKt.type(argument, this.f9784d.i());
        return protoBuf$TypeType != null ? new kotlin.reflect.jvm.internal.impl.types.i0(varianceD, k(protoBuf$TypeType)) : new kotlin.reflect.jvm.internal.impl.types.i0(ErrorUtils.createErrorType("No type recorded"));
    }

    private final f0 m(ProtoBuf$Type protoBuf$Type) {
        Object next;
        f0 f0VarI;
        e eVar = new e(protoBuf$Type);
        if (protoBuf$Type.f0()) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarInvoke = this.a.invoke(Integer.valueOf(protoBuf$Type.R()));
            if (dVarInvoke == null) {
                dVarInvoke = eVar.c(protoBuf$Type.R());
            }
            f0 f0VarI2 = dVarInvoke.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI2, "(classDescriptors(proto.…assName)).typeConstructor");
            return f0VarI2;
        }
        if (protoBuf$Type.o0()) {
            f0 f0VarN = n(protoBuf$Type.b0());
            if (f0VarN != null) {
                return f0VarN;
            }
            f0 f0VarCreateErrorTypeConstructor = ErrorUtils.createErrorTypeConstructor("Unknown type parameter " + protoBuf$Type.b0() + ". Please try recompiling module containing \"" + this.f9787g + '\"');
            Intrinsics.checkExpressionValueIsNotNull(f0VarCreateErrorTypeConstructor, "ErrorUtils.createErrorTy…\\\"\"\n                    )");
            return f0VarCreateErrorTypeConstructor;
        }
        if (!protoBuf$Type.p0()) {
            if (!protoBuf$Type.n0()) {
                f0 f0VarCreateErrorTypeConstructor2 = ErrorUtils.createErrorTypeConstructor("Unknown type");
                Intrinsics.checkExpressionValueIsNotNull(f0VarCreateErrorTypeConstructor2, "ErrorUtils.createErrorTy…nstructor(\"Unknown type\")");
                return f0VarCreateErrorTypeConstructor2;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarInvoke = this.b.invoke(Integer.valueOf(protoBuf$Type.a0()));
            if (fVarInvoke == null) {
                fVarInvoke = eVar.c(protoBuf$Type.a0());
            }
            f0 f0VarI3 = fVarInvoke.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI3, "(typeAliasDescriptors(pr…iasName)).typeConstructor");
            return f0VarI3;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarD = this.f9784d.d();
        String string = this.f9784d.f().getString(protoBuf$Type.c0());
        Iterator<T> it = h().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((i0) next).getName().e(), string)) {
                break;
            }
        }
        i0 i0Var = (i0) next;
        if (i0Var != null && (f0VarI = i0Var.i()) != null) {
            return f0VarI;
        }
        f0 f0VarCreateErrorTypeConstructor3 = ErrorUtils.createErrorTypeConstructor("Deserialized type parameter " + string + " in " + iVarD);
        Intrinsics.checkExpressionValueIsNotNull(f0VarCreateErrorTypeConstructor3, "ErrorUtils.createErrorTy…ter $name in $container\")");
        return f0VarCreateErrorTypeConstructor3;
    }

    private final f0 n(int i) {
        f0 f0VarI;
        i0 i0Var = this.c.get(Integer.valueOf(i));
        if (i0Var != null && (f0VarI = i0Var.i()) != null) {
            return f0VarI;
        }
        TypeDeserializer typeDeserializer = this.f9785e;
        if (typeDeserializer != null) {
            return typeDeserializer.n(i);
        }
        return null;
    }

    public final boolean g() {
        return this.h;
    }

    public final List<i0> h() {
        return CollectionsKt___CollectionsKt.toList(this.c.values());
    }

    public final y i(ProtoBuf$Type proto) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        y yVarB = proto.f0() ? b(proto.R()) : proto.n0() ? b(proto.a0()) : null;
        if (yVarB != null) {
            return yVarB;
        }
        f0 f0VarM = m(proto);
        if (ErrorUtils.isError(f0VarM.q())) {
            y yVarCreateErrorTypeWithCustomConstructor = ErrorUtils.createErrorTypeWithCustomConstructor(f0VarM.toString(), f0VarM);
            Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorTypeWithCustomConstructor, "ErrorUtils.createErrorTy….toString(), constructor)");
            return yVarCreateErrorTypeWithCustomConstructor;
        }
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a aVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a(this.f9784d.g(), new c(proto));
        List<ProtoBuf$Type.Argument> listInvoke = new b().invoke(proto);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listInvoke, 10));
        int i = 0;
        for (Object obj : listInvoke) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            List<i0> parameters = f0VarM.getParameters();
            Intrinsics.checkExpressionValueIsNotNull(parameters, "constructor.parameters");
            arrayList.add(l((i0) kotlin.collections.p.getOrNull(parameters, i), (ProtoBuf$Type.Argument) obj));
            i = i2;
        }
        List<? extends g0> list = CollectionsKt___CollectionsKt.toList(arrayList);
        Boolean boolA = Flags.a.a(proto.T());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.SUSPEND_TYPE.get(proto.flags)");
        y yVarE = boolA.booleanValue() ? e(aVar, f0VarM, list, proto.X()) : KotlinTypeFactory.simpleType$default(aVar, f0VarM, list, proto.X(), null, 16, null);
        ProtoBuf$Type protoBuf$TypeAbbreviatedType = ProtoTypeTableUtilKt.abbreviatedType(proto, this.f9784d.i());
        return protoBuf$TypeAbbreviatedType != null ? SpecialTypesKt.withAbbreviation(yVarE, i(protoBuf$TypeAbbreviatedType)) : yVarE;
    }

    public final kotlin.reflect.jvm.internal.impl.types.u k(ProtoBuf$Type proto) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        if (!proto.h0()) {
            return i(proto);
        }
        String string = this.f9784d.f().getString(proto.U());
        y yVarI = i(proto);
        ProtoBuf$Type protoBuf$TypeFlexibleUpperBound = ProtoTypeTableUtilKt.flexibleUpperBound(proto, this.f9784d.i());
        if (protoBuf$TypeFlexibleUpperBound == null) {
            Intrinsics.throwNpe();
        }
        return this.f9784d.b().l().a(proto, string, yVarI, i(protoBuf$TypeFlexibleUpperBound));
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f9786f);
        if (this.f9785e == null) {
            str = "";
        } else {
            str = ". Child of " + this.f9785e.f9786f;
        }
        sb.append(str);
        return sb.toString();
    }
}
