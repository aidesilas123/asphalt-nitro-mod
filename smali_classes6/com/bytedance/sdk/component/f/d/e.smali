###### Class com.bytedance.sdk.component.f.d.e (com.bytedance.sdk.component.f.d.e)
.class public Lcom/bytedance/sdk/component/f/d/e;
.super Ljava/lang/Object;
.source "NLogger.java"


# static fields
.field private static a:Z = false

.field private static b:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, "NetLog"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/f/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/bytedance/sdk/component/f/d/e;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    sget v0, Lcom/bytedance/sdk/component/f/d/e;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_14

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/bytedance/sdk/component/f/d/e;->a:Z

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/bytedance/sdk/component/f/d/e;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    :cond_8
    sget v0, Lcom/bytedance/sdk/component/f/d/e;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_14

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method
