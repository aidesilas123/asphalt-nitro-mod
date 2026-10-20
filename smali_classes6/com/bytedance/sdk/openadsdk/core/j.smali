###### Class com.bytedance.sdk.openadsdk.core.j (com.bytedance.sdk.openadsdk.core.j)
.class public Lcom/bytedance/sdk/openadsdk/core/j;
.super Ljava/lang/Object;
.source "IdUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 6

    const-string v0, "zh"

    const-string v1, ""

    :try_start_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-lt v2, v3, :cond_14

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_18

    :cond_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_18
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, v1

    :goto_20
    if-eqz v2, :cond_4b

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_3b

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3b
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    return-object v0

    :cond_48
    const-string v0, "zh-Hant"
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_4c

    return-object v0

    :cond_4b
    return-object v3

    :catchall_4c
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    return-object p0

    :cond_b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->f(Landroid/content/Context;)V

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p0

    const-string v0, "did"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    :cond_19
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_26

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/e/c;->b(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->e()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_1d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    :goto_3a
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_3f

    :catch_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Ljava/lang/String;

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Z

    if-nez v0, :cond_17

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v0

    :try_start_b
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/j;->e:Z

    if-nez v1, :cond_12

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->e(Landroid/content/Context;)V

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Z

    if-nez v0, :cond_1b

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v0

    :try_start_f
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/j;->e:Z

    if-nez v1, :cond_16

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->e(Landroid/content/Context;)V

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    if-nez p0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private static e(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_WIFI_STATE"
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->b:Ljava/lang/String;

    sget-wide v0, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "uuid"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Z

    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "did"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    return-void
.end method
