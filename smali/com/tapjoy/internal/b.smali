###### Class com.tapjoy.internal.b (com.tapjoy.internal.b)
.class public abstract Lcom/tapjoy/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/a;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "reward"

    const-string v1, "purchase"

    const-string v2, "custom_action"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/b;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tapjoy/internal/b4;)Lcom/tapjoy/internal/b;
    .registers 9

    const-string v0, "reward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->v()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_66

    :cond_12
    const/4 p0, 0x1

    move-object v0, p1

    check-cast v0, Lcom/tapjoy/internal/k0;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    move-object v2, v3

    move-object v4, v2

    :goto_1b
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_32
    const-string v6, "name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_3f
    const-string v6, "quantity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->k()I

    move-result p0

    goto :goto_1b

    :cond_4c
    const-string v6, "token"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_59
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_1b

    :cond_5d
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    new-instance p1, Lcom/tapjoy/internal/x4;

    invoke-direct {p1, v3, v2, p0, v4}, Lcom/tapjoy/internal/x4;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v3, p1

    :goto_66
    return-object v3

    :cond_67
    const-string v0, "purchase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c1

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->v()Z

    move-result p0

    if-eqz p0, :cond_76

    goto :goto_c1

    :cond_76
    move-object p0, p1

    check-cast p0, Lcom/tapjoy/internal/k0;

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/k0;->I(I)V

    const-string v0, ""

    move-object v2, v0

    move-object v3, v2

    :goto_80
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->e()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, "campaign_id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->v()Z

    move-result v2

    if-eqz v2, :cond_9a

    move-object v2, v0

    goto :goto_80

    :cond_9a
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v2

    goto :goto_80

    :cond_9f
    const-string v5, "product_id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->v()Z

    move-result v3

    if-eqz v3, :cond_af

    move-object v3, v0

    goto :goto_80

    :cond_af
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->p()Ljava/lang/String;

    move-result-object v3

    goto :goto_80

    :cond_b4
    invoke-virtual {p1}, Lcom/tapjoy/internal/b4;->u()V

    goto :goto_80

    :cond_b8
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/k0;->I(I)V

    new-instance p0, Lcom/tapjoy/internal/o9;

    invoke-direct {p0, v2, v3}, Lcom/tapjoy/internal/o9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    :cond_c1
    :goto_c1
    return-object v3
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/b;->a:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public final b(Lcom/tapjoy/internal/z8;)V
    .registers 6

    instance-of v0, p0, Lcom/tapjoy/internal/x5;

    if-eqz v0, :cond_2b

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/x5;

    check-cast v0, Lcom/tapjoy/internal/o9;

    iget-object v1, v0, Lcom/tapjoy/internal/o9;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tapjoy/internal/o9;->c:Ljava/lang/String;

    sget-object v2, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/o8;

    monitor-enter v2

    :try_start_10
    iget-object p1, p1, Lcom/tapjoy/internal/z8;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/tapjoy/internal/o8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacement;

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_28

    if-eqz p1, :cond_3f

    iget-object v2, p1, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v2, :cond_3f

    new-instance v3, Lcom/tapjoy/internal/e8;

    invoke-direct {v3, v1}, Lcom/tapjoy/internal/e8;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p1, v3, v0}, Lcom/tapjoy/TJPlacementListener;->onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V

    goto :goto_3f

    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    :cond_2b
    instance-of v0, p0, Lcom/tapjoy/internal/m6;

    if-eqz v0, :cond_3f

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/m6;

    check-cast v0, Lcom/tapjoy/internal/x4;

    iget-object v1, v0, Lcom/tapjoy/internal/x4;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/tapjoy/internal/x4;->c:Ljava/lang/String;

    iget v3, v0, Lcom/tapjoy/internal/x4;->d:I

    iget-object v0, v0, Lcom/tapjoy/internal/x4;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/tapjoy/internal/z8;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void
.end method
