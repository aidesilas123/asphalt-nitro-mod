###### Class kotlin.reflect.jvm.internal.j.c (kotlin.reflect.jvm.internal.j$c)
.class final Lkotlin/reflect/jvm/internal/j$c;
.super Lkotlin/jvm/internal/t;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/j;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/j;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/j;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/j$c;->a:Lkotlin/reflect/jvm/internal/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/j$c;->a:Lkotlin/reflect/jvm/internal/j;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->C()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/j$c;->c()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
