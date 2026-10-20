###### Class kotlin.reflect.jvm.internal.impl.types.checker.c (kotlin.reflect.jvm.internal.impl.types.checker.c)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/types/checker/c;
.super Ljava/lang/Object;
.source "KotlinTypeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/c$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/checker/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/f;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/f$a;->a()Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    return-void
.end method


# virtual methods
.method public abstract b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
.end method

.method public abstract d(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
.end method
