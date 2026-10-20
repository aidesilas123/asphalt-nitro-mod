###### Class com.tapjoy.internal.w3 (com.tapjoy.internal.w3)
.class public final Lcom/tapjoy/internal/w3;
.super Lcom/tapjoy/internal/q7;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lcom/tapjoy/internal/q7;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/q7;I)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/w3;->m:Lcom/tapjoy/internal/q7;

    const-class p1, Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/tapjoy/internal/q7;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)I
    .registers 8

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    iget-object v3, p0, Lcom/tapjoy/internal/w3;->m:Lcom/tapjoy/internal/q7;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/tapjoy/internal/q7;->a(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return v2
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/List;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Repeated values can only be sized with a tag."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/w3;->m:Lcom/tapjoy/internal/q7;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/q7;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V
    .registers 8

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/tapjoy/internal/w3;->m:Lcom/tapjoy/internal/q7;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final f(Lcom/tapjoy/internal/w5;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/List;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Repeated values can only be encoded with a tag."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
