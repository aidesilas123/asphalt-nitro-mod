###### Class kotlin.sequences.SequencesKt___SequencesKt.p (kotlin.sequences.SequencesKt___SequencesKt$p)
.class public final Lkotlin/sequences/SequencesKt___SequencesKt$p;
.super Ljava/lang/Object;
.source "_Sequences.kt"

# interfaces
.implements Lkotlin/sequences/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt___SequencesKt;->minus(Lkotlin/sequences/f;Lkotlin/sequences/f;)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/f<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlin/sequences/SequencesKt___SequencesKt$minus$4",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlin/sequences/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/sequences/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/sequences/f;Lkotlin/sequences/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Lkotlin/sequences/f<",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$p;->a:Lkotlin/sequences/f;

    iput-object p2, p0, Lkotlin/sequences/SequencesKt___SequencesKt$p;->b:Lkotlin/sequences/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$p;->a:Lkotlin/sequences/f;

    invoke-static {v0}, Lkotlin/sequences/i;->toList(Lkotlin/sequences/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$p;->b:Lkotlin/sequences/f;

    invoke-interface {v0}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_13
    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$p;->b:Lkotlin/sequences/f;

    new-instance v2, Lkotlin/sequences/SequencesKt___SequencesKt$p$a;

    invoke-direct {v2, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$p$a;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lkotlin/sequences/i;->filterNot(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
