###### Class kotlin.reflect.jvm.internal.KCallableImpl.c.a (kotlin.reflect.jvm.internal.KCallableImpl$c$a)
.class final Lkotlin/reflect/jvm/internal/KCallableImpl$c$a;
.super Lkotlin/jvm/internal/t;
.source "KCallableImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KCallableImpl$c;->c()Lkotlin/reflect/jvm/internal/KTypeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KCallableImpl$c;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KCallableImpl$c;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$c$a;->a:Lkotlin/reflect/jvm/internal/KCallableImpl$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$c$a;->a:Lkotlin/reflect/jvm/internal/KCallableImpl$c;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KCallableImpl$c;->a:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->access$extractContinuationArgument(Lkotlin/reflect/jvm/internal/KCallableImpl;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$c$a;->a:Lkotlin/reflect/jvm/internal/KCallableImpl$c;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KCallableImpl$c;->a:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->w()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$c$a;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
