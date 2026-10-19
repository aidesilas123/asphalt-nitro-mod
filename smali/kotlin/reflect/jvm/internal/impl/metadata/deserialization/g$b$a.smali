###### Class kotlin.reflect.jvm.internal.impl.metadata.deserialization.g.b.a (kotlin.reflect.jvm.internal.impl.metadata.deserialization.g$b$a)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b$a;
.super Ljava/lang/Object;
.source "VersionRequirement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b;
    .registers 5

    if-eqz p2, :cond_1e

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    and-int/lit16 p2, p2, 0xff

    invoke-direct {p1, v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b;-><init>(III)V

    goto :goto_3f

    :cond_1e
    if-eqz p1, :cond_3d

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shr-int/lit8 p1, p1, 0x7

    and-int/lit8 p1, p1, 0x7f

    invoke-direct {p2, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b;-><init>(III)V

    move-object p1, p2

    goto :goto_3f

    :cond_3d
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b;->a:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/g$b;

    :goto_3f
    return-object p1
.end method
