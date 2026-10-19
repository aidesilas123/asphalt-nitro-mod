###### Class com.google.common.collect.a (com.google.common.collect.a)
.class public final synthetic Lcom/google/common/collect/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/a;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Comparator;

    check-cast p1, Lcom/google/common/collect/h2;

    check-cast p2, Lcom/google/common/collect/h2;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/Iterators$n;->a(Ljava/util/Comparator;Lcom/google/common/collect/h2;Lcom/google/common/collect/h2;)I

    move-result p1

    return p1
.end method
