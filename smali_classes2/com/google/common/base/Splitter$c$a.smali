###### Class com.google.common.base.Splitter.c.a (com.google.common.base.Splitter$c$a)
.class Lcom/google/common/base/Splitter$c$a;
.super Lcom/google/common/base/Splitter$f;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$c;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/c;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$c;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/c;)V
    .registers 5

    iput-object p4, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/c;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$f;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f(I)I
    .registers 2

    iget-object p1, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/c;

    invoke-virtual {p1}, Lcom/google/common/base/c;->a()I

    move-result p1

    return p1
.end method

.method public g(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/c;

    invoke-virtual {v0, p1}, Lcom/google/common/base/c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/c;

    invoke-virtual {p1}, Lcom/google/common/base/c;->e()I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, -0x1

    :goto_10
    return p1
.end method
