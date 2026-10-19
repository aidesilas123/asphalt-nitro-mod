###### Class com.tapjoy.internal.a5 (com.tapjoy.internal.a5)
.class public abstract Lcom/tapjoy/internal/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    :cond_9
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_6f

    sget-object v0, Lcom/tapjoy/internal/a0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11
    sget-boolean v1, Lcom/tapjoy/internal/a0;->c:Z

    if-eqz v1, :cond_17

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_6c

    goto :goto_6b

    :cond_17
    const/4 v1, 0x1

    :try_start_18
    sget-object v3, Lcom/tapjoy/internal/a0;->b:Ljava/lang/reflect/Field;

    if-nez v3, :cond_40

    const-class v3, Landroid/app/Notification;

    const-string v4, "extras"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string p0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/tapjoy/internal/a0;->c:Z
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_39} :catch_60
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18 .. :try_end_39} :catch_57
    .catchall {:try_start_18 .. :try_end_39} :catchall_6c

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_6c

    goto :goto_6b

    :cond_3b
    :try_start_3b
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput-object v3, Lcom/tapjoy/internal/a0;->b:Ljava/lang/reflect/Field;

    :cond_40
    sget-object v3, Lcom/tapjoy/internal/a0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_54

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/tapjoy/internal/a0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_54} :catch_60
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3b .. :try_end_54} :catch_57
    .catchall {:try_start_3b .. :try_end_54} :catchall_6c

    :cond_54
    move-object v2, v3

    :try_start_55
    monitor-exit v0

    goto :goto_6b

    :catch_57
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    :catch_60
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    sput-boolean v1, Lcom/tapjoy/internal/a0;->c:Z

    monitor-exit v0

    :goto_6b
    return-object v2

    :catchall_6c
    move-exception p0

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_55 .. :try_end_6e} :catchall_6c

    throw p0

    :cond_6f
    return-object v2
.end method
