###### Class kotlinx.serialization.internal.TaggedDecoder.a (kotlinx.serialization.internal.k1$a)
.class final Lkotlinx/serialization/internal/k1$a;
.super Lkotlin/jvm/internal/t;
.source "Tagged.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/k1;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002\"\u0004\u0008\u0001\u0010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "Tag",
        "invoke",
        "()Ljava/lang/Object;"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/internal/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/k1<",
            "TTag;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlinx/serialization/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/k1;Lkotlinx/serialization/b;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/k1<",
            "TTag;>;",
            "Lkotlinx/serialization/b<",
            "TT;>;TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/k1$a;->a:Lkotlinx/serialization/internal/k1;

    iput-object p2, p0, Lkotlinx/serialization/internal/k1$a;->b:Lkotlinx/serialization/b;

    iput-object p3, p0, Lkotlinx/serialization/internal/k1$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/serialization/internal/k1$a;->a:Lkotlinx/serialization/internal/k1;

    invoke-virtual {v0}, Lkotlinx/serialization/internal/k1;->D()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lkotlinx/serialization/internal/k1$a;->a:Lkotlinx/serialization/internal/k1;

    iget-object v1, p0, Lkotlinx/serialization/internal/k1$a;->b:Lkotlinx/serialization/b;

    iget-object v2, p0, Lkotlinx/serialization/internal/k1$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/k1;->I(Lkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_19

    :cond_13
    iget-object v0, p0, Lkotlinx/serialization/internal/k1$a;->a:Lkotlinx/serialization/internal/k1;

    invoke-virtual {v0}, Lkotlinx/serialization/internal/k1;->j()Ljava/lang/Void;

    move-result-object v0

    :goto_19
    return-object v0
.end method
