###### Class com.bytedance.sdk.component.g.b (com.bytedance.sdk.component.g.b)
.class Lcom/bytedance/sdk/component/g/b;
.super Ljava/lang/Object;
.source "DelegateRunnable.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/bytedance/sdk/component/g/h;

.field private b:Lcom/bytedance/sdk/component/g/a;

.field private c:J

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/g/h;Lcom/bytedance/sdk/component/g/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/component/g/b;->c:J

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/b;->d:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    iput-object p2, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/g/b;->c:J

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pool is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  name is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is timeout,cost "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DelegateRunnable"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/g/h;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Lcom/bytedance/sdk/component/g/b;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    check-cast p1, Lcom/bytedance/sdk/component/g/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/g/b;->a()Lcom/bytedance/sdk/component/g/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/g/h;->compareTo(Lcom/bytedance/sdk/component/g/h;)I

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/bytedance/sdk/component/g/b;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/bytedance/sdk/component/g/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/g/b;->a()Lcom/bytedance/sdk/component/g/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/component/g/b;->c:J

    sub-long v2, v0, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/component/g/b;->d:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    if-eqz v4, :cond_15

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/bytedance/sdk/component/g/d;->a()V

    :cond_21
    invoke-static {}, Lcom/bytedance/sdk/component/utils/l;->a()Z

    move-result v0

    if-eqz v0, :cond_12a

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "run: pool  = "

    const/4 v6, 0x0

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    const-string v7, "null"

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    move-object v1, v7

    :goto_3c
    const/4 v8, 0x1

    aput-object v1, v0, v8

    const-string v1, " waitTime ="

    const/4 v9, 0x2

    aput-object v1, v0, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, " taskCost = "

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v0, v1

    const/4 v1, 0x6

    const-string v10, " name="

    aput-object v10, v0, v1

    const/4 v1, 0x7

    iget-object v10, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    if-eqz v10, :cond_66

    invoke-virtual {v10}, Lcom/bytedance/sdk/component/g/h;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_67

    :cond_66
    move-object v10, v7

    :goto_67
    aput-object v10, v0, v1

    const-string v1, "DelegateRunnable"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/g/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_12c

    :goto_7f
    const/4 v6, -0x1

    goto :goto_b6

    :sswitch_81
    const-string v2, "computation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_7f

    :cond_8a
    const/4 v6, 0x4

    goto :goto_b6

    :sswitch_8c
    const-string v3, "init"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_7f

    :cond_95
    const/4 v6, 0x3

    goto :goto_b6

    :sswitch_97
    const-string v2, "log"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto :goto_7f

    :cond_a0
    const/4 v6, 0x2

    goto :goto_b6

    :sswitch_a2
    const-string v2, "io"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto :goto_7f

    :cond_ab
    const/4 v6, 0x1

    goto :goto_b6

    :sswitch_ad
    const-string v2, "ad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto :goto_7f

    :cond_b6
    :goto_b6
    packed-switch v6, :pswitch_data_142

    goto/16 :goto_12a

    :pswitch_bb
    const-wide/16 v0, 0x3e8

    cmp-long v2, v4, v0

    if-lez v2, :cond_12a

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/g/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_cb

    :cond_ca
    move-object v0, v7

    :goto_cb
    iget-object v1, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    if-eqz v1, :cond_d3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/h;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_d3
    invoke-direct {p0, v0, v7, v4, v5}, Lcom/bytedance/sdk/component/g/b;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_12a

    :pswitch_d7
    const-wide/16 v0, 0xbb8

    cmp-long v2, v4, v0

    if-lez v2, :cond_12a

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/g/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_e7

    :cond_e6
    move-object v0, v7

    :goto_e7
    iget-object v1, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    if-eqz v1, :cond_ef

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/h;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_ef
    invoke-direct {p0, v0, v7, v4, v5}, Lcom/bytedance/sdk/component/g/b;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_12a

    :pswitch_f3
    const-wide/16 v0, 0x1388

    cmp-long v2, v4, v0

    if-lez v2, :cond_12a

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    if-eqz v0, :cond_102

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/g/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_103

    :cond_102
    move-object v0, v7

    :goto_103
    iget-object v1, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    if-eqz v1, :cond_10b

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/h;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_10b
    invoke-direct {p0, v0, v7, v4, v5}, Lcom/bytedance/sdk/component/g/b;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_12a

    :pswitch_10f
    const-wide/16 v0, 0x7d0

    cmp-long v2, v4, v0

    if-lez v2, :cond_12a

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/b;->b:Lcom/bytedance/sdk/component/g/a;

    if-eqz v0, :cond_11e

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/g/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_11f

    :cond_11e
    move-object v0, v7

    :goto_11f
    iget-object v1, p0, Lcom/bytedance/sdk/component/g/b;->a:Lcom/bytedance/sdk/component/g/h;

    if-eqz v1, :cond_127

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/h;->getName()Ljava/lang/String;

    move-result-object v7

    :cond_127
    invoke-direct {p0, v0, v7, v4, v5}, Lcom/bytedance/sdk/component/g/b;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_12a
    :goto_12a
    return-void

    nop

    :sswitch_data_12c
    .sparse-switch
        0xc23 -> :sswitch_ad
        0xd26 -> :sswitch_a2
        0x1a344 -> :sswitch_97
        0x316510 -> :sswitch_8c
        0xca889c7 -> :sswitch_81
    .end sparse-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_10f
        :pswitch_f3
        :pswitch_d7
        :pswitch_10f
        :pswitch_bb
    .end packed-switch
.end method
