###### Class kotlin.reflect.jvm.internal.pcollections.ConsPStack.a (kotlin.reflect.jvm.internal.pcollections.ConsPStack$a)
.class Lkotlin/reflect/jvm/internal/pcollections/ConsPStack$a;
.super Ljava/lang/Object;
.source "ConsPStack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/ConsPStack<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/pcollections/ConsPStack<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack$a;->a:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack$a;->a:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->a(Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack$a;->a:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->b:Ljava/lang/Object;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->c:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack$a;->a:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    return-object v1
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
