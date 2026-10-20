###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.r (kotlin.reflect.jvm.internal.impl.serialization.deserialization.r)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;
.super Lkotlin/jvm/internal/d0;
.source "MemberDeserializer.kt"


# static fields
.field public static final a:Lkotlin/reflect/KProperty1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/r;->a:Lkotlin/reflect/KProperty1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/jvm/internal/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/m0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/FunctionTypesKt;->isSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "isSuspendFunctionType"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/d;
    .registers 3

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/FunctionTypesKt;

    const-string v1, "deserialization"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/d;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    const-string v0, "isSuspendFunctionType(Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    return-object v0
.end method
