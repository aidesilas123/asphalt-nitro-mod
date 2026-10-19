###### Class com.google.common.base.Splitter.d.a (com.google.common.base.Splitter$d$a)
.class Lcom/google/common/base/Splitter$d$a;
.super Lcom/google/common/base/Splitter$f;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$d;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/Splitter$d;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$d;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/base/Splitter$d$a;->h:Lcom/google/common/base/Splitter$d;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$f;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f(I)I
    .registers 2

    return p1
.end method

.method public g(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/Splitter$d$a;->h:Lcom/google/common/base/Splitter$d;

    iget v0, v0, Lcom/google/common/base/Splitter$d;->a:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method
