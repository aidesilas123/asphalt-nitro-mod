###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.g (kotlin.reflect.jvm.internal.impl.load.kotlin.g)
.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;
.super Ljava/lang/Object;
.source "methodSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$c;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$b;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/g$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->j(Lkotlin/reflect/jvm/internal/impl/load/kotlin/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
