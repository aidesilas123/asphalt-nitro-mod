###### Class com.google.common.base.Joiner.a (com.google.common.base.Joiner$a)
.class Lcom/google/common/base/Joiner$a;
.super Lcom/google/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Joiner;->h(Ljava/lang/String;)Lcom/google/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/common/base/Joiner;


# direct methods
.method constructor <init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/base/Joiner$a;->c:Lcom/google/common/base/Joiner;

    iput-object p3, p0, Lcom/google/common/base/Joiner$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/common/base/Joiner;-><init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner$a;)V

    return-void
.end method


# virtual methods
.method g(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/common/base/Joiner$a;->b:Ljava/lang/String;

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/google/common/base/Joiner$a;->c:Lcom/google/common/base/Joiner;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->g(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method public h(Ljava/lang/String;)Lcom/google/common/base/Joiner;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "already specified useForNull"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
