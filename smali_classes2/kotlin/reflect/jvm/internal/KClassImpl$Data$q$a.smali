###### Class kotlin.reflect.jvm.internal.KClassImpl.Data.q.a (kotlin.reflect.jvm.internal.KClassImpl$Data$q$a)
.class final Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;
.super Lkotlin/jvm/internal/t;
.source "KClassImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;->c()Ljava/util/List;
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/types/u;

.field final synthetic b:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;)V
    .registers 3

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->a:Lkotlin/reflect/jvm/internal/impl/types/u;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Type;
    .registers 5

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->a:Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v1, :cond_b4

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_91

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;->a:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->w:Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KClassImpl;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;->a:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->w:Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KClassImpl;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "jClass.genericSuperclass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6d

    :cond_3f
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;->a:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->w:Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KClassImpl;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const-string v3, "jClass.interfaces"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lkotlin/collections/k;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_6e

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;->a:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->w:Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KClassImpl;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v1, "jClass.genericInterfaces[index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6d
    return-object v0

    :cond_6e
    new-instance v1, Lkotlin/reflect/jvm/internal/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No superclass of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;->a:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in Java reflection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/o;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_91
    new-instance v1, Lkotlin/reflect/jvm/internal/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported superclass of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q;->a:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/o;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b4
    new-instance v1, Lkotlin/reflect/jvm/internal/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supertype not a class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/o;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$q$a;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
