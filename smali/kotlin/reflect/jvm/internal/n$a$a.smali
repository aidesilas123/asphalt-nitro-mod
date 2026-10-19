###### Class kotlin.reflect.jvm.internal.n.a.C0558a (kotlin.reflect.jvm.internal.n$a$a)
.class final Lkotlin/reflect/jvm/internal/n$a$a;
.super Lkotlin/jvm/internal/t;
.source "KTypeParameterImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/n$a;->c()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/n$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/n$a;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/n$a$a;->a:Lkotlin/reflect/jvm/internal/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Void;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java type is not yet supported for type parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/n$a$a;->a:Lkotlin/reflect/jvm/internal/n$a;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/n$a;->a:Lkotlin/reflect/jvm/internal/n;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An operation is not implemented: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/l;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n$a$a;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
