###### Class kotlin.reflect.jvm.internal.KPropertyImplKt.c (kotlin.reflect.jvm.internal.KPropertyImplKt$c)
.class final Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImplKt;->a(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/reflect/Field;",
        "Lkotlin/reflect/jvm/internal/calls/b<",
        "+",
        "Ljava/lang/reflect/Field;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

.field final synthetic b:Z

.field final synthetic c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

.field final synthetic d:Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;ZLkotlin/reflect/jvm/internal/KPropertyImplKt$b;Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;)V
    .registers 5

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->b:Z

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->d:Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lkotlin/reflect/jvm/internal/calls/b<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->access$isJvmFieldPropertyInCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_78

    :cond_20
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->d:Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;->c()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->b:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$b;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$f$b;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_bb

    :cond_3b
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$f$d;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_bb

    :cond_42
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$g$b;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_bb

    :cond_56
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$g$d;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_bb

    :cond_62
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->b:Z

    if-eqz v0, :cond_6c

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$e;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$f$e;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_bb

    :cond_6c
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$e;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$g$e;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_bb

    :cond_78
    :goto_78
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->b:Z

    if-eqz v0, :cond_96

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_90

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$f$a;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_bb

    :cond_90
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$c;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$f$c;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_bb

    :cond_96
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_b0

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/calls/b$g$a;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    goto :goto_bb

    :cond_b0
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$g$c;-><init>(Ljava/lang/reflect/Field;Z)V

    :goto_bb
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/b;

    move-result-object p1

    return-object p1
.end method
