###### Class com.bytedance.sdk.component.utils.o (com.bytedance.sdk.component.utils.o)
.class public Lcom/bytedance/sdk/component/utils/o;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v1, 0x4

    if-eq p0, v1, :cond_13

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    const/4 v0, 0x6

    if-eq p0, v0, :cond_11

    return p0

    :cond_11
    return v0

    :cond_12
    return v1

    :cond_13
    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 3

    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/component/utils/v;->a(Landroid/content/Context;J)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_19

    const/4 v0, 0x6

    if-eq p0, v0, :cond_16

    const-string p0, "mobile"

    goto :goto_24

    :cond_16
    const-string p0, "5g"

    goto :goto_24

    :cond_19
    const-string p0, "4g"

    goto :goto_24

    :cond_1c
    const-string p0, "wifi"

    goto :goto_24

    :cond_1f
    const-string p0, "3g"

    goto :goto_24

    :cond_22
    const-string p0, "2g"

    :goto_24
    return-object p0
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/o;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p0, v5, :cond_20

    if-eq p0, v4, :cond_1e

    if-eq p0, v3, :cond_1c

    if-eq p0, v2, :cond_1a

    const/4 v3, 0x6

    if-eq p0, v3, :cond_21

    const/4 v2, 0x0

    goto :goto_21

    :cond_1a
    const/4 v2, 0x4

    goto :goto_21

    :cond_1c
    const/4 v2, 0x1

    goto :goto_21

    :cond_1e
    const/4 v2, 0x3

    goto :goto_21

    :cond_20
    const/4 v2, 0x2

    :cond_21
    :goto_21
    if-nez v2, :cond_24

    return v0

    :cond_24
    return v1
.end method
