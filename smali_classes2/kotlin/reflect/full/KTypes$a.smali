###### Class kotlin.reflect.full.KTypes.a (kotlin.reflect.full.KTypes$a)
.class final Lkotlin/reflect/full/KTypes$a;
.super Lkotlin/jvm/internal/t;
.source "KTypes.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/full/KTypes;->withNullability(Lkotlin/reflect/KType;Z)Lkotlin/reflect/KType;
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
.field final synthetic a:Lkotlin/reflect/KType;


# direct methods
.method constructor <init>(Lkotlin/reflect/KType;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/full/KTypes$a;->a:Lkotlin/reflect/KType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/full/KTypes$a;->a:Lkotlin/reflect/KType;

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->g()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/full/KTypes$a;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
