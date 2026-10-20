###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.j.a (kotlin.reflect.jvm.internal.impl.load.kotlin.j$a)
.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;
.super Ljava/lang/Object;
.source "KotlinClassFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$a;
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

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;
    .registers 3

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a$b;->b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    move-result-object v1

    :cond_10
    return-object v1
.end method
