###### Class com.tapjoy.internal.t1 (com.tapjoy.internal.t1)
.class public abstract Lcom/tapjoy/internal/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 6

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez p0, :cond_a

    const/4 v2, 0x0

    goto :goto_b

    :cond_a
    const/4 v2, 0x1

    :goto_b
    if-nez v2, :cond_e

    goto :goto_41

    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/tapjoy/internal/t;

    monitor-enter v3

    :try_start_1b
    sget-object v4, Lcom/tapjoy/internal/t;->a:Landroid/app/Application;

    if-eq v4, v2, :cond_21

    sput-object v2, Lcom/tapjoy/internal/t;->a:Landroid/app/Application;
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_42

    :cond_21
    monitor-exit v3

    sget v2, Lcom/tapjoy/internal/t;->b:I

    add-int/2addr v2, v1

    sput v2, Lcom/tapjoy/internal/t;->b:I

    sget-object v1, Lcom/tapjoy/internal/t;->c:Lcom/tapjoy/internal/c8;

    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/c8;->a(Ljava/lang/Object;)V

    sget-object v1, Lcom/tapjoy/internal/t;->d:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->i()Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_41

    :cond_38
    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->k()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p0}, Lcom/tapjoy/internal/q;->a(Landroid/app/Activity;)V

    :cond_41
    :goto_41
    return-void

    :catchall_42
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->i()Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_137

    :cond_a
    const-wide/16 v1, 0x0

    :try_start_c
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/internal/b4;->a(Ljava/lang/String;)Lcom/tapjoy/internal/k0;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/k0;->I(I)V

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    :goto_17
    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->e()Z

    move-result v8
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_137

    const-string v9, "productId"

    if-eqz v8, :cond_7c

    :try_start_1f
    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    :cond_2e
    const-string v9, "type"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    goto :goto_17

    :cond_3a
    const-string v9, "price"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    goto :goto_17

    :cond_46
    const-string v9, "title"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    goto :goto_17

    :cond_52
    const-string v9, "description"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    goto :goto_17

    :cond_5e
    const-string v9, "price_currency_code"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    move-result-object v7

    goto :goto_17

    :cond_6b
    const-string v9, "price_amount_micros"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->Q()J

    move-result-wide v1

    goto :goto_17

    :cond_78
    invoke-virtual {v3}, Lcom/tapjoy/internal/k0;->u()V

    goto :goto_17

    :cond_7c
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/tapjoy/internal/k0;->I(I)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_80} :catch_137

    invoke-static {v6}, Lcom/tapjoy/internal/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7}, Lcom/tapjoy/internal/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v11, :cond_137

    if-nez v3, :cond_8e

    goto/16 :goto_137

    :cond_8e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v4, :cond_96

    goto/16 :goto_137

    :cond_96
    invoke-static/range {p1 .. p1}, Lcom/tapjoy/internal/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lcom/tapjoy/internal/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v15, :cond_120

    if-eqz v16, :cond_120

    :try_start_a2
    invoke-static {v15}, Lcom/tapjoy/internal/b4;->a(Ljava/lang/String;)Lcom/tapjoy/internal/k0;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/tapjoy/internal/k0;->I(I)V

    move-object v4, v5

    move-object v7, v4

    :goto_ab
    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->e()Z

    move-result v10

    if-eqz v10, :cond_10e

    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->o()Ljava/lang/String;

    move-result-object v10

    const-string v12, "orderId"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c2

    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    move-result-object v5

    goto :goto_ab

    :cond_c2
    const-string v12, "packageName"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cf

    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    move-result-object v4

    goto :goto_ab

    :cond_cf
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_da

    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    move-result-object v7

    goto :goto_ab

    :cond_da
    const-string v12, "purchaseTime"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e6

    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->Q()J

    goto :goto_ab

    :cond_e6
    const-string v12, "purchaseState"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f2

    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->k()I

    goto :goto_ab

    :cond_f2
    const-string v12, "developerPayload"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_fe

    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    goto :goto_ab

    :cond_fe
    const-string v12, "purchaseToken"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10a

    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->p()Ljava/lang/String;

    goto :goto_ab

    :cond_10a
    invoke-virtual {v6}, Lcom/tapjoy/internal/k0;->u()V

    goto :goto_ab

    :cond_10e
    invoke-virtual {v6, v8}, Lcom/tapjoy/internal/k0;->I(I)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_120

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_120

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_120} :catch_120

    :catch_120
    :cond_120
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p3 .. p3}, Lcom/tapjoy/internal/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v10, v0, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    long-to-double v0, v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v13, v0, v2

    invoke-virtual/range {v10 .. v17}, Lcom/tapjoy/internal/i5;->c(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :catch_137
    :cond_137
    :goto_137
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 6

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_b

    const/4 v3, 0x0

    goto :goto_c

    :cond_b
    const/4 v3, 0x1

    :goto_c
    if-nez v3, :cond_f

    goto :goto_47

    :cond_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    sget v3, Lcom/tapjoy/internal/t;->b:I

    sub-int/2addr v3, v2

    sput v3, Lcom/tapjoy/internal/t;->b:I

    sget-object v3, Lcom/tapjoy/internal/t;->c:Lcom/tapjoy/internal/c8;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/tapjoy/internal/c8;->a:Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/tapjoy/internal/t;->d:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget p0, Lcom/tapjoy/internal/t;->b:I

    if-gez p0, :cond_2a

    sput v1, Lcom/tapjoy/internal/t;->b:I

    :cond_2a
    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->i()Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_47

    :cond_31
    sget p0, Lcom/tapjoy/internal/t;->b:I

    if-lez p0, :cond_36

    const/4 v1, 0x1

    :cond_36
    if-nez v1, :cond_47

    iget-object p0, v0, Lcom/tapjoy/internal/v1;->j:Lcom/tapjoy/internal/e9;

    iget-object v0, p0, Lcom/tapjoy/internal/e9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object p0, p0, Lcom/tapjoy/internal/e9;->c:Lcom/tapjoy/internal/t8;

    invoke-virtual {p0}, Lcom/tapjoy/internal/t8;->run()V

    :cond_47
    :goto_47
    return-void
.end method
