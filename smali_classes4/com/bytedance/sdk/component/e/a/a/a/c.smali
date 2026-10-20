###### Class com.bytedance.sdk.component.e.a.a.a.c (com.bytedance.sdk.component.e.a.a.a.c)
.class public Lcom/bytedance/sdk/component/e/a/a/a/c;
.super Ljava/lang/Object;
.source "DBMultiUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1c

    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/a/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_17

    return p0

    :catchall_17
    const-string p0, "update ignore"

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    const-string v0, "DBMultiUtils  delete start"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/a/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    return p0

    :catchall_1a
    const-string p0, "delete ignore"

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 p6, 0x0

    if-eqz p5, :cond_8

    return-object p6

    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/a/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    return-object p0

    :catchall_1c
    const-string p0, "query ignore"

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    return-object p6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/a/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_1c

    :catchall_17
    const-string p0, "execSQL ignore"

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 4

    if-eqz p2, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1b

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/a/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    const-string p0, "insert ignore"

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1b

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/component/e/a/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/a/a/a;->a()Lcom/bytedance/sdk/component/e/a/a/a/b$b;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/e/a/a/a/b$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    const-string p0, "insert ignore"

    invoke-static {p0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method
