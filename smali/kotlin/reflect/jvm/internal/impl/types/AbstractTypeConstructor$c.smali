###### Class kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor.c (kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$c)
.class final Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$c;
.super Lkotlin/jvm/internal/t;
.source "AbstractTypeConstructor.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$c;->a:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$c;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Z)Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$a;
    .registers 3

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$a;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->c:Lkotlin/reflect/jvm/internal/impl/types/y;

    invoke-static {v0}, Lkotlin/collections/p;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$a;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$c;->c(Z)Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$a;

    move-result-object p1

    return-object p1
.end method
