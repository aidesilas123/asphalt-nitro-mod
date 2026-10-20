###### Class com.google.common.base.CharMatcher.k (com.google.common.base.CharMatcher$k)
.class final Lcom/google/common/base/CharMatcher$k;
.super Lcom/google/common/base/CharMatcher$g;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$g;-><init>()V

    iput-char p1, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    return-void
.end method


# virtual methods
.method public b(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result p1

    if-eqz p1, :cond_a

    move-object p1, p0

    goto :goto_e

    :cond_a
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :goto_e
    return-object p1
.end method

.method public h(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->isNot(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public n(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
