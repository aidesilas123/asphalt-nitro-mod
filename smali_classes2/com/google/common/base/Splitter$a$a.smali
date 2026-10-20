###### Class com.google.common.base.Splitter.a.C0243a (com.google.common.base.Splitter$a$a)
.class Lcom/google/common/base/Splitter$a$a;
.super Lcom/google/common/base/Splitter$f;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$a;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/Splitter$a;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$a;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/base/Splitter$a$a;->h:Lcom/google/common/base/Splitter$a;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$f;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method f(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method g(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/common/base/Splitter$a$a;->h:Lcom/google/common/base/Splitter$a;

    iget-object v0, v0, Lcom/google/common/base/Splitter$a;->a:Lcom/google/common/base/CharMatcher;

    iget-object v1, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CharMatcher;->f(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
