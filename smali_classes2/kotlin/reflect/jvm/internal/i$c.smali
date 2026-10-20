###### Class kotlin.reflect.jvm.internal.i.c (kotlin.reflect.jvm.internal.i$c)
.class final Lkotlin/reflect/jvm/internal/i$c;
.super Lkotlin/jvm/internal/t;
.source "KProperty0Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/i;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/i;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/i;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/i$c;->a:Lkotlin/reflect/jvm/internal/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/i$c;->a:Lkotlin/reflect/jvm/internal/i;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->C()Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/i$c;->a:Lkotlin/reflect/jvm/internal/i;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->D()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->E(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
