###### Class com.google.common.io.k.a (com.google.common.io.k$a)
.class Lcom/google/common/io/k$a;
.super Lcom/google/common/io/i;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/io/k;


# direct methods
.method constructor <init>(Lcom/google/common/io/k;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/io/k$a;->c:Lcom/google/common/io/k;

    invoke-direct {p0}, Lcom/google/common/io/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p2, p0, Lcom/google/common/io/k$a;->c:Lcom/google/common/io/k;

    invoke-static {p2}, Lcom/google/common/io/k;->a(Lcom/google/common/io/k;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
