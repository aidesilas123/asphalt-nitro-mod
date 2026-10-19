package kotlin.reflect.jvm.internal.t.a;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: compiled from: SerializerExtensionProtocol.kt */
/* JADX INFO: loaded from: classes5.dex */
public class a {
    private final ExtensionRegistryLite a;
    private final GeneratedMessageLite.f<ProtoBuf$Package, Integer> b;
    private final GeneratedMessageLite.f<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final GeneratedMessageLite.f<ProtoBuf$Class, List<ProtoBuf$Annotation>> f9904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final GeneratedMessageLite.f<ProtoBuf$Function, List<ProtoBuf$Annotation>> f9905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> f9906f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> f9907g;
    private final GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> h;
    private final GeneratedMessageLite.f<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> i;
    private final GeneratedMessageLite.f<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> j;
    private final GeneratedMessageLite.f<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> k;
    private final GeneratedMessageLite.f<ProtoBuf$Type, List<ProtoBuf$Annotation>> l;
    private final GeneratedMessageLite.f<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> m;

    public a(ExtensionRegistryLite extensionRegistry, GeneratedMessageLite.f<ProtoBuf$Package, Integer> packageFqName, GeneratedMessageLite.f<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> constructorAnnotation, GeneratedMessageLite.f<ProtoBuf$Class, List<ProtoBuf$Annotation>> classAnnotation, GeneratedMessageLite.f<ProtoBuf$Function, List<ProtoBuf$Annotation>> functionAnnotation, GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertyAnnotation, GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertyGetterAnnotation, GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> propertySetterAnnotation, GeneratedMessageLite.f<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> enumEntryAnnotation, GeneratedMessageLite.f<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> compileTimeValue, GeneratedMessageLite.f<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> parameterAnnotation, GeneratedMessageLite.f<ProtoBuf$Type, List<ProtoBuf$Annotation>> typeAnnotation, GeneratedMessageLite.f<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> typeParameterAnnotation) {
        Intrinsics.checkParameterIsNotNull(extensionRegistry, "extensionRegistry");
        Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
        Intrinsics.checkParameterIsNotNull(constructorAnnotation, "constructorAnnotation");
        Intrinsics.checkParameterIsNotNull(classAnnotation, "classAnnotation");
        Intrinsics.checkParameterIsNotNull(functionAnnotation, "functionAnnotation");
        Intrinsics.checkParameterIsNotNull(propertyAnnotation, "propertyAnnotation");
        Intrinsics.checkParameterIsNotNull(propertyGetterAnnotation, "propertyGetterAnnotation");
        Intrinsics.checkParameterIsNotNull(propertySetterAnnotation, "propertySetterAnnotation");
        Intrinsics.checkParameterIsNotNull(enumEntryAnnotation, "enumEntryAnnotation");
        Intrinsics.checkParameterIsNotNull(compileTimeValue, "compileTimeValue");
        Intrinsics.checkParameterIsNotNull(parameterAnnotation, "parameterAnnotation");
        Intrinsics.checkParameterIsNotNull(typeAnnotation, "typeAnnotation");
        Intrinsics.checkParameterIsNotNull(typeParameterAnnotation, "typeParameterAnnotation");
        this.a = extensionRegistry;
        this.b = packageFqName;
        this.c = constructorAnnotation;
        this.f9904d = classAnnotation;
        this.f9905e = functionAnnotation;
        this.f9906f = propertyAnnotation;
        this.f9907g = propertyGetterAnnotation;
        this.h = propertySetterAnnotation;
        this.i = enumEntryAnnotation;
        this.j = compileTimeValue;
        this.k = parameterAnnotation;
        this.l = typeAnnotation;
        this.m = typeParameterAnnotation;
    }

    public final GeneratedMessageLite.f<ProtoBuf$Class, List<ProtoBuf$Annotation>> a() {
        return this.f9904d;
    }

    public final GeneratedMessageLite.f<ProtoBuf$Property, ProtoBuf$Annotation.Argument.Value> b() {
        return this.j;
    }

    public final GeneratedMessageLite.f<ProtoBuf$Constructor, List<ProtoBuf$Annotation>> c() {
        return this.c;
    }

    public final GeneratedMessageLite.f<ProtoBuf$EnumEntry, List<ProtoBuf$Annotation>> d() {
        return this.i;
    }

    public final ExtensionRegistryLite e() {
        return this.a;
    }

    public final GeneratedMessageLite.f<ProtoBuf$Function, List<ProtoBuf$Annotation>> f() {
        return this.f9905e;
    }

    public final GeneratedMessageLite.f<ProtoBuf$ValueParameter, List<ProtoBuf$Annotation>> g() {
        return this.k;
    }

    public final GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> h() {
        return this.f9906f;
    }

    public final GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> i() {
        return this.f9907g;
    }

    public final GeneratedMessageLite.f<ProtoBuf$Property, List<ProtoBuf$Annotation>> j() {
        return this.h;
    }

    public final GeneratedMessageLite.f<ProtoBuf$Type, List<ProtoBuf$Annotation>> k() {
        return this.l;
    }

    public final GeneratedMessageLite.f<ProtoBuf$TypeParameter, List<ProtoBuf$Annotation>> l() {
        return this.m;
    }
}
