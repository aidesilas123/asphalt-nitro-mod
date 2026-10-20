###### Class kotlin.reflect.jvm.internal.KPropertyImpl.d.a (kotlin.reflect.jvm.internal.KPropertyImpl$d$a)
.class final Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImpl$d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/calls/Caller<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$d;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->access$computeCallerForAccessor(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$d$a;->c()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method
