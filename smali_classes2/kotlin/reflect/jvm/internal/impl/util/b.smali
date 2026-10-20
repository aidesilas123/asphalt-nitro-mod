###### Class kotlin.reflect.jvm.internal.impl.util.b (kotlin.reflect.jvm.internal.impl.util.b)
.class public abstract Lkotlin/reflect/jvm/internal/impl/util/b;
.super Ljava/lang/Object;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/util/b$b;,
        Lkotlin/reflect/jvm/internal/impl/util/b$a;,
        Lkotlin/reflect/jvm/internal/impl/util/b$c;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/util/b;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/util/b;->a:Z

    return v0
.end method
