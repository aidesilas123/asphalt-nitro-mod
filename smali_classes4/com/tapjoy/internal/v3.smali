###### Class com.tapjoy.internal.v3 (com.tapjoy.internal.v3)
.class public final Lcom/tapjoy/internal/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/h0;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    const/16 v0, 0xa

    iput v0, p0, Lcom/tapjoy/internal/v3;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/x8;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/tapjoy/internal/x8;->b:Ljava/lang/Object;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method public final a(Ljava/net/URL;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/x8;

    if-nez v0, :cond_3a

    new-instance v0, Lcom/tapjoy/internal/x8;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/x8;-><init>(Ljava/net/URL;)V

    iget-object v1, p0, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget v1, p0, Lcom/tapjoy/internal/v3;->b:I

    sub-int/2addr p1, v1

    if-lez p1, :cond_3a

    iget-object v1, p0, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    if-lez p1, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    :cond_3a
    iput-object p2, v0, Lcom/tapjoy/internal/x8;->b:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget p2, p0, Lcom/tapjoy/internal/v3;->b:I

    sub-int/2addr p1, p2

    if-lez p1, :cond_62

    iget-object p2, p0, Lcom/tapjoy/internal/v3;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_51
    if-lez p1, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_51

    :cond_62
    return-void
.end method
