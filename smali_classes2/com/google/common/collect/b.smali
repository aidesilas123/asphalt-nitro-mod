###### Class com.google.common.collect.b (com.google.common.collect.b)
.class public final synthetic Lcom/google/common/collect/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;

.field public final synthetic b:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/b;->a:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/collect/b;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/google/common/collect/b;->a:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/b;->b:Ljava/util/Comparator;

    check-cast p1, Lcom/google/common/collect/l3$a;

    check-cast p2, Lcom/google/common/collect/l3$a;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/u2;->K(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/l3$a;Lcom/google/common/collect/l3$a;)I

    move-result p1

    return p1
.end method
