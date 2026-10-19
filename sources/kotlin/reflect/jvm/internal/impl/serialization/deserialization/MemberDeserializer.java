package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.g;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: compiled from: MemberDeserializer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MemberDeserializer {
    private final f a;
    private final DeserializationContext b;

    /* JADX INFO: compiled from: MemberDeserializer.kt */
    static final class a extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.j b;
        final /* synthetic */ AnnotatedCallableKind c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.protobuf.j jVar, AnnotatedCallableKind annotatedCallableKind) {
            super(0);
            this.b = jVar;
            this.c = annotatedCallableKind;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<AnnotationDescriptor> invoke() {
            MemberDeserializer memberDeserializer = MemberDeserializer.this;
            t tVarA = memberDeserializer.a(memberDeserializer.b.d());
            List<AnnotationDescriptor> list = tVarA != null ? CollectionsKt___CollectionsKt.toList(MemberDeserializer.this.b.b().d().e(tVarA, this.b, this.c)) : null;
            return list != null ? list : CollectionsKt__CollectionsKt.emptyList();
        }
    }

    /* JADX INFO: compiled from: MemberDeserializer.kt */
    static final class b extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
        final /* synthetic */ boolean b;
        final /* synthetic */ ProtoBuf$Property c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z, ProtoBuf$Property protoBuf$Property) {
            super(0);
            this.b = z;
            this.c = protoBuf$Property;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<AnnotationDescriptor> invoke() {
            MemberDeserializer memberDeserializer = MemberDeserializer.this;
            t tVarA = memberDeserializer.a(memberDeserializer.b.d());
            List<AnnotationDescriptor> list = tVarA != null ? this.b ? CollectionsKt___CollectionsKt.toList(MemberDeserializer.this.b.b().d().j(tVarA, this.c)) : CollectionsKt___CollectionsKt.toList(MemberDeserializer.this.b.b().d().h(tVarA, this.c)) : null;
            return list != null ? list : CollectionsKt__CollectionsKt.emptyList();
        }
    }

    /* JADX INFO: compiled from: MemberDeserializer.kt */
    static final class c extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.j b;
        final /* synthetic */ AnnotatedCallableKind c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(kotlin.reflect.jvm.internal.impl.protobuf.j jVar, AnnotatedCallableKind annotatedCallableKind) {
            super(0);
            this.b = jVar;
            this.c = annotatedCallableKind;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<AnnotationDescriptor> invoke() {
            MemberDeserializer memberDeserializer = MemberDeserializer.this;
            t tVarA = memberDeserializer.a(memberDeserializer.b.d());
            List<AnnotationDescriptor> listI = tVarA != null ? MemberDeserializer.this.b.b().d().i(tVarA, this.b, this.c) : null;
            return listI != null ? listI : CollectionsKt__CollectionsKt.emptyList();
        }
    }

    /* JADX INFO: compiled from: MemberDeserializer.kt */
    static final class d extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> {
        final /* synthetic */ ProtoBuf$Property b;
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(ProtoBuf$Property protoBuf$Property, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e eVar) {
            super(0);
            this.b = protoBuf$Property;
            this.c = eVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> invoke() {
            MemberDeserializer memberDeserializer = MemberDeserializer.this;
            t tVarA = memberDeserializer.a(memberDeserializer.b.d());
            if (tVarA == null) {
                Intrinsics.throwNpe();
            }
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.b<AnnotationDescriptor, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> bVarD = MemberDeserializer.this.b.b().d();
            ProtoBuf$Property protoBuf$Property = this.b;
            kotlin.reflect.jvm.internal.impl.types.u returnType = this.c.getReturnType();
            Intrinsics.checkExpressionValueIsNotNull(returnType, "property.returnType");
            return bVarD.g(tVarA, protoBuf$Property, returnType);
        }
    }

    /* JADX INFO: compiled from: MemberDeserializer.kt */
    static final class e extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
        final /* synthetic */ int a;
        final /* synthetic */ ProtoBuf$ValueParameter b;
        final /* synthetic */ MemberDeserializer c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ t f9780d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.j f9781e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ AnnotatedCallableKind f9782f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a f9783g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(int i, ProtoBuf$ValueParameter protoBuf$ValueParameter, MemberDeserializer memberDeserializer, t tVar, kotlin.reflect.jvm.internal.impl.protobuf.j jVar, AnnotatedCallableKind annotatedCallableKind, kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
            super(0);
            this.a = i;
            this.b = protoBuf$ValueParameter;
            this.c = memberDeserializer;
            this.f9780d = tVar;
            this.f9781e = jVar;
            this.f9782f = annotatedCallableKind;
            this.f9783g = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<AnnotationDescriptor> invoke() {
            return CollectionsKt___CollectionsKt.toList(this.c.b.b().d().a(this.f9780d, this.f9781e, this.f9782f, this.a, this.b));
        }
    }

    public MemberDeserializer(DeserializationContext c2) {
        Intrinsics.checkParameterIsNotNull(c2, "c");
        this.b = c2;
        this.a = new f(c2.b().p(), c2.b().q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final t a(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
        if (iVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.s) {
            return new t.b(((kotlin.reflect.jvm.internal.impl.descriptors.s) iVar).e(), this.b.f(), this.b.i(), this.b.c());
        }
        if (iVar instanceof DeserializedClassDescriptor) {
            return ((DeserializedClassDescriptor) iVar).M0();
        }
        return null;
    }

    private final DeserializedMemberDescriptor.CoroutinesCompatibilityMode b(DeserializedMemberDescriptor deserializedMemberDescriptor, TypeDeserializer typeDeserializer) {
        if (!q(deserializedMemberDescriptor)) {
            return DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
        }
        e(typeDeserializer);
        return typeDeserializer.g() ? DeserializedMemberDescriptor.CoroutinesCompatibilityMode.INCOMPATIBLE : DeserializedMemberDescriptor.CoroutinesCompatibilityMode.COMPATIBLE;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00a7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[LOOP:3: B:29:0x0068->B:95:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor.CoroutinesCompatibilityMode c(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedCallableMemberDescriptor r4, kotlin.reflect.jvm.internal.impl.descriptors.b0 r5, java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor> r6, java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.i0> r7, kotlin.reflect.jvm.internal.impl.types.u r8, boolean r9) {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer.c(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedCallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.b0, java.util.Collection, java.util.Collection, kotlin.reflect.jvm.internal.impl.types.u, boolean):kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberDescriptor$CoroutinesCompatibilityMode");
    }

    private final boolean d(kotlin.reflect.jvm.internal.impl.types.u uVar) {
        return TypeUtilsKt.contains(uVar, r.a);
    }

    private final void e(TypeDeserializer typeDeserializer) {
        Iterator<T> it = typeDeserializer.h().iterator();
        while (it.hasNext()) {
            ((i0) it.next()).getUpperBounds();
        }
    }

    private final Annotations f(kotlin.reflect.jvm.internal.impl.protobuf.j jVar, int i, AnnotatedCallableKind annotatedCallableKind) {
        return !Flags.b.a(i).booleanValue() ? Annotations.e0.b() : new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h(this.b.g(), new a(jVar, annotatedCallableKind));
    }

    private final b0 g() {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarD = this.b.d();
        if (!(iVarD instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            iVarD = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVarD;
        if (dVar != null) {
            return dVar.E0();
        }
        return null;
    }

    private final Annotations h(ProtoBuf$Property protoBuf$Property, boolean z) {
        return !Flags.b.a(protoBuf$Property.M()).booleanValue() ? Annotations.e0.b() : new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h(this.b.g(), new b(z, protoBuf$Property));
    }

    private final Annotations i(kotlin.reflect.jvm.internal.impl.protobuf.j jVar, AnnotatedCallableKind annotatedCallableKind) {
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a(this.b.g(), new c(jVar, annotatedCallableKind));
    }

    private final void j(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f fVar, b0 b0Var, b0 b0Var2, List<? extends i0> list, List<? extends ValueParameterDescriptor> list2, kotlin.reflect.jvm.internal.impl.types.u uVar, Modality modality, m0 m0Var, Map<? extends a.InterfaceC0516a<?>, ?> map, boolean z) {
        fVar.f1(b0Var, b0Var2, list, list2, uVar, modality, m0Var, map, c(fVar, b0Var, list2, list, uVar, z));
    }

    private final int m(int i) {
        return (i & 63) + ((i >> 8) << 6);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor> p(java.util.List<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter> r27, kotlin.reflect.jvm.internal.impl.protobuf.j r28, kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind r29) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer.p(java.util.List, kotlin.reflect.jvm.internal.impl.protobuf.j, kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind):java.util.List");
    }

    private final boolean q(DeserializedMemberDescriptor deserializedMemberDescriptor) {
        boolean z;
        if (!this.b.b().g().d()) {
            return false;
        }
        List<kotlin.reflect.jvm.internal.impl.metadata.deserialization.g> listD0 = deserializedMemberDescriptor.D0();
        if ((listD0 instanceof Collection) && listD0.isEmpty()) {
            z = true;
        } else {
            for (kotlin.reflect.jvm.internal.impl.metadata.deserialization.g gVar : listD0) {
                if (Intrinsics.areEqual(gVar.b(), new g.b(1, 3, 0, 4, null)) && gVar.a() == ProtoBuf$VersionRequirement.VersionKind.LANGUAGE_VERSION) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        return z;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.c k(ProtoBuf$Constructor proto, boolean z) {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b bVar;
        DeserializedMemberDescriptor.CoroutinesCompatibilityMode coroutinesCompatibilityModeC;
        DeserializationContext deserializationContextH0;
        TypeDeserializer typeDeserializerH;
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarD = this.b.d();
        if (iVarD == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVarD;
        int iD = proto.D();
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b bVar2 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b(dVar, null, f(proto, iD, annotatedCallableKind), z, CallableMemberDescriptor.Kind.DECLARATION, proto, this.b.f(), this.b.i(), this.b.j(), this.b.c(), null, 1024, null);
        MemberDeserializer memberDeserializerE = DeserializationContext.childContext$default(this.b, bVar2, CollectionsKt__CollectionsKt.emptyList(), null, null, null, null, 60, null).e();
        List<ProtoBuf$ValueParameter> listG = proto.G();
        Intrinsics.checkExpressionValueIsNotNull(listG, "proto.valueParameterList");
        bVar2.c1(memberDeserializerE.p(listG, proto, annotatedCallableKind), v.a.f(Flags.c.a(proto.D())));
        bVar2.U0(dVar.n());
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarD2 = this.b.d();
        if (!(iVarD2 instanceof DeserializedClassDescriptor)) {
            iVarD2 = null;
        }
        DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) iVarD2;
        if ((deserializedClassDescriptor == null || (deserializationContextH0 = deserializedClassDescriptor.H0()) == null || (typeDeserializerH = deserializationContextH0.h()) == null || !typeDeserializerH.g() || !q(bVar2)) ? false : true) {
            coroutinesCompatibilityModeC = DeserializedMemberDescriptor.CoroutinesCompatibilityMode.INCOMPATIBLE;
            bVar = bVar2;
        } else {
            Collection<? extends ValueParameterDescriptor> collectionG = bVar2.g();
            Intrinsics.checkExpressionValueIsNotNull(collectionG, "descriptor.valueParameters");
            Collection<? extends i0> typeParameters = bVar2.getTypeParameters();
            Intrinsics.checkExpressionValueIsNotNull(typeParameters, "descriptor.typeParameters");
            bVar = bVar2;
            coroutinesCompatibilityModeC = c(bVar2, null, collectionG, typeParameters, bVar2.getReturnType(), false);
        }
        bVar.i1(coroutinesCompatibilityModeC);
        return bVar;
    }

    public final c0 l(ProtoBuf$Function proto) {
        kotlin.reflect.jvm.internal.impl.types.u uVarK;
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        int iO = proto.e0() ? proto.O() : m(proto.Q());
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        Annotations annotationsF = f(proto, iO, annotatedCallableKind);
        Annotations annotationsI = ProtoTypeTableUtilKt.hasReceiver(proto) ? i(proto, annotatedCallableKind) : Annotations.e0.b();
        VersionRequirementTable versionRequirementTableB = Intrinsics.areEqual(DescriptorUtilsKt.getFqNameSafe(this.b.d()).c(NameResolverUtilKt.getName(this.b.f(), proto.P())), w.a) ? VersionRequirementTable.b.b() : this.b.j();
        Name name = NameResolverUtilKt.getName(this.b.f(), proto.P());
        v vVar = v.a;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f fVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f(this.b.d(), null, annotationsF, name, vVar.b(Flags.l.a(iO)), proto, this.b.f(), this.b.i(), versionRequirementTableB, this.b.c(), null, 1024, null);
        DeserializationContext deserializationContext = this.b;
        List<ProtoBuf$TypeParameter> listX = proto.X();
        Intrinsics.checkExpressionValueIsNotNull(listX, "proto.typeParameterList");
        DeserializationContext deserializationContextChildContext$default = DeserializationContext.childContext$default(deserializationContext, fVar, listX, null, null, null, null, 60, null);
        ProtoBuf$Type protoBuf$TypeReceiverType = ProtoTypeTableUtilKt.receiverType(proto, this.b.i());
        b0 b0VarCreateExtensionReceiverParameterForCallable = (protoBuf$TypeReceiverType == null || (uVarK = deserializationContextChildContext$default.h().k(protoBuf$TypeReceiverType)) == null) ? null : DescriptorFactory.createExtensionReceiverParameterForCallable(fVar, uVarK, annotationsI);
        b0 b0VarG = g();
        List<i0> listH = deserializationContextChildContext$default.h().h();
        MemberDeserializer memberDeserializerE = deserializationContextChildContext$default.e();
        List<ProtoBuf$ValueParameter> listB0 = proto.b0();
        Intrinsics.checkExpressionValueIsNotNull(listB0, "proto.valueParameterList");
        List<ValueParameterDescriptor> listP = memberDeserializerE.p(listB0, proto, annotatedCallableKind);
        kotlin.reflect.jvm.internal.impl.types.u uVarK2 = deserializationContextChildContext$default.h().k(ProtoTypeTableUtilKt.returnType(proto, this.b.i()));
        Modality modalityC = vVar.c(Flags.f9619d.a(iO));
        m0 m0VarF = vVar.f(Flags.c.a(iO));
        Map<? extends a.InterfaceC0516a<?>, ?> mapEmptyMap = MapsKt__MapsKt.emptyMap();
        Flags.b bVar = Flags.r;
        Boolean boolA = bVar.a(iO);
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_SUSPEND.get(flags)");
        j(fVar, b0VarCreateExtensionReceiverParameterForCallable, b0VarG, listH, listP, uVarK2, modalityC, m0VarF, mapEmptyMap, boolA.booleanValue());
        Boolean boolA2 = Flags.m.a(iO);
        Intrinsics.checkExpressionValueIsNotNull(boolA2, "Flags.IS_OPERATOR.get(flags)");
        fVar.T0(boolA2.booleanValue());
        Boolean boolA3 = Flags.n.a(iO);
        Intrinsics.checkExpressionValueIsNotNull(boolA3, "Flags.IS_INFIX.get(flags)");
        fVar.Q0(boolA3.booleanValue());
        Boolean boolA4 = Flags.q.a(iO);
        Intrinsics.checkExpressionValueIsNotNull(boolA4, "Flags.IS_EXTERNAL_FUNCTION.get(flags)");
        fVar.L0(boolA4.booleanValue());
        Boolean boolA5 = Flags.o.a(iO);
        Intrinsics.checkExpressionValueIsNotNull(boolA5, "Flags.IS_INLINE.get(flags)");
        fVar.S0(boolA5.booleanValue());
        Boolean boolA6 = Flags.p.a(iO);
        Intrinsics.checkExpressionValueIsNotNull(boolA6, "Flags.IS_TAILREC.get(flags)");
        fVar.W0(boolA6.booleanValue());
        Boolean boolA7 = bVar.a(iO);
        Intrinsics.checkExpressionValueIsNotNull(boolA7, "Flags.IS_SUSPEND.get(flags)");
        fVar.V0(boolA7.booleanValue());
        Boolean boolA8 = Flags.s.a(iO);
        Intrinsics.checkExpressionValueIsNotNull(boolA8, "Flags.IS_EXPECT_FUNCTION.get(flags)");
        fVar.K0(boolA8.booleanValue());
        Pair<a.InterfaceC0516a<?>, Object> pairA = this.b.b().h().a(proto, fVar, this.b.i(), this.b.h());
        if (pairA != null) {
            fVar.I0(pairA.f(), pairA.g());
        }
        return fVar;
    }

    public final y n(ProtoBuf$Property proto) {
        ProtoBuf$Property protoBuf$Property;
        Annotations annotationsB;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e eVar;
        b0 b0VarCreateExtensionReceiverParameterForCallable;
        Flags.FlagField<ProtoBuf$Modality> flagField;
        Flags.FlagField<ProtoBuf$Visibility> flagField2;
        kotlin.reflect.jvm.internal.impl.descriptors.impl.v vVar;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e eVar2;
        ProtoBuf$Property protoBuf$Property2;
        int i;
        boolean z;
        PropertySetterDescriptorImpl propertySetterDescriptorImplCreateDefaultSetter;
        kotlin.reflect.jvm.internal.impl.descriptors.impl.v vVarCreateDefaultGetter;
        kotlin.reflect.jvm.internal.impl.types.u uVarK;
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        int iM = proto.a0() ? proto.M() : m(proto.P());
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarD = this.b.d();
        Annotations annotationsF = f(proto, iM, AnnotatedCallableKind.PROPERTY);
        v vVar2 = v.a;
        Flags.FlagField<ProtoBuf$Modality> flagField3 = Flags.f9619d;
        Modality modalityC = vVar2.c(flagField3.a(iM));
        Flags.FlagField<ProtoBuf$Visibility> flagField4 = Flags.c;
        m0 m0VarF = vVar2.f(flagField4.a(iM));
        Boolean boolA = Flags.t.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_VAR.get(flags)");
        boolean zBooleanValue = boolA.booleanValue();
        Name name = NameResolverUtilKt.getName(this.b.f(), proto.O());
        CallableMemberDescriptor.Kind kindB = vVar2.b(Flags.l.a(iM));
        Boolean boolA2 = Flags.x.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA2, "Flags.IS_LATEINIT.get(flags)");
        boolean zBooleanValue2 = boolA2.booleanValue();
        Boolean boolA3 = Flags.w.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA3, "Flags.IS_CONST.get(flags)");
        boolean zBooleanValue3 = boolA3.booleanValue();
        Boolean boolA4 = Flags.z.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA4, "Flags.IS_EXTERNAL_PROPERTY.get(flags)");
        boolean zBooleanValue4 = boolA4.booleanValue();
        Boolean boolA5 = Flags.A.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA5, "Flags.IS_DELEGATED.get(flags)");
        boolean zBooleanValue5 = boolA5.booleanValue();
        Boolean boolA6 = Flags.B.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA6, "Flags.IS_EXPECT_PROPERTY.get(flags)");
        v vVar3 = vVar2;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e eVar3 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e(iVarD, null, annotationsF, modalityC, m0VarF, zBooleanValue, name, kindB, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue5, boolA6.booleanValue(), proto, this.b.f(), this.b.i(), this.b.j(), this.b.c());
        DeserializationContext deserializationContext = this.b;
        List<ProtoBuf$TypeParameter> listY = proto.Y();
        Intrinsics.checkExpressionValueIsNotNull(listY, "proto.typeParameterList");
        DeserializationContext deserializationContextChildContext$default = DeserializationContext.childContext$default(deserializationContext, eVar3, listY, null, null, null, null, 60, null);
        Boolean boolA7 = Flags.u.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA7, "Flags.HAS_GETTER.get(flags)");
        boolean zBooleanValue6 = boolA7.booleanValue();
        if (zBooleanValue6 && ProtoTypeTableUtilKt.hasReceiver(proto)) {
            protoBuf$Property = proto;
            annotationsB = i(protoBuf$Property, AnnotatedCallableKind.PROPERTY_GETTER);
        } else {
            protoBuf$Property = proto;
            annotationsB = Annotations.e0.b();
        }
        kotlin.reflect.jvm.internal.impl.types.u uVarK2 = deserializationContextChildContext$default.h().k(ProtoTypeTableUtilKt.returnType(protoBuf$Property, this.b.i()));
        List<i0> listH = deserializationContextChildContext$default.h().h();
        b0 b0VarG = g();
        ProtoBuf$Type protoBuf$TypeReceiverType = ProtoTypeTableUtilKt.receiverType(protoBuf$Property, this.b.i());
        if (protoBuf$TypeReceiverType == null || (uVarK = deserializationContextChildContext$default.h().k(protoBuf$TypeReceiverType)) == null) {
            eVar = eVar3;
            b0VarCreateExtensionReceiverParameterForCallable = null;
        } else {
            eVar = eVar3;
            b0VarCreateExtensionReceiverParameterForCallable = DescriptorFactory.createExtensionReceiverParameterForCallable(eVar, uVarK, annotationsB);
        }
        eVar.P0(uVarK2, listH, b0VarG, b0VarCreateExtensionReceiverParameterForCallable);
        Boolean boolA8 = Flags.b.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA8, "Flags.HAS_ANNOTATIONS.get(flags)");
        int accessorFlags = Flags.getAccessorFlags(boolA8.booleanValue(), flagField4.a(iM), flagField3.a(iM), false, false, false);
        if (zBooleanValue6) {
            int iN = proto.b0() ? proto.N() : accessorFlags;
            Boolean boolA9 = Flags.F.a(iN);
            Intrinsics.checkExpressionValueIsNotNull(boolA9, "Flags.IS_NOT_DEFAULT.get(getterFlags)");
            boolean zBooleanValue7 = boolA9.booleanValue();
            Boolean boolA10 = Flags.G.a(iN);
            Intrinsics.checkExpressionValueIsNotNull(boolA10, "Flags.IS_EXTERNAL_ACCESSOR.get(getterFlags)");
            boolean zBooleanValue8 = boolA10.booleanValue();
            Boolean boolA11 = Flags.H.a(iN);
            Intrinsics.checkExpressionValueIsNotNull(boolA11, "Flags.IS_INLINE_ACCESSOR.get(getterFlags)");
            boolean zBooleanValue9 = boolA11.booleanValue();
            Annotations annotationsF2 = f(protoBuf$Property, iN, AnnotatedCallableKind.PROPERTY_GETTER);
            if (zBooleanValue7) {
                vVar3 = vVar3;
                flagField = flagField3;
                flagField2 = flagField4;
                vVarCreateDefaultGetter = new kotlin.reflect.jvm.internal.impl.descriptors.impl.v(eVar, annotationsF2, vVar3.c(flagField3.a(iN)), vVar3.f(flagField4.a(iN)), !zBooleanValue7, zBooleanValue8, zBooleanValue9, eVar.getKind(), null, d0.a);
            } else {
                flagField = flagField3;
                flagField2 = flagField4;
                vVarCreateDefaultGetter = DescriptorFactory.createDefaultGetter(eVar, annotationsF2);
                Intrinsics.checkExpressionValueIsNotNull(vVarCreateDefaultGetter, "DescriptorFactory.create…er(property, annotations)");
            }
            vVarCreateDefaultGetter.H0(eVar.getReturnType());
            vVar = vVarCreateDefaultGetter;
        } else {
            flagField = flagField3;
            flagField2 = flagField4;
            vVar = null;
        }
        Boolean boolA12 = Flags.v.a(iM);
        Intrinsics.checkExpressionValueIsNotNull(boolA12, "Flags.HAS_SETTER.get(flags)");
        if (boolA12.booleanValue()) {
            if (proto.i0()) {
                accessorFlags = proto.U();
            }
            int i2 = accessorFlags;
            Boolean boolA13 = Flags.F.a(i2);
            Intrinsics.checkExpressionValueIsNotNull(boolA13, "Flags.IS_NOT_DEFAULT.get(setterFlags)");
            boolean zBooleanValue10 = boolA13.booleanValue();
            Boolean boolA14 = Flags.G.a(i2);
            Intrinsics.checkExpressionValueIsNotNull(boolA14, "Flags.IS_EXTERNAL_ACCESSOR.get(setterFlags)");
            boolean zBooleanValue11 = boolA14.booleanValue();
            Boolean boolA15 = Flags.H.a(i2);
            Intrinsics.checkExpressionValueIsNotNull(boolA15, "Flags.IS_INLINE_ACCESSOR.get(setterFlags)");
            boolean zBooleanValue12 = boolA15.booleanValue();
            AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.PROPERTY_SETTER;
            Annotations annotationsF3 = f(protoBuf$Property, i2, annotatedCallableKind);
            if (zBooleanValue10) {
                v vVar4 = vVar3;
                PropertySetterDescriptorImpl propertySetterDescriptorImpl = new PropertySetterDescriptorImpl(eVar, annotationsF3, vVar4.c(flagField.a(i2)), vVar4.f(flagField2.a(i2)), !zBooleanValue10, zBooleanValue11, zBooleanValue12, eVar.getKind(), null, d0.a);
                z = true;
                eVar2 = eVar;
                protoBuf$Property2 = protoBuf$Property;
                i = iM;
                propertySetterDescriptorImpl.H0((ValueParameterDescriptor) kotlin.collections.p.single((List) DeserializationContext.childContext$default(deserializationContextChildContext$default, propertySetterDescriptorImpl, CollectionsKt__CollectionsKt.emptyList(), null, null, null, null, 60, null).e().p(CollectionsKt__CollectionsJVMKt.listOf(proto.V()), protoBuf$Property2, annotatedCallableKind)));
                propertySetterDescriptorImplCreateDefaultSetter = propertySetterDescriptorImpl;
            } else {
                eVar2 = eVar;
                protoBuf$Property2 = protoBuf$Property;
                i = iM;
                z = true;
                propertySetterDescriptorImplCreateDefaultSetter = DescriptorFactory.createDefaultSetter(eVar2, annotationsF3, Annotations.e0.b());
                Intrinsics.checkExpressionValueIsNotNull(propertySetterDescriptorImplCreateDefaultSetter, "DescriptorFactory.create…ptor */\n                )");
            }
        } else {
            eVar2 = eVar;
            protoBuf$Property2 = protoBuf$Property;
            i = iM;
            z = true;
            propertySetterDescriptorImplCreateDefaultSetter = null;
        }
        Boolean boolA16 = Flags.y.a(i);
        Intrinsics.checkExpressionValueIsNotNull(boolA16, "Flags.HAS_CONSTANT.get(flags)");
        if (boolA16.booleanValue()) {
            eVar2.e0(this.b.g().e(new d(protoBuf$Property2, eVar2)));
        }
        eVar2.T0(vVar, propertySetterDescriptorImplCreateDefaultSetter, new kotlin.reflect.jvm.internal.impl.descriptors.impl.l(h(protoBuf$Property2, false), eVar2), new kotlin.reflect.jvm.internal.impl.descriptors.impl.l(h(protoBuf$Property2, z), eVar2), b(eVar2, deserializationContextChildContext$default.h()));
        return eVar2;
    }

    public final h0 o(ProtoBuf$TypeAlias proto) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Annotations.a aVar = Annotations.e0;
        List<ProtoBuf$Annotation> listL = proto.L();
        Intrinsics.checkExpressionValueIsNotNull(listL, "proto.annotationList");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listL, 10));
        for (ProtoBuf$Annotation it : listL) {
            f fVar = this.a;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(fVar.a(it, this.b.f()));
        }
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g gVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g(this.b.g(), this.b.d(), aVar.a(arrayList), NameResolverUtilKt.getName(this.b.f(), proto.Q()), v.a.f(Flags.c.a(proto.P())), proto, this.b.f(), this.b.i(), this.b.j(), this.b.c());
        DeserializationContext deserializationContext = this.b;
        List<ProtoBuf$TypeParameter> listT = proto.T();
        Intrinsics.checkExpressionValueIsNotNull(listT, "proto.typeParameterList");
        DeserializationContext deserializationContextChildContext$default = DeserializationContext.childContext$default(deserializationContext, gVar, listT, null, null, null, null, 60, null);
        gVar.I0(deserializationContextChildContext$default.h().h(), deserializationContextChildContext$default.h().i(ProtoTypeTableUtilKt.underlyingType(proto, this.b.i())), deserializationContextChildContext$default.h().i(ProtoTypeTableUtilKt.expandedType(proto, this.b.i())), b(gVar, deserializationContextChildContext$default.h()));
        return gVar;
    }
}
