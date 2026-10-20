###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration.a (kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration$a)
.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$a;
.super Ljava/lang/Object;
.source "DeserializationConfiguration.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getTypeAliasesAllowed(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getSkipMetadataVersionCheck(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getReportErrorsOnPreReleaseDependencies(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getReleaseCoroutines(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method
