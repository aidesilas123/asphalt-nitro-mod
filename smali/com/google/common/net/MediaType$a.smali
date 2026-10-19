###### Class com.google.common.net.MediaType.a (com.google.common.net.MediaType$a)
.class final Lcom/google/common/net/MediaType$a;
.super Ljava/lang/Object;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    iput-object p1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(C)C
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->f()C

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    return p1
.end method

.method b(Lcom/google/common/base/CharMatcher;)C
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->f()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget p1, p0, Lcom/google/common/net/MediaType$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/net/MediaType$a;->b:I

    return v0
.end method

.method c(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    invoke-virtual {p0, p1}, Lcom/google/common/net/MediaType$a;->d(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/google/common/net/MediaType$a;->b:I

    if-eq v1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object p1
.end method

.method d(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    invoke-virtual {p1}, Lcom/google/common/base/CharMatcher;->k()Lcom/google/common/base/CharMatcher;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/common/base/CharMatcher;->f(Ljava/lang/CharSequence;I)I

    move-result p1

    iput p1, p0, Lcom/google/common/net/MediaType$a;->b:I

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->e()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/net/MediaType$a;->b:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_24
    iget-object p1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    return-object p1
.end method

.method e()Z
    .registers 3

    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method f()C
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/net/MediaType$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
